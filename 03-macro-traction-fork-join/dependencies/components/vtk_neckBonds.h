//
// Created by msanayei on 11/9/2022.
//

#ifndef TRACTION_NEWFS_1E6_ADDCOORDINATION_NECKBONDS_VTK_H
#define TRACTION_NEWFS_1E6_ADDCOORDINATION_NECKBONDS_VTK_H


//void vtk_neckBonds(int);
//void vtk_neckBonds_actual(int);
void vtk_neckBonds_remove(int);



void vtk_neckBonds(int numfile){
    int i,j,k;
    int num_particles = bonds.size() * 2 ;
    std::vector<int> force_i;
    std::vector<int> force_j;
    char fname[25]; // file name
    int neckSize = 0;

    sprintf(fname,"VTK/neck%04d.vtk",numfile);

    ofstream fof(fname, ios::out);
    if (fof)
    {
//        cout<< "size: "<<bonds_copy.size()<<endl;
        for (auto  it = bonds_copy.begin(); it!=bonds_copy.end();it++){

            if(it->second.isNeck == 1){
                neckSize ++;
                for(int counter = 0; counter<g.size(); counter++){

                    if(g[counter].id == it->first.first){
                        force_i.push_back(counter);
                        break;
                    }


                }
                for(int counter = 0; counter<g.size(); counter++){

                    if((g[counter].id == it->first.second)){
                        force_j.push_back(counter);
                        break;
                    }
                }

            }


        }

        fof.precision(5); fof << scientific;
        fof << "# vtk DataFile Version 3.0" << endl;
        fof << "My forces" << endl;
        fof << "ASCII" << endl;
        fof << "DATASET POLYDATA" << endl;
        fof << "POINTS " << 2*neckSize << " float" << endl;
        for(int i = 0; i<neckSize;i++){
                fof<<g[force_i[i]].x<< " " <<g[force_i[i]].y<< " "<<g[force_i[i]].z<<endl;
                fof<<g[force_j[i]].x<< " " <<g[force_j[i]].y<< " "<<g[force_j[i]].z<<endl;


        }
        fof << "LINES " << neckSize << " " << 3*neckSize << endl;
        for(k=0;k<neckSize;k++)
        {
            fof << "2 " << 2*k << " " << 2*k+1 << endl;
        }
        fof << "POINT_DATA " << 2 * neckSize << endl;
        fof << "SCALARS Force float" << endl;
        fof << "LOOKUP_TABLE default" << endl;



        for (std::map<std::pair<int,int>, bond_copy>::iterator it= bonds_copy.begin();it!=bonds_copy.end();it++){
            if(it->second.isNeck == 1 && it->second.isActive == true){
                fof << 0 << endl;
                fof << 0 << endl;
            }else if(it->second.isNeck == 1 && it->second.isActive == false){
                fof << 1 << endl;
                fof << 1 << endl;
            }




        }


    }
}

void vtk_neckBonds_remove(int numfile){
        int i,j,k;
        std::vector<int> force_i;
        std::vector<int> force_j;
        char fname[25]; // file name
        int neckSize = 0;

        sprintf(fname,"VTK/neck%04d.vtk",numfile);

        ofstream fof(fname, ios::out);
        if (fof)
        {
//            cout<< "size: "<<bonds_copy.size()<<endl;
            for (auto  it = bonds_copy.begin(); it!=bonds_copy.end();it++){

                if(it->second.isNeck == 1 && it->second.isActive == true){
                    neckSize ++;
                    for(int counter = 0; counter<g.size(); counter++){

                        if(g[counter].id == it->first.first){
                            force_i.push_back(counter);
                            break;
                        }


                    }
                    for(int counter = 0; counter<g.size(); counter++){

                        if((g[counter].id == it->first.second)){
                            force_j.push_back(counter);
                            break;
                        }
                    }

                }


            }

            fof.precision(5); fof << scientific;
            fof << "# vtk DataFile Version 3.0" << endl;
            fof << "My forces" << endl;
            fof << "ASCII" << endl;
            fof << "DATASET POLYDATA" << endl;
            fof << "POINTS " << 2*neckSize << " float" << endl;
            for(int i = 0; i<neckSize;i++){
                fof<<g[force_i[i]].x<< " " <<g[force_i[i]].y<< " "<<g[force_i[i]].z<<endl;
                fof<<g[force_j[i]].x<< " " <<g[force_j[i]].y<< " "<<g[force_j[i]].z<<endl;


            }
            fof << "LINES " << neckSize << " " << 3*neckSize << endl;
            for(k=0;k<neckSize;k++)
            {
                fof << "2 " << 2*k << " " << 2*k+1 << endl;
            }
            fof << "POINT_DATA " << 2 * neckSize << endl;

            fof << "SCALARS Normal-Force float" << endl;
            fof << "LOOKUP_TABLE default" << endl;
            for (std::map<std::pair<int,int>, bond_copy>::iterator it= bonds_copy.begin();it!=bonds_copy.end();it++){
                if(it->second.isNeck == 1 && it->second.isActive == true){
                    fof << it->second.fn << endl;
                    fof << it->second.fn << endl;
                }
            }

            fof << "SCALARS Tangential-Force float" << endl;
            fof << "LOOKUP_TABLE default" << endl;
            for (std::map<std::pair<int,int>, bond_copy>::iterator it= bonds_copy.begin();it!=bonds_copy.end();it++){
                if(it->second.isNeck == 1 && it->second.isActive == true){
                    fof << it->second.fs << endl;
                    fof << it->second.fs << endl;
                }
            }

            fof << "SCALARS Moment float" << endl;
            fof << "LOOKUP_TABLE default" << endl;
            for (std::map<std::pair<int,int>, bond_copy>::iterator it= bonds_copy.begin();it!=bonds_copy.end();it++){
                if(it->second.isNeck == 1 && it->second.isActive == true){
                    fof << it->second.moment << endl;
                    fof << it->second.moment << endl;
                }
            }

            fof << "SCALARS Torsion float" << endl;
            fof << "LOOKUP_TABLE default" << endl;
            for (std::map<std::pair<int,int>, bond_copy>::iterator it= bonds_copy.begin();it!=bonds_copy.end();it++){
                if(it->second.isNeck == 1 && it->second.isActive == true){
                    fof << it->second.torsion << endl;
                    fof << it->second.torsion << endl;
                }
            }




        }


}



#endif //TRACTION_NEWFS_1E6_ADDCOORDINATION_NECKBONDS_VTK_H
