//
// Created by msanayei on 11/10/2022.
//

#ifndef TRACTION_NEWFS_1E6_ADDCOORDINATION_DAMAGEMODEL_DAMAGERECORDER_H
#define TRACTION_NEWFS_1E6_ADDCOORDINATION_DAMAGEMODEL_DAMAGERECORDER_H

void damageRecorder(int numfile);
void damageRecorder(int numfile){
    char fname[25];
    sprintf(fname,"Damage/damage%04d.txt",numfile);
    ofstream foo(fname, ios::out);
    if(foo){
        for(auto  it = bonds.begin(); it!=bonds.end();it++){
            foo <<it->second.isNeck<<" "<<it->second.dam<<" "<<it->second.rupture<< endl;
        }
}

}
#endif //TRACTION_NEWFS_1E6_ADDCOORDINATION_DAMAGEMODEL_DAMAGERECORDER_H
