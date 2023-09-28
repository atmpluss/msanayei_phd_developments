//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_FORCE_UPPERCONE_H
#define MULTI_OBJECTIVE_CALIBRATION_FORCE_UPPERCONE_H
void sphereUpperCone_force(int);

void sphereUpperCone_force(int i)
{



//    double m_eff = g[i].mass;
//    double kn = 2 * params.E * g[i].radius/2;
//    double damp = -1 * log(params.en)/sqrt(log(params.en) * log(params.en) + M_PI* M_PI);
//    double dampN = 2 * sqrt(kn * m_eff) * damp;
//    double ks = params.ks_to_kn * kn;
//    double dampS = params.nus_to_nun * dampN;

    double kn = 2. * params.E * g[i].radius/2 ;
    double m_eff = g[i].mass ;
    double damp = -1 * log(params.en)/sqrt(log(params.en) * log(params.en) + M_PI* M_PI);
    double nun = 2. * sqrt(kn * m_eff) * damp * 4;
    double ks = params.ks_to_kn  * kn ;
    double nus = params.nus_to_nun * nun ;

    double gap = 0.;
    int id = -1;

    std::vector<double> nij(3, 0.);
    std::vector<double> AP(3,0.);
    std::vector<double> coneVr(3,0.);
    std::vector<double> VP(3,0.);
    std::vector<double> VrP(3,0.);
    double gamma, gammar, AB_len, VE_len, SF;

    AP[0] = g[i].x - cowall[1].top[0];
    AP[1] = g[i].y - cowall[1].top[1];
    AP[2] = g[i].z - cowall[1].top[2];

    double temp = cowall[1].top[1] - cowall[0].bot[1];

    SF = -1 * dotProduct(AP, cowall[1].axis) / (temp);

    if( (-1 * g[i].radius * cos(cowall[1].alpha)/(temp))<=SF && SF<=0.5)
    {
        // upper wall
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
                id = 1;
                std::vector<double> coneE(3,0.);
                coneE = addVectors(cowall[1].coneV, elementMulti(cowall[1].axis, VE_len) );
                nij[0] = coneE[0] - g[i].x;
                nij[1] = coneE[1] - g[i].y;
                nij[2] = coneE[2] - g[i].z;
                if(norm(nij) != 0.){nij = normalize(nij);}

            }
        }
    }if(id != -1)
    {
        wallKernel(i,  gap, kn, nun,  ks,  nus ,nij);
    }



}
#endif //MULTI_OBJECTIVE_CALIBRATION_FORCE_UPPERCONE_H
