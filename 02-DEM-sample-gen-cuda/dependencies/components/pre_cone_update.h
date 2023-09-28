//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_PRECONEUPDATE_H
#define MULTI_OBJECTIVE_CALIBRATION_PRECONEUPDATE_H
void preConeUpdate( double dt);

void preConeUpdate( double dt)
{
    wall.pos += dt * wall.vup + 0.5 * dt*dt * wall.aup;
    wall.vup = 0.5 * dt * wall.aup + wall.vup;
    wall.aup = 0;
    wall.fup = 0.;
    wall.feup = 0.;

}
#endif //MULTI_OBJECTIVE_CALIBRATION_PRECONEUPDATE_H
