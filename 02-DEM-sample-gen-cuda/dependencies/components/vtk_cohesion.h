//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_VTK_COHESION_H
#define MULTI_OBJECTIVE_CALIBRATION_VTK_COHESION_H

void writeVtkCohBonds(int);

//bond vtk
void writeVtkCohBonds(int numfile){
    std::cout<<"in bond vtk!"<<std::endl;
    int i;
    char fname[25]; // file name
    sprintf(fname,"VTK/Bonds/bonds%04d.vtk",numfile);
    ofstream fog(fname, ios::out);

    //cout<<"here is number of detected bonds: "<<bonds.size()<<endl;
    //for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
    //cout<<it->first.first<<"=>"<<it->first.second<<"=>"<<it->second.dn_init<<endl;
    //}
    int ncgg = bonds.size();


    if (fog)
    {
        fog.precision(5); fog << scientific;
        fog << "# vtk DataFile Version 3.0" << endl;
        fog << "My forces" << endl;
        fog << "ASCII" << endl;
        fog << "DATASET POLYDATA" << endl;
        fog << "POINTS " << bonds.size() * 2 << " float" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            fog << g[it->second.graini_id].x <<" "<< g[it->second.graini_id].y <<" "<< g[it->second.graini_id].z << endl;
            fog << g[it->second.grainj_id].x <<" "<< g[it->second.grainj_id].y <<" "<< g[it->second.grainj_id].z << endl;
        }
        //fprintf(fog,"LINES %li %li\n",ncgg, 3*ncgg);
        fog<<"LINES "<<ncgg<<" "<<3*ncgg<<endl;
        for (int k=0; k<bonds.size();i++){
            //fprintf(fog,"2 %i %i\n",2*k, 2*k+1);
            fog<<"2 "<<2*k<<" "<<2*k+1<<endl;
        }

        fog << "POINT_DATA " << bonds.size() * 2 << endl;
        fog << "SCALARS Normal_force float" << endl;
        fog << "LOOKUP_TABLE default" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){

            fog << norm(it->second.fn)<< endl;
            fog << norm(it->second.fn)<< endl;

        }

        //fprintf(fog,"SCALARS Tangential_force float\n");
        //fprintf(fog,"LOOKUP_TABLE default\n");
        fog<<"SCALARS Tangential_force float"<<endl;
        fog<<"LOOKUP_TABLE default"<<endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){

            fog << norm(it->second.fs)<< endl;
            fog << norm(it->second.fs)<< endl;

        }

        //fprintf(fog,"SCALARS Torque float\n");
        //fprintf(fog,"LOOKUP_TABLE default\n");
        fog<<"SCALARS Torque float"<<endl;
        fog<<"LOOKUP_TABLE default"<<endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){

            fog << norm(it->second.torque)<< endl;
            fog << norm(it->second.torque)<< endl;

        }

        fog<<"SCALARS Torsion float"<<endl;
        fog<<"LOOKUP_TABLE default"<<endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){

            fog << norm(it->second.torsion)<< endl;
            fog << norm(it->second.torsion)<< endl;

        }
    }
}


#endif //MULTI_OBJECTIVE_CALIBRATION_VTK_COHESION_H
