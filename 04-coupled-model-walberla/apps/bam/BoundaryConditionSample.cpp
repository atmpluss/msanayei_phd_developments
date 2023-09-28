//
// Created by Mohammad Sanayei on 13.04.22.
//
//======================================================================================================================
//
//  This file is part of waLBerla. waLBerla is free software: you can
//  redistribute it and/or modify it under the terms of the GNU General Public
//  License as published by the Free Software Foundation, either version 3 of
//  the License, or (at your option) any later version.
//
//  waLBerla is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
//  for more details.
//
//  You should have received a copy of the GNU General Public License along
//  with waLBerla (see COPYING.txt). If not, see <http://www.gnu.org/licenses/>.
//
//! \file
//! \author
//  Mohammad Sanayei
//
//======================================================================================================================


#include <blockforest/Initialization.h>
#include <blockforest/StructuredBlockForest.h>

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


#include "lbm/boundary/all.h"
#include "lbm/communication/PdfFieldPackInfo.h"
#include "lbm/field/AddToStorage.h"
#include "lbm/field/PdfField.h"
#include "lbm/lattice_model/D3Q19.h"
#include "lbm/sweeps/CellwiseSweep.h"


#include "vtk/all.h"

#include <core/Environment.h>
#include <core/logging/Logging.h>

#include <iostream>

#include "Utility.h"

