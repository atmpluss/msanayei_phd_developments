//
//  oldContactHistory.h
//  postprocessing_conePull
//
//  Created by Mohammad Sanayei on 04.06.21.
//

#ifndef oldContactHistory_h
#define oldContactHistory_h
struct oldContact{
    std::vector<double> Ut;
    std::vector<double> Ur;
    std::vector<double> Uo;
    double impactVelocity;
    
};
std::map<std::pair<int,int>, oldContact> old_c;

#endif /* oldContactHistory_h */
