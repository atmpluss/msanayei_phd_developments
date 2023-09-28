//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_CREATEWALLS_H
#define MULTI_OBJECTIVE_CALIBRATION_CREATEWALLS_H
void set_walls();

void set_walls(){
    cone c0;
    for (int i=0; i< 2;i++)
    {
        cowall.push_back(c0);
    }
    //lower cone
    cowall[0].id = 0;
    cowall[0].r_bot = r_big;
    cowall[0].r_top = r_small;
    cowall[0].top = top;
    cowall[0].bot = bot;
    cowall[0].height = top[1];
    cowall[0].axis= {0, -1, 0};

    double y =  cowall[0].height * (r_small / r_big) / (1 - (r_small / r_big));
    std::vector<double> cone_v (3, 0.);
    cone_v[0] = top[0] - cowall[0].axis[0] * y;
    cone_v[1] = top[1] - cowall[0].axis[1] * y;
    cone_v[2] = top[2] - cowall[0].axis[2] * y;

    cowall[0].coneV = cone_v;
    cowall[0].alpha = atan2(cowall[0].height, r_big - r_small);
    cowall[0].theta = M_PI - 2 * cowall[0].alpha;

    //upper cone
    cowall[1].id = 1;
    cowall[1].r_bot = r_small;
    cowall[1].r_top = r_big;
    cowall[1].top ={2 * top[0] ,2 * top[1],2 * top[2]};
    cowall[1].bot = top;
    cowall[1].height = top[1];
    cowall[1].axis= {0,1,0};

    std::vector<double> cone_v2 (3, 0.);
    cone_v2[0] = top[0] - cowall[1].axis[0] * y;
    cone_v2[1] = top[1] - cowall[1].axis[1] * y;
    cone_v2[2] = top[2] - cowall[1].axis[2] * y;

    cowall[1].coneV = cone_v2;
    cowall[1].alpha = atan2(cowall[1].height, r_big - r_small);
    cowall[1].theta = M_PI - 2 * cowall[1].alpha;

}

#endif //MULTI_OBJECTIVE_CALIBRATION_CREATEWALLS_H
