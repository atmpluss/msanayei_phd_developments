//
//  cone_cylinder.h
//  postprocessing_conePull
//
//  Created by Mohammad Sanayei on 04.06.21.
//

#ifndef cone_cylinder_h
#define cone_cylinder_h
#include <vector>
struct cone{
    int id;
    double r_bot;
    double r_top;
    std::vector <double> top;
    std::vector <double> bot;
    double height;
    std::vector<double> axis;
    std::vector<double> coneV;
    double alpha;
    double theta;
};


struct cylinder{
    int id;
    std::vector <double> top;
    std::vector <double> bot;
    double r;
    double height;
    std::vector <double> axis;
};
//wall properties
std::vector<double> top = {0.0, 0.108, 0.0};
std::vector<double> bot ={0.0, 0.0, 0.0};
std::vector<double> h_ = {top[0] - bot[0], top[1] - bot[1], top[2] - bot[2]};


double r_big = 0.0425;
double r_small = 0.028;
std::vector <cone> cowall;

double partialConeA = M_PI * (r_big + r_small) *
                      sqrt((r_big - r_small) * (r_big - r_small) +
                           (top[1] - bot[1]) * (top[1] - bot[1]) );

#endif /* cone_cylinder_h */
