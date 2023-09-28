//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_VTK_GRAIN_H
#define MULTI_OBJECTIVE_CALIBRATION_VTK_GRAIN_H
void output_grains(int);
void output_grains(int numfile)
{
    int i;
    char fname[25]; // file name
    sprintf(fname,"VTK/grains%04d.vtk",numfile);


    ofstream fog(fname, ios::out);
    if (fog)
    {
//        std::vector<double> g_v = {g[i].vx,g[i].vy,g[i].vz};
        fog.precision(5); fog << scientific;
        fog << "# vtk DataFile Version 3.0" << endl;
        fog << "Particle data" << endl;
        fog << "ASCII" << endl;
        fog << "DATASET POLYDATA" << endl;

        fog << "POINTS " << g.size() << " float" << endl;
        for(i=0;i<g.size();i++) fog << g[i].x <<" "<< g[i].y <<" "<< g[i].z << endl;
        fog << "POINT_DATA " << g.size() << endl;
        fog << "SCALARS radius float" << endl;
        fog << "LOOKUP_TABLE default" << endl;
        for(i=0;i<g.size();i++) fog << g[i].radius << endl;
        fog << "SCALARS velocity float" << endl;
        fog << "LOOKUP_TABLE default" << endl;
        for(i=0;i<g.size();i++){
            std::vector<double> g_v = {g[i].vx,g[i].vy,g[i].vz};
            fog <<norm(g_v)<< endl;
        }




    }
}

#endif //MULTI_OBJECTIVE_CALIBRATION_VTK_GRAIN_H
