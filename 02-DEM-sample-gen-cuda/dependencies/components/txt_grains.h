//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_TXT_GRAINS_H
#define MULTI_OBJECTIVE_CALIBRATION_TXT_GRAINS_H
void write_txt();
void write_txt()
{
    std::ofstream file_;
    file_.open("sample.txt");
    for(int i=0;i<g.size();i++){
        file_<<g[i].id<<" "<<g[i].x<<" "<<g[i].y<<" "<<g[i].z<<" "<<g[i].radius<<'\n'<<std::endl;
    }
    file_.close();

}
#endif //MULTI_OBJECTIVE_CALIBRATION_TXT_GRAINS_H
