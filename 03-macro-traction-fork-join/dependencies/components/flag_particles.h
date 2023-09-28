//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_FLAG_PARTICLES_H
#define MULTI_OBJECTIVE_CALIBRATION_FLAG_PARTICLES_H
void flag_particles(int);

void flag_particles(int i){
    double gap = 0., gap_e1 = 0., gap_e2 = 0.;
    std::vector<double> AP(3,0.);
    std::vector<double> coneVr(3,0.);
    std::vector<double> VP(3,0.);
    std::vector<double> VrP(3,0.);
    double gamma, gammar, AB_len, VE_len;
    double SF;
    AP[0] = g[i].x - cowall[1].top[0];
    AP[1] = g[i].y - cowall[1].top[1];
    AP[2] = g[i].z - cowall[1].top[2];
    SF = -1 * dotProduct(AP, cowall[1].axis) / (cowall[0].height + cowall[1].height);
    if( (-1 * g[i].radius * cos(cowall[1].alpha)/(cowall[0].height + cowall[1].height))<=SF && SF<=0.5)
    {
        // upper wall
        upperParticles ++;
        double coeff = g[i].radius/sin(cowall[1].theta/2);
        coneVr = addVectors(cowall[1].coneV, elementMulti(cowall[1].axis,coeff));
        VP[0] = g[i].x - cowall[1].coneV[0];
        VP[1] = g[i].y - cowall[1].coneV[1];
        VP[2] = g[i].z - cowall[1].coneV[2];
        VrP[0] = g[i].x - coneVr[0];
        VrP[1] = g[i].y - coneVr[1];
        VrP[2] = g[i].z - coneVr[2];
        gamma = acos(dotProduct(VP, cowall[1].axis)/norm(VP));
        gammar = acos(dotProduct(VrP, cowall[1].axis)/norm(VrP));
        if(gammar > cowall[1].theta / 2. && gamma < cowall[1].theta / 2. )
        {
            VE_len = norm(VP) * sin(M_PI/2 - (cowall[1].theta/2. - gamma)) / sin(M_PI/2. - cowall[1].theta/2.);
            AB_len = norm(VP) * sin(cowall[1].theta/2 - gamma);
            gap = AB_len - g[i].radius;
            if(gap < 0.)
            {
                g[i].flag = "u_w";

            }

        }
    }

    else if( 0.5 <SF && SF <= (1 - g[i].radius /(cowall[0].height + cowall[1].height)))
    {
        // lower wall
        double coeff = g[i].radius/sin(cowall[0].theta/2);
        coneVr = addVectors(cowall[0].coneV, elementMulti(cowall[0].axis,coeff));
        VP[0] = g[i].x - cowall[0].coneV[0];
        VP[1] = g[i].y - cowall[0].coneV[1];
        VP[2] = g[i].z - cowall[0].coneV[2];
        VrP[0] = g[i].x - coneVr[0];
        VrP[1] = g[i].y - coneVr[1];
        VrP[2] = g[i].z - coneVr[2];
        gamma = acos(dotProduct(VP, cowall[0].axis)/norm(VP));
        gammar = acos(dotProduct(VrP, cowall[0].axis)/norm(VrP));
        if((gammar > cowall[0].theta/2.) && (gamma < cowall[0].theta/2.) )
        {
            VE_len = norm(VP) * sin(M_PI/2 - (cowall[0].theta/2. - gamma)) / sin(M_PI/2. - cowall[0].theta/2.);
            AB_len = norm(VP) * sin(cowall[0].theta/2 - gamma);
            gap = AB_len - g[i].radius;
            if(gap < 0.)
            {
                g[i].flag = "d_w";
            }
        }
    }

    else if( (1 - g[i].radius/(cowall[0].height + cowall[1].height) )< SF && SF<= 1)
    {
        double coeff = g[i].radius/sin(cowall[0].theta/2);
        coneVr = addVectors(cowall[0].coneV, elementMulti(cowall[0].axis,coeff));
        VP[0] = g[i].x - cowall[0].coneV[0];
        VP[1] = g[i].y - cowall[0].coneV[1];
        VP[2] = g[i].z - cowall[0].coneV[2];
        VrP[0] = g[i].x - coneVr[0];
        VrP[1] = g[i].y - coneVr[1];
        VrP[2] = g[i].z - coneVr[2];

        gamma = acos(dotProduct(VP, cowall[0].axis)/norm(VP));
        gammar = acos(dotProduct(VrP, cowall[0].axis)/norm(VrP));

        if(gammar <cowall[0].theta/2.){
            // lower plane
            double h_ = norm(subVectors(cowall[0].coneV, cowall[0].bot));
            gap = h_ - dotProduct(VP, cowall[0].axis) - g[i].radius;
            if(gap < 0.){
                g[i].flag = "d_p";
            }
        }
        else if(gammar > cowall[0].theta/2. && gamma < cowall[0].theta/2.){
            //low edge
            //1-checking plane:
            double h_ = norm(subVectors(cowall[0].coneV, cowall[0].bot));
            gap_e1 = h_ - dotProduct(VP, cowall[0].axis) - g[i].radius;
            //checking wall
            VE_len = norm(VP) * sin(M_PI/2 - (cowall[0].theta/2. - gamma)) / sin(M_PI/2. - cowall[0].theta/2.);
            AB_len = norm(VP) * sin(cowall[0].theta/2 - gamma);
            gap_e2 = AB_len - g[i].radius;
            if(gap_e1 < 0. && gap_e2 < 0. ){
                g[i].flag = "d_e";

            }

        }

    }
}
#endif //MULTI_OBJECTIVE_CALIBRATION_FLAG_PARTICLES_H
