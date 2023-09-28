//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_TXT_SPRINGFORCE_H
#define MULTI_OBJECTIVE_CALIBRATION_TXT_SPRINGFORCE_H
void write_springForces_txt(double dt, int run_index);

void write_springForces_txt(double dt, int run_index)
{
    std::ofstream file_;
    string name = "SpringForce/SpringForce"+std::to_string(run_index) +".txt";
    file_.open(name,std::ios_base::app);
    file_<<dt<<" "<<wall.fup<<" "<<-1 * (wall.feup)<<" "<<wall.aup<<" "<<wall.vup<<" "<<spring.delta<<" "<<wall.pos<<" "<<0.5*wall.mass*wall.vup*wall.vup<<" "<<NUMBROKENBONDS<<'\n'<<std::endl;

    std::ofstream foo;
    string name_ = "SpringForce/BrokenBonds"+std::to_string(run_index) +".txt";
    foo.open(name_,std::ios_base::app);
    foo<<NUMBONDS<<" "<<NECKBONDS<<" "<<NECK_WALL_BONDS<<'\n'<<std::endl;


}

#endif //MULTI_OBJECTIVE_CALIBRATION_TXT_SPRINGFORCE_H
