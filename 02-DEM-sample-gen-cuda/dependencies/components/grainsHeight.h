//
// Created by msanayei on 7/12/2022.
//

#ifndef TRACTION_GRAINSHEIGHT_H
#define TRACTION_GRAINSHEIGHT_H
double grains_height();

double grains_height(){
    double maxHeight = g[0].y;

    for (auto particle : g){
        if(particle.y > maxHeight){
            maxHeight = particle.y;
        }
    }

    return maxHeight;

//    std::ofstream file_;
//    file_.open("MaxHeight.txt",std::ios_base::app);
//    file_<<maxHeight<<'\n'<<std::endl;
}

#endif //TRACTION_GRAINSHEIGHT_H
