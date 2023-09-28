//
//  inlineFunctions.h
//  settling_particles
//
//  Created by Mohammad Sanayei on 26.07.21.
//

#ifndef inlineFunctions_h
#define inlineFunctions_h

template <typename T>
inline std::vector<T> crossProduct(const std::vector<T>& v1, const std::vector<T>& v2) {
    std::vector<T> vR(3, 0.);
    vR[0] =   ( (v1[1] * v2[2]) - (v1[2] * v2[1]) );
    vR[1] = - ( (v1[0] * v2[2]) - (v1[2] * v2[0]) );
    vR[2] =   ( (v1[0] * v2[1]) - (v1[1] * v2[0]) );
    return vR;
}

template <typename T>
inline T dotProduct(const std::vector<T>& v1, const std::vector<T>& v2) {

    T dproduct = v1[0] * v2[0] + v1[1] * v2[1] + v1[2] * v2[2];
    return dproduct;
}

template <typename T>
T norm(const std::vector<T>& a)
{
    T v(0);
    for (unsigned iD=0; iD<a.size(); iD++) {
        v += a[iD] * a[iD];
    }
    v = sqrt(v);
    return v;
}

template <typename T>
T norm(const T *a, int size)
{
    T v(0);
    for (unsigned iD=0; iD<size; iD++) {
        v += a[iD] * a[iD];
    }
    v = sqrt(v);
    return v;
}




template <typename T>
std::vector<T> normalize(const std::vector<T>& a)
{
    std::vector<T> out(a);
    T scale = norm(a);
//    assert(scale>0);
    if(scale > 0){
        for (unsigned int iDim=0; iDim<a.size(); iDim++) {
            out[iDim] /= scale;
        }
        
    }
    
    
    return out;
}


template <typename T>
double oldContactDetection(const std::vector<std::vector<T>>& a, int id)
{
    int id_ = -1;
    for (int i = 0 ; i< a.size(); i++){
        if(double(a[i][0]) == (double)id){
            id_ = i;
            break;

        }

    }

    return id_ ;


}

template <typename T>
std::vector<T> addVectors(const std::vector<T>& a, const std::vector<T>& b)
{
    std::vector<T> out(3, 0.);

    out[0]=a[0] + b[0];
    out[1]=a[1] + b[1];
    out[2]=a[2] + b[2];
    

    return out;
}

template <typename T>
std::vector<T> subVectors(const std::vector<T>& a, const std::vector<T>& b)
{
    std::vector<T> out(3, 0.);
  
    out[0]=a[0] - b[0];
    out[1]=a[1] - b[1];
    out[2]=a[2] - b[2];
    

    return out;
}

template <typename T>
std::vector<T> elementMulti(const std::vector<T>& a, T b)
{
    std::vector<T> out(3, 0.);
    
    out[0]=a[0] * b;
    out[1]=a[1] * b;
    out[2]=a[2] * b;
    

    return out;
}
#endif /* inlineFunctions_h */
