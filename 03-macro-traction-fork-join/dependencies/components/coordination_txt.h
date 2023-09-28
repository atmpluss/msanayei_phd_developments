//
// Created by msanayei on 11/4/2022.
//

#ifndef TRACTION_NEWFS_1E6_ADDCOORDINATION_COORDINATION_TXT_H
#define TRACTION_NEWFS_1E6_ADDCOORDINATION_COORDINATION_TXT_H

void write_coordination_txt(int numfile);
void write_coordination_txt(int numfile)
{
    char fname[25]; // file name
    sprintf(fname,"Coordination/crd%04d.txt",numfile);
    ofstream foo(fname, ios::out);
    if(foo){
        for(auto grain : g){

            foo <<grain.flag<<" "<<grain.y<<" "<<grain.bondNumber<<" "<<grain.coordination<<" "<<grain.neckParticle << " "<<NUMBONDS<<" "<<NECKBONDS<<" "<<NECK_WALL_BONDS<<" "<<grain.conePosition<< endl;
        }
    }

    char ffname[25]; // file name
    sprintf(ffname,"Coordination/GrainForces%04d.txt",numfile);
    ofstream foobar(ffname, ios::out);
    if(foobar){
        for(auto grain : g){
            foobar <<grain.flag<<" "<<grain.x<<" "<<grain.y<<" "<<grain.z<<" "<<grain.bondNumber<<" "<<grain.coordination<<" "<<grain.neckParticle << " "<<" "<<grain.conePosition<<" "<<grain.radius<<" "<<grain.mass<<" "<<grain.ax<<" "<<grain.ay<<" "<<grain.az<<endl;
        }
    }



}

#endif //TRACTION_NEWFS_1E6_ADDCOORDINATION_COORDINATION_TXT_H
