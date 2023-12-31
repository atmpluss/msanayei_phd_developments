#include <blockforest/Initialization.h>
#include <blockforest/StructuredBlockForest.h>
#include "core/timing/RemainingTimeLogger.h"
#include "core/SharedFunctor.h"
#include <mesa_pd/collision_detection/AnalyticContactDetection.h>

#include <mesa_pd/data/ParticleAccessorWithShape.h>
#include <mesa_pd/data/ParticleStorage.h>
#include <mesa_pd/data/ShapeStorage.h>
#include <mesa_pd/domain/BlockForestDomain.h>

#include <mesa_pd/kernel/DoubleCast.h>
#include <mesa_pd/kernel/CohesionInitialization.h>
#include <mesa_pd/kernel/Cohesion.h>
#include <mesa_pd/kernel/SpringDashpot.h>
#include <mesa_pd/kernel/SemiImplicitEuler.h>
#include <mesa_pd/mpi/ReduceContactHistory.h>
#include <mesa_pd/mpi/ReduceProperty.h>
#include <mesa_pd/mpi/SyncNextNeighbors.h>
#include <mesa_pd/mpi/notifications/ForceTorqueNotification.h>
#include <mesa_pd/mpi/ContactFilter.h>

#include <mesa_pd/vtk/OutputSelector.h>
#include <mesa_pd/vtk/ParticleVtkOutput.h>

#include <core/grid_generator/SCIterator.h>
#include <core/math/Random.h>


#include "domain_decomposition/SharedSweep.h"

#include "timeloop/SweepTimeloop.h"

#include "lbm/boundary/all.h"
#include "lbm/communication/PdfFieldPackInfo.h"
#include "lbm/field/AddToStorage.h"
#include "lbm/field/PdfField.h"
#include "lbm/lattice_model/D3Q19.h"
#include "lbm/sweeps/CellwiseSweep.h"

#include "lbm_mesapd_coupling/mapping/ParticleMapping.h"
#include "lbm_mesapd_coupling/momentum_exchange_method/MovingParticleMapping.h"
#include "lbm_mesapd_coupling/momentum_exchange_method/boundary/CurvedLinear.h"
#include "lbm_mesapd_coupling/momentum_exchange_method/reconstruction/PdfReconstructionManager.h"
#include "lbm_mesapd_coupling/utility/AddForceOnParticlesKernel.h"
#include "lbm_mesapd_coupling/utility/ParticleSelector.h"
#include "lbm_mesapd_coupling/DataTypes.h"
#include "lbm_mesapd_coupling/utility/AverageHydrodynamicForceTorqueKernel.h"
#include "lbm_mesapd_coupling/utility/AddHydrodynamicInteractionKernel.h"
#include "lbm_mesapd_coupling/utility/ResetHydrodynamicForceTorqueKernel.h"
#include "lbm_mesapd_coupling/utility/LubricationCorrectionKernel.h"


#include "field/vtk/all.h"
#include "vtk/all.h"
#include "lbm/vtk/all.h"

#include <core/Environment.h>
#include <core/logging/Logging.h>

#include <iostream>

#include "Utility.h"

namespace walberla {

using namespace walberla::mesa_pd;

using walberla::uint_t;
using LatticeModel_T = lbm::D3Q19< lbm::collision_model::SRT>;
using Stencil_T = LatticeModel_T::Stencil;
using PdfField_T = lbm::PdfField<LatticeModel_T>;
using flag_t = walberla::uint8_t;
using FlagField_T = FlagField<flag_t>;
using ScalarField_T = GhostLayerField< real_t, 1>;
const uint_t FieldGhostLayers = 1;
///////////
// FLAGS //
///////////
const FlagUID Fluid_Flag( "fluid" );
const FlagUID NoSlip_Flag( "no slip" );
const FlagUID MO_Flag( "moving obstacle" );
const FlagUID FormerMO_Flag( "former moving obstacle" );

template <typename ParticleAccessor_T>
class MyBoundaryHandling
{
 public:

