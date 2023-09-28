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
//! \author Sebastian Eibl <sebastian.eibl@fau.de>
//
//======================================================================================================================

//======================================================================================================================
//
//  THIS FILE IS GENERATED - PLEASE CHANGE THE TEMPLATE !!!
//
//======================================================================================================================

#pragma once

#include <mesa_pd/data/DataTypes.h>
#include <mesa_pd/data/IAccessor.h>
{%- if bIntegrateRotation %}
#include <mesa_pd/common/ParticleFunctions.h>
{%- endif %}

namespace walberla {
namespace mesa_pd {
namespace kernel {

/**
 * Explicit Euler integration.
 * Uses the 0.5at^2 extension for position integration.
 * Boils down to using v_{t+0.5dt} for position integration.
 * This version exhibits increased stability compared to standard explicit euler.
 *
 * Wachs, A. Particle-scale computational approaches to model dry and saturated granular flows of non-Brownian, non-cohesive, and non-spherical rigid bodies. Acta Mech 230, 1919–1980 (2019). https://doi.org/10.1007/s00707-019-02389-9
 *
 * This kernel requires the following particle accessor interface
 * \code
   {%- for prop in interface %}
   {%- if 'g' in prop.access %}
 * const {{prop.type}}& get{{prop.name | capFirst}}(const size_t p_idx) const;
   {%- endif %}
   {%- if 's' in prop.access %}
 * void set{{prop.name | capFirst}}(const size_t p_idx, const {{prop.type}}& v);
   {%- endif %}
   {%- if 'r' in prop.access %}
 * {{prop.type}}& get{{prop.name | capFirst}}Ref(const size_t p_idx);
   {%- endif %}
 *
   {%- endfor %}
 * \endcode
 *
 * \pre  All forces and torques acting on the particles have to be set.
 * \post All forces and torques are reset to 0.
 * \ingroup mesa_pd_kernel
 */
class ExplicitEuler
{
public:
   explicit ExplicitEuler(const real_t dt) : dt_(dt) {}

   template <typename Accessor>
   void operator()(const size_t i, Accessor& ac) const;
private:
   real_t dt_ = real_t(0.0);
};

template <typename Accessor>
inline void ExplicitEuler::operator()(const size_t idx,
                                      Accessor& ac) const
{
   static_assert(std::is_base_of<data::IAccessor, Accessor>::value, "please provide a valid accessor");

   if (!data::particle_flags::isSet( ac.getFlags(idx), data::particle_flags::FIXED))
   {
      ac.setPosition      (idx, 0.5_r * ac.getInvMass(idx) * ac.getForce(idx) * dt_ * dt_ +
                                ac.getLinearVelocity(idx) * dt_ +
                                ac.getPosition(idx));
      ac.setLinearVelocity(idx, ac.getInvMass(idx) * ac.getForce(idx) * dt_ +
                                ac.getLinearVelocity(idx));

      {%- if bIntegrateRotation %}
      {%- if bUseFullAngularMomentumEquation %}
      // computation done in body frame: d(omega)/ dt = J^-1 ((J*omega) x omega + T), update in world frame
      // see Wachs, 2019, doi:10.1007/s00707-019-02389-9, Eq. 27
      const auto omegaBF = transformVectorFromWFtoBF(idx, ac, ac.getAngularVelocity(idx));
      const auto torqueBF = transformVectorFromWFtoBF(idx, ac, ac.getTorque(idx));
      const Vec3 wdotBF = ac.getInvInertiaBF(idx) * ( ( ac.getInertiaBF(idx) * omegaBF ) % omegaBF + torqueBF );
      const Vec3 wdot = transformVectorFromBFtoWF(idx, ac, wdotBF);
      {%- else %}
      // note: contribution (J*omega) x omega is ignored here -> see template for other variant
      const Vec3 wdot = math::transformMatrixRART(ac.getRotation(idx).getMatrix(),
                                                  ac.getInvInertiaBF(idx)) * ac.getTorque(idx);
      {%- endif %}

      // Calculating the rotation angle
      const Vec3 phi( 0.5_r * wdot * dt_ * dt_ +
                      ac.getAngularVelocity(idx) * dt_ );

      // Calculating the new orientation
      auto rotation = ac.getRotation(idx);
      rotation.rotate( phi );
      ac.setRotation(idx, rotation);

      ac.setAngularVelocity(idx, wdot * dt_ + ac.getAngularVelocity(idx));
      {%- endif %}
   }

   ac.setForce (idx, Vec3(real_t(0), real_t(0), real_t(0)));
   {%- if bIntegrateRotation %}
   ac.setTorque(idx, Vec3(real_t(0), real_t(0), real_t(0)));
   {%- endif %}
}

} //namespace kernel
} //namespace mesa_pd
} //namespace walberla
