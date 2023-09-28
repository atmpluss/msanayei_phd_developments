//
//  quaternion.cpp
//  conetraction
//
//  Created by Mohammad Sanayei on 16.08.21.
//

#include "quaternion.hpp"


quat::quat(){}
quat::quat(double a,double b,double c,double d):w{a},x{b},y{c},z{d}
{}
void quat::normalize(){
    double d = sqrt(w*w + x*x + y*y + z*z) ;

    
    w /= d;
    x /= d;
    y /= d;
    z /= d;
    
}

quat quat::conjugate(){
    
    return quat(w,-1*x,-1*y,-1*z);
    
}

quat quat::operator*(quat& b){
    quat output;
    output.w = w*b.w - x*b.x - y*b.y - z*b.z;
    output.x = w* b.x + x*b.w + y*b.z -z*b.y;
    output.y = w*b.y - x*b.z + y*b.w + z*b.x;
    output.z = w*b.z + x*b.y - y*b.x + z*b.w;
    
    return output;
}

quat quat::operator+(quat& b){
   
    return  quat (w+b.w,x+b.x,y+b.y,z+b.z );
}

quat::quat(double angle, const double* axis){
    double ax[3] = {0.,0.,0.};
    double cosa = cos(angle/2.);
    double sina = sin(angle/2.);
    
    
   
    double axis_length = sqrt(axis[0]*axis[0] + axis[1]*axis[1] + axis[2]*axis[2]);
    if(axis_length > 1e-4){
        ax[0] = axis[0]/axis_length;
        ax[1] = axis[1]/axis_length;
        ax[2] = axis[2]/axis_length;
    }
    
    this->w = cosa;
    this->x = sina * ax[0] ;
    this->y = sina * ax[1] ;
    this->z = sina * ax[2] ;
    
    
 
}

std::vector<double> quat:: rotate(std::vector<double>& vec){
    quat inverse = this->conjugate();
    quat vec_ (0., vec[0], vec[1], vec[2]);
    quat output_ = *this * vec_ ;
    output_ =  output_ * inverse ;
    std::vector<double> output = {output_.x,output_.y,output_.z};
    return output;
}
double quat::getAngle(){
    std::cout<<"this is w:"<<this->w<<std::endl;
    if(this->w <1){
        return 2*acos(w);
    }
    else{
        return 0.;
    }
    
}




std::vector<double> quat::getAxis(){
    double temp = 1. - this->w*this->w;
    std::vector<double> ax (3,0.);
  
    if(temp>1e-4){
        double s = sqrt(temp);
        ax[0] = x/s;
        ax[1] = y/s;
        ax[2] = z/s;
        
    }
    
    return ax;
    
}
