#include <iostream>
#include <fstream>
#include <math.h>
#include <vector>
#include <map>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include<time.h>
#include<assert.h>
#include <cstring>
#include <algorithm>


#define COHESION
//#define BOND_DAMAGE
#define CONFINEMENT

#include "dependencies/headers/grains.h"
#include"dependencies/headers/bonds.h"
#include "dependencies/headers/copy_bonds.h"
#include "dependencies/headers/DEM_Parameters.h"
#include"dependencies/headers/cone_cylinder.h"
#include"dependencies/headers/oldContactHistory.h"
#include "dependencies/headers/inlineFunctions.h"
#include"dependencies/headers/SpringWall.h"
#include"dependencies/headers/overloads.h"



//#define debugSample
using namespace std;


///global variables
/// for the linked cell algorithm
double x_min, x_max, y_min, y_max, z_min, z_max;
/// number og bonds around the neck and total number of bonds
int NUMBONDS = 0 ;
int NECKBONDS = 0;
int NECK_WALL_BONDS = 0;
int NUMBROKENBONDS = 0;
int damageModel;
double NECKSIZE = 0.1;
double GLOBALDAMP = 0.6;

///importing components
#include"dependencies/components/dryKernel.h"
#include"dependencies/components/bondedKernel.h"
#include"dependencies/components/identifyCohBond.h"
#include"dependencies/components/importSample.h"
#include"dependencies/components/sortingParticles.h"
#include"dependencies/components/verletList.h"
#include"dependencies/components/preForce.h"
#include"dependencies/components/postForce.h"
#include"dependencies/components/createWalls.h"
#include"dependencies/components/vtk_grain.h"
#include"dependencies/components/vtk_force.h"
#include"dependencies/components/vtk_bond_elongation.h"
#include"dependencies/components/vtk_cohesion.h"
#include"dependencies/components/txt_grains.h"
#include"dependencies/components/flag_particles.h"
#include"dependencies/components/wallKernel.h"
#include"dependencies/components/force_uppercone.h"
#include"dependencies/components/force_lowercone.h"
#include"dependencies/components/position_uppercone.h"
#include"dependencies/components/pre_cone_update.h"
#include"dependencies/components/post_cone_update.h"
#include"dependencies/components/txt_springforce.h"
#include "dependencies/components/grainsHeight.h"
#include "dependencies/components/coordination_txt.h"
#include "dependencies/components/vtk_neckBonds.h"
//#include "dependencies/components/damageRecorder.h"
#include "dependencies/components/vtk_plain.h"




