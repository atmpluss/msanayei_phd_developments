//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_PROTOTYPES_H
#define MULTI_OBJECTIVE_CALIBRATION_PROTOTYPES_H
#include "./brokenBondstxt.h"
void bonded_grains_interaction(int,int, int);



//
// Created by msanayei on 3/23/2022.
//
#include <iostream>
//#include "./dryKernel.h"
using namespace std;
void bonded_grains_interaction(int i, int j, int step){
    bond *b0;
    b0 = &bonds[make_pair(g[i].id,g[j].id)];
    auto b_copy = &bonds_copy[make_pair(g[i].id,g[j].id)];




    double xij, yij, zij, cij, dn_current,dn, fnabs;
    xij = g[i].x - g[j].x;
    yij = g[i].y - g[j].y;
    zij = g[i].z - g[j].z;
    cij = sqrt(xij*xij + yij*yij + zij*zij);
    dn_current = cij - (g[i].radius + g[j].radius);
    dn = dn_current -(*b0).dn_init;
    (*b0).dn = dn;

    std::vector < double > nij (3, 0.0);
    nij[0] = xij;
    nij[1] = yij;
    nij[2] = zij;
    if (norm(nij) != 0) {
        nij = normalize(nij);
    }

    std::vector < double > relVelij (3, 0.0);
    std::vector < double > fn (3, 0.0);

    double vijn;

//    relVelij[0] = g[i].vx - g[j].vx;
//    relVelij[1] = g[i].vy - g[j].vy;
//    relVelij[2] = g[i].vz - g[j].vz;
//    vijn = dotProduct(relVelij, nij);
//
//    if(dn>=0){
//        fnabs = -1 * (*b0).kn * dn + abs((*b0).nun * vijn);
//        if(fnabs > 0) fnabs = 0.;
//    }else{
//        fnabs = -2.0 * (*b0).kn * dn - abs((*b0).nun * vijn);
//        if(fnabs < 0) fnabs = 0.;
//    }
//
//    fn[0] = nij[0] * (fnabs);
//    fn[1] = nij[1] * (fnabs);
//    fn[2] = nij[2] * (fnabs);

    relVelij[0] = g[i].vx - g[j].vx;
    relVelij[1] = g[i].vy - g[j].vy;
    relVelij[2] = g[i].vz - g[j].vz;
    vijn = dotProduct(relVelij, nij);

    fnabs = -1 * (*b0).kn * dn;
    fn[0] = nij[0] * (fnabs - (*b0).nun * vijn);
    fn[1] = nij[1] * (fnabs - (*b0).nun * vijn);
    fn[2] = nij[2] * (fnabs - (*b0).nun * vijn);



//    fnabs = -1 * (*b0).kn * dn;
//    std::vector < double > fn (3, 0.0);
//    fn[0] = nij[0] * (fnabs - (*b0).nun * vijn);
//    fn[1] = nij[1] * (fnabs - (*b0).nun * vijn);
//    fn[2] = nij[2] * (fnabs - (*b0).nun * vijn);


    double a_ij = (g[i].radius * g[j].radius)/ (g[i].radius + g[j].radius);

    std::vector < double > vij (3, 0.0);
    std::vector < double > vijt (3, 0.0);
    std::vector < double > vthi (3, 0.0);
    std::vector < double > vthj (3, 0.0);
    std::vector < double > crossi (3, 0.0);
    std::vector < double > crossj (3, 0.0);
    double doti, dotj;
    vthi[0] = g[i].vthx;
    vthi[1] = g[i].vthy;
    vthi[2] = g[i].vthz;

    vthj[0] = g[j].vthx;
    vthj[1] = g[j].vthy;
    vthj[2] = g[j].vthz;

    crossi = crossProduct(nij, vthi);
    crossj = crossProduct(nij, vthj);
    doti = dotProduct(nij, vthi);
    dotj = dotProduct(nij, vthj);



    vij[0] = relVelij[0] + (g[i].radius - 0.5 * abs(dn)) * crossi[0] + (g[j].radius - 0.5 * abs(dn)) * crossj[0] ;
    vij[1] = relVelij[1] + (g[i].radius - 0.5 * abs(dn)) * crossi[1] + (g[j].radius - 0.5 * abs(dn)) * crossj[1] ;
    vij[2] = relVelij[2] + (g[i].radius - 0.5 * abs(dn)) * crossi[2] + (g[j].radius - 0.5 * abs(dn)) * crossj[2] ;
//    vij[0] = relVelij[0];
//    vij[1] = relVelij[1];
//    vij[2] = relVelij[2];


    vijt[0] = vij[0] - nij[0] * vijn;
    vijt[1] = vij[1] - nij[1] * vijn;
    vijt[2] = vij[2] - nij[2] * vijn;


    double a_prime_ij = ((g[i].radius - 0.5 * abs(dn)) * (g[j].radius - 0.5 * abs(dn))) /((g[i].radius - 0.5 * abs(dn))  + (g[j].radius - 0.5 * abs(dn)) );
    std::vector < double > vijr (3, 0.0);
    vijr[0] = -1 * a_prime_ij * (crossi[0] - crossj[0]);
    vijr[1] = -1 * a_prime_ij * (crossi[1] - crossj[1]);
    vijr[2] = -1 * a_prime_ij * (crossi[2] - crossj[2]);


    std::vector < double > vijo (3, 0.0);
    vijo[0] = a_ij * (doti - dotj) * nij[0];
    vijo[1] = a_ij * (doti - dotj) * nij[1];
    vijo[2] = a_ij * (doti - dotj) * nij[2];

    std::vector < double > Ut_pre (3, 0.0);
    std::vector < double > Ur_pre (3, 0.0);
    std::vector < double > Uo_pre (3, 0.0);
    std::vector < double > Ut (3, 0.0);
    std::vector < double > Ur (3, 0.0);
    std::vector < double > Uo (3, 0.0);

    Ut_pre[0] = (*b0).Ut[0] - nij[0] * dotProduct(nij, (*b0).Ut);
    Ut_pre[1] = (*b0).Ut[1] - nij[1] * dotProduct(nij, (*b0).Ut);
    Ut_pre[2] = (*b0).Ut[2] - nij[2] * dotProduct(nij, (*b0).Ut);



    Ut[0] = Ut_pre[0] + dt_crt * vijt[0];
    Ut[1] = Ut_pre[1] + dt_crt * vijt[1];
    Ut[2] = Ut_pre[2] + dt_crt * vijt[2];
//    Ut[0] = dt_crt * vijt[0];
//    Ut[1] = dt_crt * vijt[1];
//    Ut[2] = dt_crt * vijt[2];

    std::vector < double > fs (3, 0.0);
    fs[0] = -1 * (*b0).ks * Ut[0] - (*b0).nus * vijt[0];
    fs[1] = -1 * (*b0).ks * Ut[1] - (*b0).nus * vijt[1];
    fs[2] = -1 * (*b0).ks * Ut[2] - (*b0).nus * vijt[2];
//    std::vector<double> contactPoint (3,0.);
//    contactPoint[0] = g[j].x + nij[0]*(g[j].radius - abs(dn)/2.);
//    contactPoint[1] = g[j].y + nij[1]*(g[j].radius - abs(dn)/2.);
//    contactPoint[2] = g[j].z + nij[2]*(g[j].radius - abs(dn)/2.);
//
//    quat pi_2(1,0,0,0);
//    quat qj = g[j].q * pi_2;
//    std::vector<double> Ii = g[i].q.rotate(contactPoint);
//    std::vector<double> Ij = qj .rotate(contactPoint);
//    std::vector<double> Iij = Ii - Ij;
//    std::vector<double> tij = vijt;
//    tij = normalize(tij);
//    double deltat = dotProduct(Iij, tij);
//    double fsabs;
//    fsabs = -1*(*b0).ks * abs(deltat);
//    fs = elementMulti(tij, fsabs);


    Ur_pre[0] = (*b0).Ur[0] - nij[0] * dotProduct(nij, (*b0).Ur);
    Ur_pre[1] = (*b0).Ur[1] - nij[1] * dotProduct(nij, (*b0).Ur);
    Ur_pre[2] = (*b0).Ur[2] - nij[2] * dotProduct(nij, (*b0).Ur);

    Ur[0] = Ur_pre[0] + dt_crt * vijr[0];
    Ur[1] = Ur_pre[1] + dt_crt * vijr[1];
    Ur[2] = Ur_pre[2] + dt_crt * vijr[2];
//    Ur[0] = dt_crt * vijr[0];
//    Ur[1] = dt_crt * vijr[1];
//    Ur[2] = dt_crt * vijr[2];


    std::vector < double > fr (3, 0.0);
    std::vector < double > torque (3, 0.0);
    fr[0] = -1 * (*b0).kr * Ur[0] - (*b0).nur * vijr[0];
    fr[1] = -1 * (*b0).kr * Ur[1] - (*b0).nur * vijr[1];
    fr[2] = -1 * (*b0).kr * Ur[2] - (*b0).nur * vijr[2];
    torque = elementMulti(crossProduct(nij, fr), a_ij);



    Uo_pre[0] = (*b0).Uo[0] - nij[0] * dotProduct(nij, (*b0).Uo);
    Uo_pre[1] = (*b0).Uo[1] - nij[1] * dotProduct(nij, (*b0).Uo);
    Uo_pre[2] = (*b0).Uo[2] - nij[2] * dotProduct(nij, (*b0).Uo);

    Uo[0] = Uo_pre[0] + dt_crt * vijo[0];
    Uo[1] = Uo_pre[1] + dt_crt * vijo[1];
    Uo[2] = Uo_pre[2] + dt_crt * vijo[2];
//    Uo[0] = dt_crt * vijo[0];
//    Uo[1] = dt_crt * vijo[1];
//    Uo[2] = dt_crt * vijo[2];

    std::vector < double > fo (3, 0.0);
    std::vector < double > torsion (3, 0.0);
    fo[0] = -1 * (*b0).ko * Uo[0] - (*b0).nuo * vijo[0];
    fo[1] = -1 * (*b0).ko * Uo[1] - (*b0).nuo * vijo[1];
    fo[2] = -1 * (*b0).ko * Uo[2] - (*b0).nuo * vijo[2];
    torsion = elementMulti(fo, a_ij);
    (*b0).Ut = Ut;
    (*b0).Ur = Ur;
    (*b0).Uo = Uo;

    (*b_copy).fn = norm(fn);
    (*b_copy).fs = norm(fs);
    (*b_copy).moment = norm(torque);
    (*b_copy).torsion = norm(torsion);

#ifdef BOND_DAMAGE
    double rupture, damcrit;
    double b_soft = 1.;
    rupture = (norm(fs)/(*b0).y_s) * (norm(fs)/(*b0).y_s) + (fnabs/(*b0).y_n) + (norm(torque)/(*b0).y_r)*(norm(torque)/(*b0).y_r) + (norm(torsion)/(*b0).y_o)*(norm(torsion)/(*b0).y_o)  - (1. - b_soft*b0->dam ) ;

    damcrit = (norm(fs)/(*b0).y_s) * (norm(fs)/(*b0).y_s) + (norm(torque)/(*b0).y_r)*(norm(torque)/(*b0).y_r) +
              (norm(torsion)/(*b0).y_o)*(norm(torsion)/(*b0).y_o) +
              (fnabs/(*b0).y_n) - (b0->ydam/b0->y_n)*(1.-b_soft * b0->dam);

#else
    double rupture;
    rupture = (norm(fs)/(*b0).y_s) * (norm(fs)/(*b0).y_s) + (fnabs/(*b0).y_n) + (norm(torque)/(*b0).y_r)*(norm(torque)/(*b0).y_r) + (norm(torsion)/(*b0).y_o)*(norm(torsion)/(*b0).y_o) - 1. ;
//    rupture = (norm(fs)/(*b0).y_s) * (norm(fs)/(*b0).y_s) + (fnabs/(*b0).y_n)  - 1. ;

#endif
#ifdef BOND_DAMAGE
    if(damcrit > 0.)
    {
        double inv_eta = 1./b0->eta;
        double dam = damcrit*dt_crt*inv_eta;
        b0->dam += dam;
    }
#endif
    if(rupture >= 0){
        (*b_copy).isActive = false;
        double fnRatio = (fnabs/(*b0).y_n);
        double fsRatio = (norm(fs)/(*b0).y_s) * (norm(fs)/(*b0).y_s) ;
        double frratio = (norm(torque)/(*b0).y_r)*(norm(torque)/(*b0).y_r) ;
        double foRatio = (norm(torsion)/(*b0).y_o)*(norm(torsion)/(*b0).y_o);
        brokenBondtxt(fnRatio,fsRatio, frratio, foRatio, b0);


#pragma omp atomic
        NUMBROKENBONDS ++;
#pragma omp atomic
        NUMBONDS --;

        if((*b0).isNeck == 1){
#pragma omp atomic
            NECKBONDS --;
        }
        if((*b0).isNeckWall == 1){
#pragma omp atomic
            NECK_WALL_BONDS --;
        }

        b0->isActive = false;
        fn = {0.,0.,0.};
        fs = {0.,0.,0.};
        torque = {0.,0.,0.};
        torsion = {0.,0.,0.};
        b0->bondForce = 0.;
        bonds.erase(make_pair(g[i].id,g[j].id));
        dryParticles_force( i, j,  step, dt);
#pragma omp atomic
        g[i].bondNumber --;
#pragma omp atomic
        g[j].bondNumber --;
        return;
    }
    b0->fn = fn;
    b0->fs = fs;
    b0->torque = torque;
    b0->torsion = torsion;
    b0->bondForce = fn[1] + fs[1];
    b0->rupture = rupture;

#pragma omp atomic
    g[i].ax += fn[0] + fs[0];
#pragma omp atomic
    g[i].ay += fn[1] + fs[1];
#pragma omp atomic
    g[i].az += fn[2] + fs[2];
#pragma omp atomic
    g[j].ax += -1 * (fn[0] + fs[0]);
#pragma omp atomic
    g[j].ay += -1 * (fn[1] + fs[1]);
#pragma omp atomic
    g[j].az += -1 * (fn[2] + fs[2]);



    std::vector < double > crossthi (3, 0.0);
    std::vector < double > FFF (3, 0.0);
    crossthi = crossProduct(nij, fs);
    FFF[0] = -1 * (g[i].radius - 0.5 * abs(dn)) * crossthi[0];
    FFF[1] = -1 * (g[i].radius - 0.5 * abs(dn)) * crossthi[1];
    FFF[2] = -1 * (g[i].radius - 0.5 * abs(dn)) * crossthi[2];

#pragma omp atomic
    g[i].athx += FFF[0] + torque[0] + torsion[0] ;
#pragma omp atomic
    g[i].athy += FFF[1] + torque[1] + torsion[1] ;
#pragma omp atomic
    g[i].athz += FFF[2] + torque[2]  + torsion[2] ;
#pragma omp atomic
    g[j].athx += (g[j].radius - 0.5 * abs(dn)) / (g[i].radius - 0.5 * abs(dn)) * FFF[0] - torque[0] - torsion[0];
#pragma omp atomic
    g[j].athy += (g[j].radius - 0.5 * abs(dn)) / (g[i].radius - 0.5 * abs(dn)) * FFF[1] - torque[1]- torsion[1];
#pragma omp atomic
    g[j].athz += (g[j].radius - 0.5 * abs(dn)) / (g[i].radius - 0.5 * abs(dn)) * FFF[2] - torque[2]- torsion[2];
#pragma omp atomic
    g[i].coordination ++;
#pragma omp atomic
    g[j].coordination ++;

}



#endif //MULTI_OBJECTIVE_CALIBRATION_PROTOTYPES_H
