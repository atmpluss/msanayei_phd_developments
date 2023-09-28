//
// Created by msanayei on 9/6/2021.
//

#ifndef CONETRACTION_SPRINGWALL_H
#define CONETRACTION_SPRINGWALL_H
struct Spring
{
    double delta, StiffK, PullRate;
};
//Spring spring = {0.,12000., 0.002};
Spring spring = {0.,66861, 0.001};

struct PullWall
{
    double vup, aup,damp, fup, feup,ymax, mass, pos;
};
double dampWall = -1 * log(0.2)/sqrt(log(0.2) * log(0.2) + M_PI* M_PI);
double dampNWall = 2 * sqrt(1e6 * 0.4975) * dampWall;


PullWall wall = {0.,0.,dampNWall,0.,0.,0,0., 0};
#endif //CONETRACTION_SPRINGWALL_H

