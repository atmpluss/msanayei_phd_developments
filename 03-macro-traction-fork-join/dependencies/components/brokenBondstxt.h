//
// Created by msanayei on 3/23/2022.
//

#ifndef MYFILE_H
#define MYFILE_H

#include "../headers/bonds.h"
void brokenBondtxt( double , double , double , double , bond* );

void brokenBondtxt( double fnRatio,
                    double fsRatio,
                    double frratio,
                    double foRatio,
                    bond* b){

    std::ofstream file2_;
    std::string name = "SpringForce/BrokenBondsInfo.txt";
    file2_.open(name,std::ios_base::app);
    file2_<<fnRatio<<" "<<fsRatio<<" "<<frratio<<" "<<foRatio<<std::endl;
    return;

}

#endif // MYFILE_H