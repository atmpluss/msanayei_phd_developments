//
// Created by msanayei on 11/16/2022.
//

#ifndef TRACTION_NEWFS_1E6_ADDCOORDINATION_DAMAGEMODEL_VTK_PLAIN_H
#define TRACTION_NEWFS_1E6_ADDCOORDINATION_DAMAGEMODEL_VTK_PLAIN_H

void output_plain(int);
void output_plain(int numfile)
{
    int num = 0;
    for(auto &grain : g){
        if(grain.plain == 1) num++;
    }
    int i;
    char fname[25]; // file name
    sprintf(fname,"VTK/plain%04d.vtk",numfile);


    ofstream fog(fname, ios::out);
    if (fog)
    {
//        std::vector<double> g_v = {g[i].vx,g[i].vy,g[i].vz};
        fog.precision(5); fog << scientific;
        fog << "# vtk DataFile Version 3.0" << endl;
        fog << "Particle data" << endl;
        fog << "ASCII" << endl;
        fog << "DATASET POLYDATA" << endl;

        fog << "POINTS " << num << " float" << endl;
//        for(i=0;i<g.size();i++) fog << g[i].x <<" "<< g[i].y <<" "<< g[i].z << endl;
        for(auto &grain : g){
            if(grain.plain == 1){
                fog << grain.x <<" "<< grain.y <<" "<< grain.z << endl;

            }
        }
        fog << "POINT_DATA " << num << endl;
        fog << "SCALARS radius float" << endl;
        fog << "LOOKUP_TABLE default" << endl;
//        for(i=0;i<g.size();i++) fog << g[i].radius << endl;
        for(auto &grain : g){

            if(grain.plain == 1){
                fog << grain.radius << endl;
            }

        }
        fog << "SCALARS coordination float" << endl;
        fog << "LOOKUP_TABLE default" << endl;
//        for(i=0;i<g.size();i++){
//            std::vector<double> g_v = {g[i].vx,g[i].vy,g[i].vz};
//            fog <<norm(g_v)<< endl;
//        }
//
        for(auto &grain:g){
            if(grain.plain == 1){
//                std::vector<double> g_v = {grain.vx,grain.vy,grain.vz};
//                fog <<norm(g_v)<< endl;
                fog <<grain.bondNumber<< endl;
            }
        }




    }
}


#endif //TRACTION_NEWFS_1E6_ADDCOORDINATION_DAMAGEMODEL_VTK_PLAIN_H
