////
////  This file is part of waLBerla. waLBerla is free software: you can
////  redistribute it and/or modify it under the terms of the GNU General Public
////  License as published by the Free Software Foundation, either version 3 of
////  the License, or (at your option) any later version.
////
////  waLBerla is distributed in the hope that it will be useful, but WITHOUT
////  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
////  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
////  for more details.
////
////  You should have received a copy of the GNU General Public License along
////  with waLBerla (see COPYING.txt). If not, see <http://www.gnu.org/licenses/>.
////
////! \file ParticleSelector.h
////! \ingroup lbm_mesapd_coupling
////! \author Christoph Rettinger <christoph.rettinger@fau.de>
////
////======================================================================================================================
//
//#pragma once
//
//#include "mesa_pd/data/Flags.h"
//#include "mesa_pd/data/IAccessor.h"
//#include "mesa_pd/data/shape/Sphere.h"
//
//namespace walberla {
//
//        namespace particle_erosion_utility_selector{
//
//
//
//        struct myRegularParticlesSelector
//        {
//            template< typename ParticleAccessor_T >
//            bool inline operator()(const size_t particleIdx, const ParticleAccessor_T & ac) const
//            {
//
//                static_assert(std::is_base_of<mesa_pd::data::IAccessor, ParticleAccessor_T>::value, "Provide a valid accessor as template");
//                return !mesa_pd::data::particle_flags::isSet( ac.getFlags(particleIdx), mesa_pd::data::particle_flags::FIXED) &&
//                       !mesa_pd::data::particle_flags::isSet( ac.getFlags(particleIdx), mesa_pd::data::particle_flags::GLOBAL);
//            }
//        };
//
//        struct FixedParticlesSelector
//        {
//            template< typename ParticleAccessor_T >
//            bool inline operator()(const size_t particleIdx, const ParticleAccessor_T & ac) const
//            {
//
//                static_assert(std::is_base_of<mesa_pd::data::IAccessor, ParticleAccessor_T>::value, "Provide a valid accessor as template");
//                return mesa_pd::data::particle_flags::isSet( ac.getFlags(particleIdx), mesa_pd::data::particle_flags::FIXED) &&
//                       !mesa_pd::data::particle_flags::isSet( ac.getFlags(particleIdx), mesa_pd::data::particle_flags::GLOBAL);
//            }
//        };
//
//        struct GlobalParticlesSelector
//        {
//
//            template< typename ParticleAccessor_T >
//            bool inline operator()(const size_t particleIdx, const ParticleAccessor_T & ac) const
//            {
//
//                static_assert(std::is_base_of<mesa_pd::data::IAccessor, ParticleAccessor_T>::value, "Provide a valid accessor as template");
//                return mesa_pd::data::particle_flags::isSet( ac.getFlags(particleIdx), mesa_pd::data::particle_flags::GLOBAL);
//            }
//        };
//
//// Only select spheres with a Stokes number above a critical Stokes number
//// note: the density here is hardcoded and thus assumes a constant density throughout all particles
//// this is due to the fact that otherwise the density would have to be re-computed from the inverse mass and the volume in the shape storage
//// it also currently only works with spheres
//// it accesses the impact velocity stored in the old contact history and thus has to be used AFTER the reduce contact history call
//        struct StokesNumberBasedSphereSelector
//        {
//            explicit StokesNumberBasedSphereSelector( real_t StCrit, real_t densityFluid, real_t densityParticle, real_t kinematicViscosity ) :
//                    StCrit_(StCrit), densityFluid_(densityFluid), densityParticle_(densityParticle), kinematicViscosity_(kinematicViscosity) {}
//
//            template< typename ParticleAccessor_T >
//            bool inline operator()(const size_t particleIdx, const ParticleAccessor_T & ac) const
//            {
//                static_assert(std::is_base_of<mesa_pd::data::IAccessor, ParticleAccessor_T>::value, "Provide a valid accessor as template");
//
//                myRegularParticlesSelector regularParticlesSelector;
//
//                if(regularParticlesSelector(particleIdx, ac))
//                {
//
//                    // check for non-fixed spheres
//                    if( ac.getShape(particleIdx)->getShapeType() == mesa_pd::data::Sphere::SHAPE_TYPE )
//                    {
//
//                        auto contactHistories = ac.getOldContactHistory(particleIdx);
//
//                        if(contactHistories.empty()) return true; // no active contacts
//
//                        // find maximum impact velocity among all active contacts
//                        real_t maximumImpactVelocity = real_t(0);
//                        for( auto & history : contactHistories )
//                        {
//                            maximumImpactVelocity = std::max(maximumImpactVelocity, history.second.getImpactVelocityMagnitude());
//                        }
//
//                        auto sphereShape = *static_cast< mesa_pd::data::Sphere*>(ac.getShape(particleIdx));
//                        real_t diameter = real_t(2) * sphereShape.getRadius();
//
//                        real_t St = (densityParticle_ / densityFluid_) * (maximumImpactVelocity *  diameter / kinematicViscosity_) / real_t(9);
//
//                        if( St < StCrit_) return true;
//                    }else if(ac.getShape(particleIdx)->getShapeType() == mesa_pd::data::Box::SHAPE_TYPE ){
//                        return true;
//                    }
//                }
//
//                return false;
//            }
//
//        private:
//            real_t StCrit_;
//            real_t densityFluid_;
//            real_t densityParticle_;
//            real_t kinematicViscosity_;
//        };
//
//        }
//} // namespace walberla



