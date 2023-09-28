//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_IMPORTSAMPLE_H
#define MULTI_OBJECTIVE_CALIBRATION_IMPORTSAMPLE_H

void set_debug_sample();
void set_sample();

void set_sample()
{
    ifstream file_("./sample/sample.txt");
    int id;
    double x_,y_,z_, r_;

    if(file_.is_open()){
        while(file_>>id>>x_>>y_>>z_>>r_){
            grains g0;
            g.push_back(g0);
            g[id].id = id;
            g[id].radius = r_;
            g[id].mass = 4. / 3. * M_PI *rhos*g[id].radius*g[id].radius*g[id].radius;
            g[id].inertia = 2. / 5.*g[id].mass*g[id].radius*g[id].radius;
            g[id].vx = 0. ;
            g[id].vy = 0. ;
            g[id].vz = 0. ;
            g[id].ax = 0. ;
            g[id].ay = 0. ;
            g[id].az = 0. ;
            g[id].x = x_ ;
            g[id].y = y_ ;
            g[id].z = z_ ;
            g[id].vthx = 0.;
            g[id].vthy = 0.;
            g[id].vthz = 0.;
            g[id].athx = 0. ;
            g[id].athy = 0. ;
            g[id].athz = 0. ;
        }

    }
    file_.close();
}


void set_debug_sample()
{
    int ng = 3;
    double R[ng];
    grains g0;

    // Allocate memory
    for(int i=0;i<ng;i++) {g.push_back(g0);}



    for(int i = 0 ; i < ng ; i++) {
        g[i].id = i;
        g[i].radius = 0.003;
        g[i].mass = (4. / 3.) * M_PI *rhos*g[i].radius*g[i].radius*g[i].radius;
        g[i].inertia = (2. / 5.) * g[i].mass * g[i].radius * g[i].radius;
        g[i].vx = 0.;
        g[i].vy = 0.;
        g[i].vz = 0.;
        g[i].ax = 0. ;
        g[i].ay = 0. ;
        g[i].az = 0. ;
        g[i].vthx = 0.;
        g[i].vthy = 0.;
        g[i].vthz = 0.;
        g[i].athx = 0. ;
        g[i].athy = 0. ;
        g[i].athz = 0. ;

    }

    g[0].x =-0.001;
    g[0].y = 0.1;
    g[0].z = 0.;

    g[1].x =0.00499;
    g[1].y = 0.1;
    g[1].z = 0.;

    g[2].x = 0.;
    g[2].y = 0.003;
    g[2].z = 0.;

}


#endif //MULTI_OBJECTIVE_CALIBRATION_IMPORTSAMPLE_H