   using NoSlip_T = lbm::NoSlip< LatticeModel_T, flag_t >;
   using MO_T = lbm_mesapd_coupling::CurvedLinear< LatticeModel_T, FlagField_T, ParticleAccessor_T >;
   using Type = BoundaryHandling< FlagField_T, Stencil_T, NoSlip_T, MO_T >;

   MyBoundaryHandling( const BlockDataID & flagFieldID, const BlockDataID & pdfFieldID,
                      const BlockDataID & particleFieldID, const shared_ptr<ParticleAccessor_T>& ac) :
                                                                                                        flagFieldID_( flagFieldID ), pdfFieldID_( pdfFieldID ), particleFieldID_( particleFieldID ), ac_( ac ) {}

   Type * operator()( IBlock* const block, const StructuredBlockStorage* const storage ) const
   {
      WALBERLA_ASSERT_NOT_NULLPTR( block );
      WALBERLA_ASSERT_NOT_NULLPTR( storage );

      auto * flagField     = block->getData< FlagField_T >( flagFieldID_ );
      auto *  pdfField     = block->getData< PdfField_T > ( pdfFieldID_ );
      auto * particleField = block->getData< lbm_mesapd_coupling::ParticleField_T > ( particleFieldID_ );

      const auto fluid = flagField->flagExists( Fluid_Flag ) ? flagField->getFlag( Fluid_Flag ) : flagField->registerFlag( Fluid_Flag );

      Type * handling = new Type( "moving obstacle boundary handling", flagField, fluid,
                                NoSlip_T( "NoSlip", NoSlip_Flag, pdfField ),
                                MO_T( "MO", MO_Flag, pdfField, flagField, particleField, ac_, fluid, *storage, *block ) );

      // Add other boundary conditions here -> get cell interval

      handling->fillWithDomain( FieldGhostLayers ); // initialize flag field with "Fluid" flag

      return handling;
   }

 private:

   const BlockDataID flagFieldID_;
   const BlockDataID pdfFieldID_;
   const BlockDataID particleFieldID_;

