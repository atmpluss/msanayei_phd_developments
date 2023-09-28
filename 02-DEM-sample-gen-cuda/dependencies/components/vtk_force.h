//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_VTK_FORCE_H
#define MULTI_OBJECTIVE_CALIBRATION_VTK_FORCE_H
void output_forces(int);

//forces vtk from vincent code
void output_forces(int numfile){
    int i,j,k;
    int num_particles = bonds.size() * 2 ;
    //int max_number_forces = ng*6;
    //double force_fn[max_number_forces];
    //int force_i[num_particles];
    //int force_j[num_particles];
    std::vector<int> force_i;
    std::vector<int> force_j;
    //int nblk=0; // number of forces
    char fname[25]; // file name

    sprintf(fname,"VTK/forces%04d.vtk",numfile);

    ofstream fof(fname, ios::out);
    if (fof)
    {
        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            for(int counter = 0; counter<g.size(); counter++){
                if(g[counter].id == it->first.first){
                    force_i.push_back(counter);
                    break;
                }
            }

            for(int counter = 0; counter<g.size(); counter++){
                if(g[counter].id == it->first.second){
                    force_j.push_back(counter);
                    break;
                }
            }
        }
        //for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
        //   fog << g[it->second.graini_id].x <<" "<< g[it->second.graini_id].y <<" "<< g[it->second.graini_id].z << endl;
        // fog << g[it->second.grainj_id].x <<" "<< g[it->second.grainj_id].y <<" "<< g[it->second.grainj_id].z << endl;
        //}
        fof.precision(5); fof << scientific;
        fof << "# vtk DataFile Version 3.0" << endl;
        fof << "My forces" << endl;
        fof << "ASCII" << endl;
        fof << "DATASET POLYDATA" << endl;
        fof << "POINTS " << 2*bonds.size() << " float" << endl;
        for(int i = 0; i<bonds.size();i++){
            fof<<g[force_i[i]].x<< " " <<g[force_i[i]].y<< " "<<g[force_i[i]].z<<endl;
            fof<<g[force_j[i]].x<< " " <<g[force_j[i]].y<< " "<<g[force_j[i]].z<<endl;
        }
        fof << "LINES " << bonds.size() << " " << 3*bonds.size() << endl;
        for(k=0;k<bonds.size();k++)
        {
            fof << "2 " << 2*k << " " << 2*k+1 << endl;
        }
        fof << "POINT_DATA " << 2*bonds.size() << endl;
        fof << "SCALARS  Normal-Force float" << endl;
        fof << "LOOKUP_TABLE default" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            auto force = it->second.fn ;
            fof << norm(force)<< endl;
            fof << norm(force)<< endl;
        }

        fof << "SCALARS  Tangential-Force float" << endl;
        fof << "LOOKUP_TABLE default" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            auto force = it->second.fs ;
            fof << norm(force)<< endl;
            fof << norm(force)<< endl;
        }

        fof << "SCALARS  Torque float" << endl;
        fof << "LOOKUP_TABLE default" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            auto force = it->second.torque ;
            fof << norm(force)<< endl;
            fof << norm(force)<< endl;
        }

        fof << "SCALARS  Torsion float" << endl;
        fof << "LOOKUP_TABLE default" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            auto force = it->second.torsion ;
            fof << norm(force)<< endl;
            fof << norm(force)<< endl;
        }
    }


}



#endif //MULTI_OBJECTIVE_CALIBRATION_VTK_FORCE_H
