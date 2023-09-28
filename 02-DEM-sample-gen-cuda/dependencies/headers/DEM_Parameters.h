//
// Created by msanayei on 11/12/2021.
//

#ifndef C_DEM_PARAMETERS_H
#define C_DEM_PARAMETERS_H
struct DemParams{
    double gx, gy, gz,en, E, mu, mur, muo,
            ks_to_kn,kr_to_kn,ko_to_kn,
            nus_to_nun,nur_to_nun,nuo_to_nun, edry, collisionTime, poissonRatio ;
}; DemParams params;

double rmin = 0.00185;
double rmax = 0.00215;
//timestep
double dt = 0;
double dt_crt = 0;
#endif //C_DEM_PARAMETERS_H
