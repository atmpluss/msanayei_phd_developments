//
//  overloads.h
//  postprocessing_conePull
//
//  Created by Mohammad Sanayei on 07.06.21.
//

#ifndef overloads_h
#define overloads_h
#include<iostream>
#include<vector>

template <typename T>
std::vector<T> operator+(std::vector<T>& a, std::vector<T>& b)
{
    std::vector<T> result(3, 0.);
    result[0] = a[0] + b[0];
    result[1] = a[1] + b[1];
    result[2] = a[2] + b[2];
    
    return result;
}

template <typename T>
std::vector<T> operator-(std::vector<T>& a, std::vector<T>& b)
{
    std::vector<T> result(3, 0.);
    result[0] = a[0] - b[0];
    result[1] = a[1] - b[1];
    result[2] = a[2] - b[2];
    
    return result;
}


template <typename T>
std::vector<T> operator*(const std::vector<T>& v1, const std::vector<T>& v2)
{
        std::vector<T> vR(3, 0);
        vR[0] =   ( (v1[1] * v2[2]) - (v1[2] * v2[1]) );
    
        vR[1] = - ( (v1[0] * v2[2]) - (v1[2] * v2[0]) );
    
        vR[2] =   ( (v1[0] * v2[1]) - (v1[1] * v2[0]) );
    
        return vR;
}





#endif /* overloads_h */