namespace walberla {

using namespace walberla::mesa_pd;


int main( int argc, char ** argv )
{
   Environment env(argc, argv);
   WALBERLA_UNUSED(env);
   walberla::mpi::MPIManager::instance()->useWorldComm();


   if( !env.config() )
   {
      WALBERLA_ABORT("Usage: " << argv[0] << " path-to-configuration-file \n");
   }
   Config::BlockHandle particleSimulation = env.config()->getBlock( "diffBoundarySample" );

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
   const real_t sphereGenerationSpacing_SI = particleSimulation.getParameter<real_t>("sphereGenerationSpacing_SI");

   const real_t xSize_SI = particleSimulation.getParameter<real_t>("xSize");
   const real_t ySize_SI = particleSimulation.getParameter<real_t>("ySize");
   const real_t zSize_SI = particleSimulation.getParameter<real_t>("zSize");
   const real_t uInflow = particleSimulation.getParameter<real_t>("uInflow");
   const real_t uInflow_SI = particleSimulation.getParameter<real_t>("uInflow");
   const real_t kinematicViscosityFluid_SI = particleSimulation.getParameter<real_t>("kinematicViscosityFluid");
   const real_t particleGenerationSpacing_SI = particleSimulation.getParameter<real_t>("particleGenerationSpacing");


   const std::string vtkOutputFolder = particleSimulation.getParameter<std::string>("vtkOutputFolder");

   // unit conversion
   real_t dx_SI = 0.0002_r;
   //real_t omega = real_t(1) / relaxationTime;
   //real_t kinematicViscosity = lbm::collision_model::viscosityFromOmega(omega);
   //real_t dt_SI = (kinematicViscosity / kinematicViscosity_SI) * dx_SI * dx_SI; // s

   const real_t dt_SI = uInflow / uInflow_SI * dx_SI;
   const real_t viscosity =  kinematicViscosityFluid_SI * dt_SI / ( dx_SI * dx_SI );
   const real_t omega = lbm::collision_model::omegaFromViscosity(viscosity);
   const real_t particleGenerationSpacing = particleGenerationSpacing_SI / dx_SI;


   real_t gravitationalAcceleration = gravitationalAcceleration_SI * dt_SI * dt_SI / dx_SI;
   real_t densityRatio = densityParticle_SI / densityFluid_SI;
   real_t densityParticle = densityRatio;
   real_t densityFluid = real_t(1);


   real_t diameter = diameter_SI / dx_SI;
   real_t timeStepSize = real_t(1);
   Vector3<uint_t> domainSize(uint_c(std::ceil(xSize_SI / dx_SI)),
                                uint_c(std::ceil(ySize_SI / dx_SI)),
                                uint_c(std::ceil(zSize_SI / dx_SI)));

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

   //sphere generation
   /// MESAPD Particles

   uint_t randomSeed = 1;
   std::mt19937 randomNumberGenerator{static_cast<unsigned int>(randomSeed)}; // rand()

   WALBERLA_CHECK(particleGenerationSpacing > diameter, "Spacing should be larger than diameter!");

   for (auto& iBlk : *blocks)
   {
      for (auto position : grid_generator::SCGrid{domainAABB,
                                                   Vector3<real_t>{particleGenerationSpacing} * real_c(0.5),
                                                   particleGenerationSpacing})
      {
         Vec3 positionOffset{math::realRandom<real_t>(-0.1_r, 0.1_r, randomNumberGenerator),
                              math::realRandom<real_t>(-0.1_r, 0.1_r, randomNumberGenerator),
                              math::realRandom<real_t>(-0.1_r, 0.1_r, randomNumberGenerator)};

         if(iBlk.getAABB().contains(position))
         {
            auto particle = ps->create();
            particle->setShapeID(sphereShape);
            particle->setType(0);
            particle->setPosition(position + positionOffset * particleGenerationSpacing);
            particle->setOwner(walberla::mpi::MPIManager::instance()->rank());
            particle->setInteractionRadius( sphereRadius);
            ss->shapes[sphereShape]->updateMassAndInertia(densityParticle);
         }
      }
   }
   int64_t numParticles = int64_c(ps->size());
   walberla::mpi::reduceInplace(numParticles, walberla::mpi::SUM);
   WALBERLA_LOG_INFO_ON_ROOT("Created " << numParticles << " particles.");



   createPlane(*ps, *ss, domainAABB.minCorner(), Vector3<real_t>(1_r,0,0));
   createPlane(*ps, *ss, domainAABB.minCorner(), Vector3<real_t>(0,1_r,0));
   createPlane(*ps, *ss, domainAABB.minCorner(), Vector3<real_t>(0,0,1_r));
   createPlane(*ps, *ss, domainAABB.maxCorner(), Vector3<real_t>(-1_r,0,0));
   createPlane(*ps, *ss, domainAABB.maxCorner(), Vector3<real_t>(0,-1_r,0));
   createPlane(*ps, *ss, domainAABB.maxCorner(), Vector3<real_t>(0,0,-1_r));



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
   auto vtkOutput = make_shared<mesa_pd::vtk::ParticleVtkOutput>(ps);
   vtkOutput->addOutput<mesa_pd::data::SelectParticleInteractionRadius>("interactionRadius");
   vtkOutput->addOutput<data::SelectParticleLinearVelocity>("velocity");
   vtkOutput->setParticleSelector([sphereShape](const mesa_pd::data::ParticleStorage::iterator& pIt){
      return pIt->getShapeID() == sphereShape;
   });
   auto vtkWriter = walberla::vtk::createVTKOutput_PointData(vtkOutput, "particles_cen", 1, vtkOutputFolder, "simulation_step");

   // domain decomposition
   auto vtkDomainOutput = walberla::vtk::createVTKOutput_DomainDecomposition(blocks, "domain_decomposition",
                                                                             uint_t(1), vtkOutputFolder, "simulation_step");
   vtkDomainOutput->write();



   //cohesion init
   bool openmp = false;
   ps->forEachParticlePairHalf(openmp, sphereSelector, *accessor,
                               [&](const size_t idx1, const size_t idx2){
                                  mesa_pd::collision_detection::AnalyticContactDetection acd;
                                  mesa_pd::kernel::DoubleCast double_cast;
                                  if(accessor->getShape(idx1)->getShapeType() == mesa_pd::data::Sphere::SHAPE_TYPE &&
                                      accessor->getShape(idx2)->getShapeType() == mesa_pd::data::Sphere::SHAPE_TYPE){

                                     if (double_cast(idx1, idx2, *accessor, acd, *accessor)) {
                                        // particles overlap
                                        if (contactFilter(acd.getIdx1(), acd.getIdx2(), *accessor, acd.getContactPoint(),  *mesapdDomain))
                                        {
                                           WALBERLA_LOG_INFO("Found cohesive particles");
                                           cohesionInitKernel(acd.getIdx1(), acd.getIdx2(), *accessor, acd.getPenetrationDepth());
                                        }
                                     }

                                  }

                               });
   reduceAndSwapContactHistory(*ps);

   for(uint_t t = 0; t < numberOfTimeSteps; ++t) {

      if(t % vtkSpacing == 0){
         WALBERLA_LOG_INFO_ON_ROOT( "Timestep " << t << " / " << numberOfTimeSteps );
      }

      if(t % vtkSpacing == 0) {
         vtkWriter->write();
      }

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


      reduceAndSwapContactHistory(*ps);

      reduceProperty.operator()<mesa_pd::ForceTorqueNotification>(*ps);

      // add gravitational + buoyancy force
      ps->forEachParticle(false, mesa_pd::kernel::SelectLocal(), *accessor, [gravitationalForce](const size_t idx, ParticleAccessor_T& ac){mesa_pd::addForceAtomic(idx, ac, gravitationalForce);},*accessor);
      ps->forEachParticle(false, mesa_pd::kernel::SelectLocal(), *accessor, [buoyancyForce](const size_t idx, ParticleAccessor_T& ac){mesa_pd::addForceAtomic(idx, ac, buoyancyForce);},*accessor);

      ps->forEachParticle(openmp, kernel::SelectLocal(), *accessor, particleIntegration, *accessor);

      syncNextNeighbors(*ps, *mesapdDomain);

   }

   writeSpherePropertiesToFile(*accessor, "logging_spheres_DiffBoundaryParticleBed.txt", sphereShape);
   return EXIT_SUCCESS;
}

} //namespace walberla

int main( int argc, char ** argv )
{
   return walberla::main(argc, argv);
}
