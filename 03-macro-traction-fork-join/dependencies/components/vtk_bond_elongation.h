//
// Created by msanayei on 9/1/2022.
//

#ifndef SMALL_CONE_EXPERIMENTALDATA_VTK_BOND_ELONGATION_H
#define SMALL_CONE_EXPERIMENTALDATA_VTK_BOND_ELONGATION_H


void output_elongation(int);

//forces vtk from vincent code
void output_elongation(int numfile){
    int i,j,k;
    int num_particles = bonds.size() * 2 ;

    std::vector<int> elongation_i;
    std::vector<int> elongation_j;
    char fname[25]; // file name

    sprintf(fname,"VTK/elongation%04d.vtk",numfile);

    ofstream fof(fname, ios::out);
    if (fof)
    {
        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            for(int counter = 0; counter<g.size(); counter++){
                if(g[counter].id == it->first.first){
                    elongation_i.push_back(counter);
                    break;
                }
            }

            for(int counter = 0; counter<g.size(); counter++){
                if(g[counter].id == it->first.second){
                    elongation_j.push_back(counter);
                    break;
                }
            }
        }

        fof.precision(5); fof << scientific;
        fof << "# vtk DataFile Version 3.0" << endl;
        fof << "My BondElongation" << endl;
        fof << "ASCII" << endl;
        fof << "DATASET POLYDATA" << endl;
        fof << "POINTS " << 2*bonds.size() << " float" << endl;
        for(int i = 0; i<bonds.size();i++){
            fof<<g[elongation_i[i]].x<< " " <<g[elongation_i[i]].y<< " "<<g[elongation_i[i]].z<<endl;
            fof<<g[elongation_j[i]].x<< " " <<g[elongation_j[i]].y<< " "<<g[elongation_j[i]].z<<endl;
        }
        fof << "LINES " << bonds.size() << " " << 3*bonds.size() << endl;
        for(k=0;k<bonds.size();k++)
        {
            fof << "2 " << 2*k << " " << 2*k+1 << endl;
        }
        fof << "POINT_DATA " << 2*bonds.size() << endl;
        fof << "SCALARS Elongation float" << endl;
        fof << "LOOKUP_TABLE default" << endl;

        for (std::map<std::pair<int,int>, bond>::iterator it= bonds.begin();it!=bonds.end();it++){
            fof << it->second.dn<< endl;
            fof << it->second.dn<< endl;
        }
    }


}



#endif //SMALL_CONE_EXPERIMENTALDATA_VTK_BOND_ELONGATION_H
