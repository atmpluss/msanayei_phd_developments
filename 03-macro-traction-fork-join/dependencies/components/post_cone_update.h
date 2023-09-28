//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_POST_CONE_UPDATE_H
#define MULTI_OBJECTIVE_CALIBRATION_POST_CONE_UPDATE_H
void postConeUpdate( double dt);

void postConeUpdate( double dt)
{
    for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
        wall.feup += it->second.bondForce;
    }

    spring.delta += spring.PullRate * dt;
    wall.fup = spring.StiffK * spring.delta;
    wall.aup = GLOBALDAMP * (wall.fup + (wall.feup) + wall.mass * params.gy - (wall.damp*wall.vup) )/wall.mass;
    wall.vup = 0.5 * dt * wall.aup + wall.vup;



    if(wall.vup < 0 && wall.pos <= 0)
    {
        wall.aup = 0.;
        wall.vup = 0.;
    }

}

#endif //MULTI_OBJECTIVE_CALIBRATION_POST_CONE_UPDATE_H
