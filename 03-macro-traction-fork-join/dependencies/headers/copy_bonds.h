//
// Created by msanayei on 11/9/2022.
//

#ifndef TRACTION_NEWFS_1E6_ADDCOORDINATION_COPY_MAP_H
#define TRACTION_NEWFS_1E6_ADDCOORDINATION_COPY_MAP_H
#include <vector>
#include <map>
struct bond_copy {

    int graini_id;
    int grainj_id;
    bool isActive;
    int isNeck;
    double fn, fs, moment, torsion;
};

std::map<std::pair<int,int>, bond_copy> bonds_copy;

#endif //TRACTION_NEWFS_1E6_ADDCOORDINATION_COPY_MAP_H