//main
int main(int argc, char *argv[])
{

    //#1:b_c  2:y_s  3:y_r  4:kn_kn  5:ks_kn  6:kr_kn
    int index, max_step, max_setTime,vtkInterval, updateCell,terminalTimeStepInterval, SpringRecord,dmodel;
    double b_c_factor, y_s_factor, y_r_factor, y_o_factor, kn_factor, ks_factor, kr_factor, ko_factor, nun_factor, nus_factor, nur_factor, nuo_factor,neckSize, globdamp;

    std::cout<< "beginning of main function..."<<std::endl;
    //std::cin>>index>> max_step>>max_setTime>>vtkInterval>>updateCell>>terminalTimeStepInterval>>SpringRecord>>b_c_factor>>y_s_factor>>y_r_factor>>y_o_factor>>kn_factor>>ks_factor
    //>>kr_factor>>ko_factor>>nun_factor>>nus_factor>>nur_factor>>nuo_factor>>neckSize>>dmodel>>globdamp;

    index = 400;
    max_step = 10000000;
    max_setTime = 0;
    vtkInterval = 500;
    updateCell = 100;
    terminalTimeStepInterval = 1000;
    SpringRecord = 250;
    b_c_factor = 0.41;
    y_s_factor = 0.63;
    y_r_factor = b_c_factor * 0.39 * 0.004;
    y_o_factor = b_c_factor * 0.31 * 0.004;
    kn_factor = 0.5;
    ks_factor = 0.5;
    kr_factor = 0.1;
    ko_factor = 0.1;
    nun_factor = 1.0;
    nus_factor = 0.5;
    nur_factor = 0.1;
    nuo_factor = 0.1;
    neckSize = 0.02;
    dmodel = 0;
    globdamp = 0.6;


    int run_index = index ;
    damageModel = dmodel;
    NECKSIZE = neckSize;
    //GLOBALDAMP = globdamp,

//    if(damageModel == 0){
//#undef BOND_DAMAGE
//    }


    ///gravity
    params.gx = 0;
    params.gy = -9.81;
    params.gz = 0;

    params.en = 0.2;
    params.E = 1e6;
    params.mu = 0.002;
    params.mur = 0.002;
    params.muo = 0.002;
    ///stiffness factors (frictional)
    params.ks_to_kn = 0.5;
    params.kr_to_kn = 0.1;
    params.ko_to_kn = 0.1;
    ///damping factors (frictional)
    params.nus_to_nun = 0.2;
    params.nur_to_nun = 0.1;
    params.nuo_to_nun = 0.1;
    params.edry = 0.9;  // it is not being used in frictional kernel anymore! it will be removed completely later
    params.collisionTime = 10.; // it is not being used in frictional kernel anymore! it will be removed completely later
    params.poissonRatio = 0.22;

    ///bond properties

    /// added to json
//    bond::b_c = b_c_factor;
//    bond::y_s = y_s_factor * bond::b_c;
//    bond::y_r = y_r_factor * bond::b_c;
//    bond::y_o = y_o_factor * bond::b_c;
    ///stiffness factors (bonded) // added to json
    bond_pro.kn_kn = kn_factor;
    bond_pro.ks_kn = ks_factor;
    bond_pro.kr_kn = kr_factor;
    bond_pro.ko_kn = ko_factor;
    ///damping factors (bonded) // added to json
    bond_pro.nun_nun = nun_factor;
    bond_pro.nus_nun = nus_factor;
    bond_pro.nur_nun = nur_factor;
    bond_pro.nuo_nun = nuo_factor;

    /// time step
    dt_crt = 1e-5;
    dt = dt_crt;

    /// importing particles locations
    set_sample();

    ///linked cell
    x_min = bot[0] - 2 * r_big;
    y_min = bot[1];
    z_min = bot[2] - 2 * r_big;

    x_max = top[0] + 2 * r_big;
    y_max = top[1] * 6;
    z_max = top[2] + 2 * r_big;

    double mesh_resol = 4. * rmax;
    int mesh_x = floor((x_max - x_min)/mesh_resol) + 1;
    int mesh_y = floor((y_max - y_min)/mesh_resol) + 1;
    int mesh_z = floor((z_max - z_min)/mesh_resol) + 1;

    std::vector < int > head (mesh_x*mesh_y*mesh_z, -1);
    std::vector < int > list (g.size(), -1);
    soringParticles( head, list,  mesh_resol,  mesh_x,  mesh_y,  mesh_z);
    set_walls();



    /// flagging particles in contact with upper cone to apply constant upward velocity to them during each time step

    int upFlag = 0;
    for (int i=0; i<g.size();i++)
    {
        flag_particles(i);
        if(g[i].flag == "u_w")
        {
            upFlag += 1;
        }
    }

    /// apply wall mass (0.252 is the mass of small cone, for the medium and large cone this number should be changed)

    for (auto &element : g)
    {

        if(element.flag == "u_w")
        {
            wall.mass += element.mass;
        }


    }

    wall.mass += 0.4975;


    /// cohesive bond detection
#ifdef COHESION
    std::cout<<"detecting cohesion bonds..."<<std::endl;
    identify_coh_bonds(bond_pro);
    NUMBONDS = bonds.size();
#endif




    ///1) add new for loop for particle settling for 2000 timesteps
    ///2) add a function for particles max height
    for(int t = 0; t< max_setTime; t++){
//        if( t % terminalTimeStepInterval == 0){
//            std::cout<< "settling particles, time step: "<< t<<std::endl;
//        }
        /// updating linked cell
        if(t % updateCell==0){
            std::fill(head.begin(), head.end(), -1);
            std::fill(list.begin(), list.end(), -1);
            soringParticles( head, list,  mesh_resol,  mesh_x,  mesh_y,  mesh_z);
        }// end of verlet list

        /// confining wall pre update
        preConeUpdate(dt);
        update_uppercone_position(dt);

        ///particles pre update
#pragma omp parallel for
        for (int i = 0; i<g.size(); i++)
        {
            preforce_grain(i, dt_crt);
        }

        ///sphere-sphere interactions
        verletList(head, list,  mesh_resol,  mesh_x,  mesh_y,  mesh_z,  t);

#pragma omp parallel for
        for (int i = 0; i<g.size(); i++)
        {
            sphereUpperCone_force(i);
        }

#pragma omp parallel for
        for (int i = 0; i<g.size(); i++)
        {
            sphereLowerCone_force(i);
        }

#pragma omp parallel for
///particles post update
        for (int i = 0; i<g.size(); i++)
        {
            postforce_grain(i, dt_crt);
        }

        /// confining wall post update
        // updating spring pulling rate
        spring.delta = 0.;
        wall.fup = spring.StiffK * spring.delta;
        wall.aup = (wall.fup - abs(wall.feup) + wall.mass * params.gy -abs(wall.damp*wall.vup) )/wall.mass;
        wall.vup = 0.5 * dt * wall.aup + wall.vup;

        if(wall.vup < 0 && wall.pos <= 0)
        {
            wall.aup = 0.;
            wall.vup = 0.;
        }

    }



    ///finding max height of the grains
    double maxHeight = grains_height();
    double coneVolume = 0;
    if(maxHeight >= top[1]){
        double volume1 = 1/3 * M_PI * top[1] * (r_small*r_small + r_small*r_big + r_big*r_big);
        double t = r_small/r_big;
        double x = t/(1-t) * top[1];
        double r_ = r_small * (x+maxHeight-top[1])/(x);
        double volume2 = 1/3 * M_PI * (maxHeight-top[1]) * (r_small*r_small + r_small * r_ + r_ * r_);
        coneVolume =  top[1] * (r_small*r_small + r_small*r_big + r_big*r_big) *  M_PI/3 + (maxHeight-top[1]) * (r_small*r_small + r_small * r_ + r_ * r_) *M_PI/3 ;
        //coneVolume = volume2 ;
    }
    double sampleVolume = 0.;
    for(auto &item : g ){
        sampleVolume += 4/3 * M_PI * item.radius * item.radius * item.radius;
    }
    double V_void =  coneVolume - sampleVolume;
    std::ofstream file_;
    file_.open("volumeInfo.txt",std::ios_base::app);
    file_<<"cone volume: "<< coneVolume<<" sample volume:  "<<sampleVolume<<" V_ void: "<<V_void<<" void/cone: "<<V_void/coneVolume<<" weight: "<<wall.mass <<'\n'<<std::endl;

    for (auto &element : g)
    {


        if(element.y< top[1] * (1 + NECKSIZE) && element.y > top[1] * (1 - NECKSIZE)) {
            element.neckParticle = 1;
            element.conePosition = 0;
        }else{
            if(element.y >= top[1] * (1 + NECKSIZE) && element.y < 1.7 * top[1]){
                element.conePosition = 1;
            }
            else if(element.y > top[1] * 0.3 && element.y <= (1 - NECKSIZE) * top[1]){
                element.conePosition = -1;
            }
            element.neckParticle = -1;
        }
    }
    //write_coordination_txt(-100);

    for (auto &grain : g){

        if(grain.x < rmax * 1.5 && grain.x > -1 * rmax * 1.5){
            grain.plain = 1;
        }

    }


    /// starting the time steps of the simulation
    for (int step=0; step<max_step; step++)
    {

        /// for showing time step in terminal
        if( step % terminalTimeStepInterval == 0){
            std::cout<< "time step: "<< step<<std::endl;
        }

        /// if the displacement between upper and lower cone reach 1 cm the simulation will be stopped
        if(wall.pos >= 0.02)
            break;


        /// updating linked cell
        if(step % updateCell==0)
        {
            std::fill(head.begin(), head.end(), -1);
            std::fill(list.begin(), list.end(), -1);
            soringParticles( head, list,  mesh_resol,  mesh_x,  mesh_y,  mesh_z);
        }


        /// confining wall pre update
        preConeUpdate(dt);
        update_uppercone_position(dt);

#pragma omp parallel for
        ///particles pre update
        for (int i = 0; i < g.size(); i++)
        {
            preforce_grain(i, dt_crt);
        }

        ///sphere-sphere interactions
        verletList(head, list,  mesh_resol,  mesh_x,  mesh_y,  mesh_z,  step);
#pragma omp parallel for
        for (int i = 0; i<g.size(); i++)
        {
            sphereUpperCone_force(i);
        }
#pragma omp parallel for
        for (int i = 0; i<g.size(); i++)
        {
            sphereLowerCone_force(i);
        }

///particles post update
#pragma omp parallel for
        for (int i = 0; i<g.size(); i++)
        {
            postforce_grain(i, dt_crt);
        }

        /// confining wall post update
        postConeUpdate(dt);

        ///vtk
        if(step == 0) output_plain(step);
        if (step % vtkInterval == 0)
        {
            output_grains(step);
            output_forces(step);
//            output_elongation(step);
            vtk_neckBonds_remove(step);
        }

        /// writing spring forces to a txt file
        if(step%(SpringRecord * 2) == 0)
        {
            write_springForces_txt(step, run_index);
            write_coordination_txt(step);
        }
//        if(step%1000==0){
//            damageRecorder(step);
//        }


    }//end of for loop
    return 0;
}// end main


