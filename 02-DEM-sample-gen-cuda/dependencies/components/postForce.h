//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_POSTFORCE_H
#define MULTI_OBJECTIVE_CALIBRATION_POSTFORCE_H
void postforce_grain(int, double);

void postforce_grain(int i, double dt){



    g[i].ax = g[i].ax + params.gx * g[i].mass;
    g[i].ay = g[i].ay + params.gy * g[i].mass;
    g[i].az = g[i].az + params.gz * g[i].mass;


    // compute acceleration
    g[i].ax = GLOBALDAMP * g[i].ax/g[i].mass;
    g[i].ay = GLOBALDAMP * g[i].ay/g[i].mass;
    g[i].az = GLOBALDAMP * g[i].az/g[i].mass;


    g[i].athx = g[i].athx/g[i].inertia;
    g[i].athy = g[i].athy/g[i].inertia;
    g[i].athz = g[i].athz/g[i].inertia;

    //velocity (t + dt)
    g[i].vx = 0.5 * g[i].ax * dt + g[i].vx;
    g[i].vy = 0.5 * g[i].ay * dt + g[i].vy;
    g[i].vz = 0.5 * g[i].az * dt + g[i].vz;

    g[i].vthx = 0.5 * g[i].athx * dt + g[i].vthx;
    g[i].vthy = 0.5 * g[i].athy * dt + g[i].vthy;
    g[i].vthz = 0.5 * g[i].athz * dt + g[i].vthz;


}

#endif //MULTI_OBJECTIVE_CALIBRATION_POSTFORCE_H
