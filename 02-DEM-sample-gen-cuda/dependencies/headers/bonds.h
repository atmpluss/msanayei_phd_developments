//
//  bonds.h
//  postprocessing_conePull
//
//  Created by Mohammad Sanayei on 04.06.21.
//

#ifndef bonds_h
#define bonds_h
#include <vector>
#include <map>
struct bond{

    int graini_id;
    int grainj_id;
    bool isActive;
    double dn_init;
    double dn;
    std::vector<double> Ut;
    std::vector<double> Ur;
    std::vector<double> Uo;
    std::vector<double> fn;
    std::vector<double> fs;
    std::vector<double> torque;
    std::vector<double> torsion;
    double rupture;
    double kn;
    double ks;
    double kr;
    double ko;
    double nun;
    double nus;
    double nur;
    double nuo;
    double b_c ;
    double y_n ;
    double y_s;
    double y_r;
    double y_o;
    int isNeck;
    int isNeckWall;
    double bondForce;
    #ifdef BOND_DAMAGE
        double ydam;
        double eta;
        double dam;
    #endif
};

std::map<std::pair<int,int>, bond> bonds;

struct bond_properties{
    double kn_kn;
    double ks_kn;
    double kr_kn;
    double ko_kn;
    double nun_nun;
    double nus_nun;
    double nur_nun;
    double nuo_nun;
};
bond_properties bond_pro;
#endif /* bonds_h */
