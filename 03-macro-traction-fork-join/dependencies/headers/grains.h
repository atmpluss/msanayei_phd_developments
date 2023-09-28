//
//  grains.h
//  postprocessing_conePull
//
//  Created by Mohammad Sanayei on 04.06.21.
//

#ifndef grains_h
#define grains_h
#include <vector>
#include"quaternion.hpp"
struct grains {
    int id;
    std::string flag = "None";
    double radius;
    double x,y,z;
    double thx, thy, thz;
    double vx,vy,vz;
    double vthx, vthy,vthz;
    double ax,ay,az;
    double athx,athy,athz;
    double mass;
    double inertia;
    int bondNumber = 0;
    int coordination = 0;
    //double neckParticle = 0. ;
    int neckParticle = 0;
    int conePosition = -5;
    int plain = -1;
//    quat q;
};
std::vector <grains> g;
int nb_grains = 0;
int upperParticles = 0;
double rhos=2600;

#endif /* grains_h */
