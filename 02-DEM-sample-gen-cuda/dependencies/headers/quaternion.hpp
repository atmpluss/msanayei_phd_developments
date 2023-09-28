//
//  quaternion.hpp
//  conetraction
//
//  Created by Mohammad Sanayei on 16.08.21.
//

#ifndef quaternion_hpp
#define quaternion_hpp

#include<iostream>
#include<math.h>
#include<vector>
struct quat{
    quat();
    quat(double a,double b,double c,double d);
    quat(double angle, const double* axis);
    double w,x,y,z;
    void normalize();
    quat operator*(quat& b);
    quat operator+(quat& b);
    quat conjugate();
    std::vector<double> rotate(std::vector<double>& vec);
    double getAngle();
//    double* getAxis();
    std::vector<double> getAxis();
    

    
    
    
};

#endif /* quaternion_hpp */