   shared_ptr<ParticleAccessor_T> ac_;
};


int main( int argc, char ** argv )
{
   Environment env(argc, argv);
   WALBERLA_UNUSED(env);
   walberla::mpi::MPIManager::instance()->useWorldComm();


   if( !env.config() )
   {
      WALBERLA_ABORT("Usage: " << argv[0] << " path-to-configuration-file \n");
   }
   Config::BlockHandle particleSimulation = env.config()->getBlock( "ParticleBedSimulation" );

   const real_t cellsPerDiameter = particleSimulation.getParameter<real_t>("cellsPerDiameter");
   const real_t relaxationTime = particleSimulation.getParameter<real_t>("relaxationTime");
   const Vector3<uint_t> numberOfBlocksPerDirection = particleSimulation.getParameter<Vector3<uint_t> >("numberOfBlocksPerDirection");
   const uint_t vtkSpacing = particleSimulation.getParameter<uint_t>("vtkSpacing");
   const uint_t numberOfTimeSteps = particleSimulation.getParameter<uint_t>("numberOfTimeSteps");
   const uint_t numberOfMesapdSubCycles = particleSimulation.getParameter<uint_t>("numberOfMesapdSubCycles");
   const real_t diameter_SI = particleSimulation.getParameter<real_t>("diameter_SI");
   const real_t densityParticle_SI = particleSimulation.getParameter<real_t>("densityParticle_SI");
   const Vector3<real_t> domainSize_SI = particleSimulation.getParameter<Vector3<real_t> >("domainSize_SI");
   const real_t densityFluid_SI = particleSimulation.getParameter<real_t>("densityFluid_SI");
   const real_t kinematicViscosity_SI = particleSimulation.getParameter<real_t>("kinematicViscosity_SI");
   const real_t frictionCoefficient = particleSimulation.getParameter<real_t>("frictionCoefficient");
   const real_t gravitationalAcceleration_SI = particleSimulation.getParameter<real_t>("gravitationalAcceleration_SI");
   const real_t y_n_SI = particleSimulation.getParameter<real_t>("y_n_SI");
   const real_t E_SI = particleSimulation.getParameter<real_t>("E_SI");
   const real_t en = particleSimulation.getParameter<real_t>("en");
   const real_t ksFactors = particleSimulation.getParameter<real_t>("ksFactors");
   const real_t krFactors = particleSimulation.getParameter<real_t>("krFactors");
   const real_t koFactors = particleSimulation.getParameter<real_t>("koFactors");
   const real_t nusFactor = particleSimulation.getParameter<real_t>("nusFactor");
   const real_t nurFactor = particleSimulation.getParameter<real_t>("nurFactor");
   const real_t nuoFactor = particleSimulation.getParameter<real_t>("nuoFactor");
   const real_t y_sFactor = particleSimulation.getParameter<real_t>("y_sFactor");
   const real_t y_rFactor = particleSimulation.getParameter<real_t>("y_rFactor");
   const real_t y_oFactor = particleSimulation.getParameter<real_t>("y_oFactor");
   const std::string vtkOutputFolder = particleSimulation.getParameter<std::string>("vtkOutputFolder");
   const Vector3<real_t> boxEdgeLength_SI = particleSimulation.getParameter<Vector3<real_t> >("boxEdgeLength_SI");

   // unit conversion
   real_t dx_SI = diameter_SI / cellsPerDiameter; // m
   real_t omega = real_t(1) / relaxationTime;
   real_t kinematicViscosity = lbm::collision_model::viscosityFromOmega(omega);
   real_t dt_SI = (kinematicViscosity / kinematicViscosity_SI) * dx_SI * dx_SI; // s
   real_t gravitationalAcceleration = gravitationalAcceleration_SI * dt_SI * dt_SI / dx_SI;
   real_t densityRatio = densityParticle_SI / densityFluid_SI;
   real_t densityParticle = densityRatio;
   real_t densityFluid = real_t(1);
   real_t diameter = diameter_SI / dx_SI;
   real_t timeStepSize = real_t(1);
   Vector3<uint_t> domainSize( uint_c(domainSize_SI[0] / dx_SI),
                                uint_c(domainSize_SI[1] / dx_SI),
                                uint_c(domainSize_SI[2] / dx_SI));

   WALBERLA_LOG_INFO_ON_ROOT("dx_SI = " << dx_SI << " m");
   WALBERLA_LOG_INFO_ON_ROOT("dt_SI = " << dt_SI << " s");
   WALBERLA_LOG_INFO_ON_ROOT("gravitational acceleration lattice units = " << gravitationalAcceleration);
   WALBERLA_LOG_INFO_ON_ROOT("density ratio = " << densityRatio);
   WALBERLA_LOG_INFO_ON_ROOT("Domain size = " << domainSize);


   Vector3<uint_t> cellsPerBlockPerDirection( domainSize[0] / numberOfBlocksPerDirection[0],
                                               domainSize[1] / numberOfBlocksPerDirection[1],
                                               domainSize[2] / numberOfBlocksPerDirection[2] );
   for( uint_t i = 0; i < 3; ++i ) {
      WALBERLA_CHECK_EQUAL(cellsPerBlockPerDirection[i] * numberOfBlocksPerDirection[i], domainSize[i],
                           "Unmatching domain decomposition in direction " << i << "!");
   }

   auto domainAABB = math::AABB{Vector3<real_t>{0_r}, domainSize};
   auto blocks = blockforest::createUniformBlockGrid( numberOfBlocksPerDirection[0], numberOfBlocksPerDirection[1], numberOfBlocksPerDirection[2],
                                                         cellsPerBlockPerDirection[0], cellsPerBlockPerDirection[1], cellsPerBlockPerDirection[2], real_t(1),
                                                         0, false, false,
                                                         false, false, false, //periodicity
                                                         false );

   WALBERLA_LOG_INFO_ON_ROOT("Domain decomposition:");
   WALBERLA_LOG_INFO_ON_ROOT(" - blocks per direction = " << numberOfBlocksPerDirection );
   WALBERLA_LOG_INFO_ON_ROOT(" - cells per block = " << cellsPerBlockPerDirection );


   //write domain decomposition to file
   if( vtkSpacing > 0 )
   {
      walberla::vtk::writeDomainDecomposition( blocks, "initial_domain_decomposition", vtkOutputFolder );
   }


   // mesa pd
   auto mesapdDomain = std::make_shared<mesa_pd::domain::BlockForestDomain>(blocks->getBlockForestPointer());
   auto ps = std::make_shared<data::ParticleStorage>(2);
   auto ss = std::make_shared<data::ShapeStorage>();
   using ParticleAccessor_T = mesa_pd::data::ParticleAccessorWithShape;
   auto accessor = walberla::make_shared<ParticleAccessor_T >(ps, ss);

   real_t sphereRadius = diameter / 2_r;
   auto sphereShape = ss->create<data::Sphere>(sphereRadius);
   ss->shapes[sphereShape]->updateMassAndInertia(densityParticle);
   //import spheres
   initSpheresFromFile("logging_spheres_particleBedAndBox.txt", *ps, *mesapdDomain, sphereShape);

   int64_t numParticles = int64_c(ps->size());
   walberla::mpi::reduceInplace(numParticles, walberla::mpi::SUM);
   WALBERLA_LOG_INFO_ON_ROOT("Created " << numParticles << " particles.");


   createPlane(*ps, *ss, domainAABB.minCorner(), Vector3<real_t>(1_r,0,0));
   createPlane(*ps, *ss, domainAABB.minCorner(), Vector3<real_t>(0,1_r,0));
   createPlane(*ps, *ss, domainAABB.minCorner(), Vector3<real_t>(0,0,1_r));
   createPlane(*ps, *ss, domainAABB.maxCorner(), Vector3<real_t>(-1_r,0,0));
   createPlane(*ps, *ss, domainAABB.maxCorner(), Vector3<real_t>(0,-1_r,0));
   createPlane(*ps, *ss, domainAABB.maxCorner(), Vector3<real_t>(0,0,-1_r));


   const Vector3<real_t>  boxEdgeLength (real_t(boxEdgeLength_SI[0] / dx_SI),
                                         real_t(boxEdgeLength_SI[1] / dx_SI),
                                         real_t(boxEdgeLength_SI[2] / dx_SI));


   Vector3<real_t> boxPositions = (Vec3{100_r, 100_r, 145_r});

   auto boxShape = ss->create<data::Box>(boxEdgeLength);
   ss->shapes[boxShape]->updateMassAndInertia(densityParticle);




   auto box = ps->create(true);
   box->getPositionRef() = boxPositions;
   box->getShapeIDRef()  = boxShape;
   box->getOwnerRef()    = walberla::mpi::MPIManager::instance()->rank();
   box->getTypeRef()     = 0;
   data::particle_flags::set(box->getFlagsRef(), data::particle_flags::NON_COMMUNICATING);
   data::particle_flags::set(box->getFlagsRef(), data::particle_flags::FIXED);

   auto boxUID = box->getUid();


   //LBM parts
   LatticeModel_T latticeModel = LatticeModel_T(omega);
   // PDF field
   BlockDataID pdfFieldID = lbm::addPdfFieldToStorage< LatticeModel_T >( blocks, "pdf field (fzyx)", latticeModel,
                                                                        Vector3< real_t >( real_t(0) ), real_t(1),
                                                                        FieldGhostLayers, field::fzyx );
   // flag field
   BlockDataID flagFieldID = field::addFlagFieldToStorage<FlagField_T>( blocks, "flag field" );

   // particle field -> for coupling
   BlockDataID particleFieldID = field::addToStorage<lbm_mesapd_coupling::ParticleField_T>( blocks, "particle field", accessor->getInvalidUid(), field::fzyx, FieldGhostLayers );

   // add boundary handling
   using BoundaryHandling_T = MyBoundaryHandling<ParticleAccessor_T>::Type;
   BlockDataID boundaryHandlingID = blocks->addStructuredBlockData< BoundaryHandling_T >(MyBoundaryHandling<ParticleAccessor_T>( flagFieldID, pdfFieldID, particleFieldID, accessor), "boundary handling" );

   // kernels
   std::function<void(void)> syncCall = [ps,mesapdDomain](){
      const real_t overlap = real_t( 1.5 );
      mesa_pd::mpi::SyncNextNeighbors syncNextNeighborFunc;
      syncNextNeighborFunc(*ps, *mesapdDomain, overlap);
   };
   syncCall();


   // coupling kernels
   lbm_mesapd_coupling::AddHydrodynamicInteractionKernel addHydrodynamicInteraction;
   lbm_mesapd_coupling::ResetHydrodynamicForceTorqueKernel resetHydrodynamicForceTorque;
   lbm_mesapd_coupling::AverageHydrodynamicForceTorqueKernel averageHydrodynamicForceTorque;



   real_t sphereRadius_SI = diameter_SI / 2_r;
   real_t sphereVolume_SI = 4_r/ 3_r * math::pi * sphereRadius_SI * sphereRadius_SI * sphereRadius_SI;
   real_t sphereMass_SI = densityParticle_SI * sphereVolume_SI;
   real_t kn_SI = 2_r * E_SI * (sphereRadius_SI * sphereRadius_SI / (sphereRadius_SI + sphereRadius_SI));
   real_t meff_SI = sphereMass_SI * sphereMass_SI / (sphereMass_SI + sphereMass_SI);
   real_t damping = -std::log(en) / std::sqrt((std::log(en) * std::log(en) + math::pi * math::pi));
   real_t nun_SI = 2_r * std::sqrt(kn_SI * meff_SI) * damping;
   real_t kn = kn_SI / ( densityFluid_SI * dx_SI * dx_SI * dx_SI / ( dt_SI * dt_SI ));
   real_t nun = nun_SI / ( densityFluid_SI * dx_SI * dx_SI * dx_SI / ( dt_SI ));
   real_t y_n = y_n_SI / ( densityFluid_SI * dx_SI * dx_SI * dx_SI * dx_SI  / ( dt_SI * dt_SI ));


   real_t y_s = y_sFactor * y_n;
   real_t y_r = y_rFactor * y_n / dx_SI; // TODO check -> torsion = N m
   real_t y_o = y_oFactor * y_n / dx_SI; // TODO check -> torsion = N m

   WALBERLA_LOG_INFO_ON_ROOT("kn = " << kn << ", nun = " << nun << ", yn = " << y_n);
   WALBERLA_LOG_INFO_ON_ROOT("Estimated maximum surface distance for rupture / radius= " << (y_n / kn) / sphereRadius);

   // Init kernels
   kernel::CohesionInitialization cohesionInitKernel;
   kernel::Cohesion cohesionKernel(1);
   mesa_pd::mpi::ReduceContactHistory reduceAndSwapContactHistory;
   mesa_pd::mpi::ReduceProperty reduceProperty;
   mesa_pd::mpi::SyncNextNeighbors syncNextNeighbors;
   mesa_pd::mpi::ContactFilter contactFilter;

   cohesionKernel.setKn(0,0,kn);
   cohesionKernel.setKsFactor(0,0,ksFactors);
   cohesionKernel.setKrFactor(0,0,krFactors);
   cohesionKernel.setKoFactor(0,0,koFactors);

   cohesionKernel.setNun(0,0,nun);
   cohesionKernel.setNusFactor(0,0,nusFactor);
   cohesionKernel.setNurFactor(0,0,nurFactor);
   cohesionKernel.setNuoFactor(0,0,nuoFactor);

   cohesionKernel.setFrictionCoefficient(0,0,frictionCoefficient);

   cohesionKernel.setYn(0,0,y_n);
   cohesionKernel.setYs(0,0,y_s);
   cohesionKernel.setYr(0,0,y_r);
   cohesionKernel.setYo(0,0,y_o);

   real_t volumeSphere = math::pi / real_t(6) * diameter * diameter * diameter;
   real_t massSphere = densityParticle * volumeSphere;
   Vector3<real_t> gravitationalForce(real_t(0), real_t(0), -gravitationalAcceleration * massSphere);
   Vector3<real_t> buoyancyForce(real_t(0), real_t(0), gravitationalAcceleration * densityFluid * volumeSphere);


   real_t timeStepSizeMesapd = timeStepSize / real_c(numberOfMesapdSubCycles);
   kernel::SemiImplicitEuler particleIntegration(timeStepSizeMesapd);
   SelectSphere sphereSelector;

   syncNextNeighbors(*ps, *mesapdDomain);


   cohesionKernel.setKn(0,0,kn);
   cohesionKernel.setKsFactor(0,0,0_r);
   cohesionKernel.setKrFactor(0,0,0_r);
   cohesionKernel.setKoFactor(0,0,0_r);

   cohesionKernel.setNun(0,0,nun);
   cohesionKernel.setNusFactor(0,0,0_r);
   cohesionKernel.setNurFactor(0,0,0_r);
   cohesionKernel.setNuoFactor(0,0,0_r);

   cohesionKernel.setFrictionCoefficient(0,0,0.5_r);

   cohesionKernel.setYn(0,0,y_n);
   cohesionKernel.setYs(0,0,y_n);
   cohesionKernel.setYr(0,0,y_n);
   cohesionKernel.setYo(0,0,y_n);

   // vtk
   // sphere
   auto sphereVtkOutput = make_shared<mesa_pd::vtk::ParticleVtkOutput>(ps);
   sphereVtkOutput->addOutput<mesa_pd::data::SelectParticleInteractionRadius>("interactionRadius");
   sphereVtkOutput->addOutput<data::SelectParticleLinearVelocity>("velocity");
   sphereVtkOutput->setParticleSelector([sphereShape](const mesa_pd::data::ParticleStorage::iterator& pIt){
      return pIt->getShapeID() == sphereShape;
   });
   auto sphereVtkWriter = walberla::vtk::createVTKOutput_PointData(sphereVtkOutput, "spheres", vtkSpacing, vtkOutputFolder, "simulation_step");

   auto boxVtkOutput = make_shared<mesa_pd::vtk::ParticleVtkOutput>(ps);
   boxVtkOutput->addOutput<data::SelectParticleLinearVelocity>("velocity");
   boxVtkOutput->setParticleSelector( [boxShape](const mesa_pd::data::ParticleStorage::iterator& pIt) {return pIt->getShapeID() == boxShape;} ); //limit output to boxes
   auto boxVtkWriter = walberla::vtk::createVTKOutput_PointData(boxVtkOutput, "box", 100, vtkOutputFolder, "simulation_step");


   // fluid
   auto pdfFieldVTK = walberla::vtk::createVTKOutput_BlockData( blocks, "fluid_field", vtkSpacing, 0, false, vtkOutputFolder );
   field::FlagFieldCellFilter< FlagField_T > fluidFilter( flagFieldID );
   fluidFilter.addFlag( Fluid_Flag );
   pdfFieldVTK->addCellInclusionFilter( fluidFilter );
   pdfFieldVTK->addCellDataWriter( make_shared< lbm::VelocityVTKWriter< LatticeModel_T, float > >( pdfFieldID, "VelocityFromPDF" ) );
   pdfFieldVTK->addCellDataWriter( make_shared< lbm::DensityVTKWriter < LatticeModel_T, float > >( pdfFieldID, "DensityFromPDF" ) );

   // domain decomposition
   auto vtkDomainOutput = walberla::vtk::createVTKOutput_DomainDecomposition(blocks, "domain_decomposition",
                                                                             uint_t(1), vtkOutputFolder, "simulation_step");
   vtkDomainOutput->write();



   // create the timeloop
   SweepTimeloop timeloop( blocks->getBlockStorage(), numberOfTimeSteps );
   timeloop.addFuncBeforeTimeStep( RemainingTimeLogger( timeloop.getNrOfTimeSteps() ), "Remaining Time Logger" );
   timeloop.addFuncBeforeTimeStep( walberla::vtk::writeFiles( pdfFieldVTK ), "VTK (fluid field data)" );
   timeloop.addFuncBeforeTimeStep( walberla::vtk::writeFiles( sphereVtkWriter ), "VTK (sphere data)" );
   timeloop.addFuncBeforeTimeStep( walberla::vtk::writeFiles( boxVtkWriter ), "VTK (box field data)" );

   blockforest::communication::UniformBufferedScheme< Stencil_T > optimizedPDFCommunicationScheme( blocks );//meaning?
   optimizedPDFCommunicationScheme.addPackInfo( make_shared< lbm::PdfFieldPackInfo< LatticeModel_T > >( pdfFieldID ) ); // optimized sync

   // add LBM communication function (updates ghost layers) and boundary handling sweep (does the hydro force calculations and the no-slip treatment)
   auto boundaryHandlingSweep = BoundaryHandling_T::getBlockSweep( boundaryHandlingID );
   timeloop.add() << BeforeFunction( optimizedPDFCommunicationScheme, "LBM Communication" )
                  << Sweep(boundaryHandlingSweep, "Boundary Handling" );
   // add LBM part (stream + collide)
   auto lbmSweep = lbm::makeCellwiseSweep< LatticeModel_T, FlagField_T >( pdfFieldID, flagFieldID, Fluid_Flag );
   timeloop.add() << Sweep( makeSharedSweep( lbmSweep ), "cell-wise LB sweep" );


   SweepTimeloop timeloopAfterParticle( blocks->getBlockStorage(), numberOfTimeSteps );
   // update mapping: check if fluid -> moving obstacle, and moving obstacle -> former MO, when particles have moved
   timeloopAfterParticle.add() << Sweep( lbm_mesapd_coupling::makeMovingParticleMapping<PdfField_T, BoundaryHandling_T>(blocks, pdfFieldID, boundaryHandlingID, particleFieldID, accessor, MO_Flag, FormerMO_Flag,
                                                                                                                         SphereAndBoxSelector(), false), "Particle Mapping" );
   // reconstruct PDFs in former MO flags (former MO -> fluid)
   timeloopAfterParticle.add() << Sweep( makeSharedSweep(lbm_mesapd_coupling::makePdfReconstructionManager<PdfField_T,BoundaryHandling_T>(blocks, pdfFieldID, boundaryHandlingID, particleFieldID, accessor, FormerMO_Flag, Fluid_Flag, false) ), "PDF Restore" );


   bool openmp = false;

   // initialize fields
   // map planes into the LBM simulation -> act as no-slip boundaries
   lbm_mesapd_coupling::ParticleMappingKernel<BoundaryHandling_T> particleMappingKernel(blocks, boundaryHandlingID);
   ps->forEachParticle(openmp, lbm_mesapd_coupling::GlobalParticlesSelector(), *accessor, particleMappingKernel, *accessor, NoSlip_Flag);

   // map particles into the LBM simulation
   lbm_mesapd_coupling::MovingParticleMappingKernel<BoundaryHandling_T> movingParticleMappingKernel(blocks, boundaryHandlingID, particleFieldID);
   ps->forEachParticle(openmp, SphereAndBoxSelector(), *accessor, movingParticleMappingKernel, *accessor, MO_Flag);




   //cohesion init
   ps->forEachParticlePairHalf(openmp, mesa_pd::kernel::SelectAll(), *accessor,
                               [&](const size_t idx1, const size_t idx2){
                                  mesa_pd::collision_detection::AnalyticContactDetection acd;
                                  mesa_pd::kernel::DoubleCast double_cast;
                                  mesa_pd::mpi::ContactFilter contact_filter;
                                  if(accessor->getShape(idx1)->getShapeType() == mesa_pd::data::Sphere::SHAPE_TYPE &&
                                      accessor->getShape(idx2)->getShapeType() == mesa_pd::data::Sphere::SHAPE_TYPE){

                                     if (double_cast(idx1, idx2, *accessor, acd, *accessor)) {
                                        // particles overlap
                                        if (contactFilter(acd.getIdx1(), acd.getIdx2(), *accessor, acd.getContactPoint(),  *mesapdDomain))
                                        {
                                           cohesionInitKernel(acd.getIdx1(), acd.getIdx2(), *accessor, acd.getPenetrationDepth());
                                        }
                                     }

                                  }

                               });
   reduceAndSwapContactHistory(*ps);
   syncNextNeighbors(*ps, *mesapdDomain);




   WcTimingPool timeloopTiming;
   for(uint_t t = 0; t < numberOfTimeSteps; ++t) {

      // LBM + boundary handling + coupling force evaluation
      timeloop.singleStep(timeloopTiming);

      // average hydrodynamic force over two time steps to avoid oscillations
      ps->forEachParticle(openmp, mesa_pd::kernel::SelectAll(), *accessor, averageHydrodynamicForceTorque, *accessor );


      // add sub cycling for particle simulation -> increase temporal resolution of contact detection and resolving
      for(uint_t subCycle = 0; subCycle < numberOfMesapdSubCycles; ++subCycle )
      {

         // take stored Fhyd values and add onto particles as force
         ps->forEachParticle(false, sphereSelector, *accessor, addHydrodynamicInteraction, *accessor );

         // cohesive and non-cohesive interaction
         ps->forEachParticlePairHalf(openmp, ExcludeGlobalGlobal(), *accessor,
                                     [&](size_t idx1, size_t idx2){
                                        mesa_pd::collision_detection::AnalyticContactDetection acd;
                                        mesa_pd::kernel::DoubleCast double_cast;
                                        bool contactExists = double_cast(idx1, idx2, *accessor, acd, *accessor);

                                        Vector3<real_t> filteringPoint;
                                        if (contactExists)  {
                                           filteringPoint = acd.getContactPoint();
                                        } else {
                                           filteringPoint = (accessor->getPosition(idx1) + accessor->getPosition(idx2)) / real_t(2);
                                        }

                                        if (contactFilter(idx1, idx2, *accessor, filteringPoint, *mesapdDomain))
                                        {
                                           bool contactTreatedByCohesionKernel = false;
                                           if (sphereSelector(idx1, idx2, *accessor))
                                           {
                                              if (cohesionKernel.isCohesiveBondActive(idx1, idx2, *accessor))
                                              { contactTreatedByCohesionKernel = cohesionKernel(idx1, idx2, *accessor, timeStepSizeMesapd); }
                                           }
                                           if (contactExists && !contactTreatedByCohesionKernel)
                                           {
                                              cohesionKernel.nonCohesiveInteraction(
                                                 acd.getIdx1(), acd.getIdx2(), *accessor, acd.getContactPoint(),
                                                 acd.getContactNormal(), acd.getPenetrationDepth(), timeStepSizeMesapd);
                                           }
                                        }

                                     });


         // synchronize collision information
         reduceAndSwapContactHistory(*ps);

         //ps->forEachParticle(false, mesa_pd::kernel::SelectLocal(), *accessor, [](const size_t idx, ParticleAccessor_T& ac){WALBERLA_LOG_INFO("vel = " << ac.getLinearVelocity(idx) << ", F = " << ac.getForce(idx))},*accessor);

         // add gravitational + buoyancy force
         ps->forEachParticle(false, mesa_pd::kernel::SelectLocal(), *accessor, [gravitationalForce](const size_t idx, ParticleAccessor_T& ac){mesa_pd::addForceAtomic(idx, ac, gravitationalForce);},*accessor);
         ps->forEachParticle(false, mesa_pd::kernel::SelectLocal(), *accessor, [buoyancyForce](const size_t idx, ParticleAccessor_T& ac){mesa_pd::addForceAtomic(idx, ac, buoyancyForce);},*accessor);

         // synchronize forces
         reduceProperty.operator()<mesa_pd::ForceTorqueNotification>(*ps);

         // update position and velocity
         ps->forEachParticle(false, mesa_pd::kernel::SelectLocal(), *accessor, particleIntegration, *accessor);

         // synchronize position and velocity
         syncCall();
      }



      // reset F hyd
      ps->forEachParticle(false, mesa_pd::kernel::SelectAll(), *accessor, resetHydrodynamicForceTorque, *accessor );

      // update mapping + PDF restore
      timeloopAfterParticle.singleStep(timeloopTiming);

   }

   //   writeSpherePropertiesToFile(*accessor, "logging_spheres_particleBed.txt", sphereShape);
   timeloopTiming.logResultOnRoot();
   return EXIT_SUCCESS;
}

} //namespace walberla

int main( int argc, char ** argv )
{
   return walberla::main(argc, argv);
}