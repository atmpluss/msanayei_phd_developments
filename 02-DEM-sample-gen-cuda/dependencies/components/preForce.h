//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_PREFORCE_H
#define MULTI_OBJECTIVE_CALIBRATION_PREFORCE_H
void preforce_grain(int, double);
void preforce_grain(int i, double dt){

    //v(t+dt/2)
    g[i].vx = 0.5 * g[i].ax * dt + g[i].vx;
    g[i].vy = 0.5 * g[i].ay * dt + g[i].vy;
    g[i].vz = 0.5 * g[i].az * dt + g[i].vz;
    g[i].vthx = 0.5 * g[i].athx * dt + g[i].vthx;
    g[i].vthy = 0.5 * g[i].athy * dt + g[i].vthy;
    g[i].vthz = 0.5 * g[i].athz * dt + g[i].vthz;

    if( g[i].flag=="d_w" || g[i].flag=="d_p"||g[i].flag=="d_e"){
        g[i].vx = 0.;
        g[i].vy = 0.;
        g[i].vz = 0.;
        g[i].vthx = 0.;
        g[i].vthy = 0.;
        g[i].vthz = 0.;
    }
    if(g[i].flag == "u_w"){
        g[i].vx = 0.;
        g[i].vy = wall.vup;
        g[i].vz = 0.;
        g[i].vthx = 0.;
        g[i].vthy = 0.;
        g[i].vthz = 0.;
    }

    //position(t + dt)
    g[i].x = g[i].x + g[i].vx * dt;
    g[i].y = g[i].y + g[i].vy * dt;
    g[i].z = g[i].z + g[i].vz * dt;



    g[i].thx = g[i].thx + g[i].vthx * dt;
    g[i].thy = g[i].thy + g[i].vthy * dt;
    g[i].thz = g[i].thz + g[i].vthz * dt;

//    double anvel[3] = {g[i].vthx,g[i].vthy,g[i].vthz};
//    quat q(1.,0.,0.,0.);
//    if(norm(anvel,3) != 0){
//        q.w = cos(norm(anvel,3) * dt/4);
//        q.x = sin(norm(anvel,3) * dt/4) * anvel[0]/norm(anvel, 3);
//        q.y = sin(norm(anvel,3) * dt/4) * anvel[1]/norm(anvel, 3);
//        q.z = sin(norm(anvel,3) * dt/4) * anvel[2]/norm(anvel, 3);
//    }
//
//    g[i].q = q * g[i].q;

    // resetting acceleration to zero
    g[i].ax = 0.;
    g[i].ay = 0.;
    g[i].az = 0.;

    g[i].athx = 0.;
    g[i].athy = 0.;
    g[i].athz = 0.;


    g[i].coordination = 0;



}
#endif //MULTI_OBJECTIVE_CALIBRATION_PREFORCE_H
