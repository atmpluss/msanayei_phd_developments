//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_POSITION_UPPERCONE_H
#define MULTI_OBJECTIVE_CALIBRATION_POSITION_UPPERCONE_H
void update_uppercone_position( double);

void update_uppercone_position( double dt)
{
    cowall[1].bot[1] = cowall[1].bot[1] + dt * wall.vup;
    cowall[1].top[1] = cowall[1].top[1] + dt * wall.vup;
    double y =  cowall[0].height * (r_small / r_big) / (1 - (r_small / r_big));
    std::vector<double> cone_v (3, 0.);

    cone_v[0] = cowall[1].bot[0]  - cowall[1].axis[0] * y;
    cone_v[1] = cowall[1].bot[1]  - cowall[1].axis[1] * y;
    cone_v[2] = cowall[1].bot[2]  - cowall[1].axis[2] * y;

    cowall[1].coneV = cone_v;
}

#endif //MULTI_OBJECTIVE_CALIBRATION_POSITION_UPPERCONE_H
