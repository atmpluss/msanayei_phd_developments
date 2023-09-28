//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_FORCE_LOWERCONE_H
#define MULTI_OBJECTIVE_CALIBRATION_FORCE_LOWERCONE_H

void sphereLowerCone_force(int);

void sphereLowerCone_force(int i){

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




    double gap = 0., gap_e1 = 0., gap_e2 = 0.;
    int id = -1;

    std::vector<double> nij(3, 0.);
    std::vector<double> nij_e1(3, 0.);
    std::vector<double> nij_e2(3, 0.);
    std::vector<double> AP(3,0.);
    std::vector<double> coneVr(3,0.);
    std::vector<double> VP(3,0.);
    std::vector<double> VrP(3,0.);
    double gamma, gammar, AB_len, VE_len, SF;

    AP[0] = g[i].x - 2 * top[0];
    AP[1] = g[i].y - 2 * top[1];
    AP[2] = g[i].z - 2 * top[2];

    SF = -1 * dotProduct(AP, cowall[1].axis) / (cowall[0].height * 2);

    if( 0.5 <SF && SF <= (1 - g[i].radius /(cowall[0].height * 2)))
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
                id = 3;
                std::vector<double> coneE(3,0.);
                coneE = addVectors(cowall[0].coneV, elementMulti(cowall[0].axis, VE_len) );
                nij[0] = coneE[0] - g[i].x;
                nij[1] = coneE[1] - g[i].y;
                nij[2] = coneE[2] - g[i].z;
                if(norm(nij) != 0.){nij = normalize(nij);}
            }

        }
    }else if( (1 - g[i].radius/(cowall[0].height * 2) )< SF && SF<= 1)
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


        if(gammar <cowall[0].theta/2.)
        {
            // lower plane
            double h_ = norm(subVectors(cowall[0].coneV, cowall[0].bot));
            gap = h_ - dotProduct(VP, cowall[0].axis) - g[i].radius;
            if(gap < 0.)
            {
                id = 4;
                nij = elementMulti(cowall[0].axis, -1.);
            }
        }else if(gammar > cowall[0].theta/2. && gamma < cowall[0].theta/2.)
        {
            //low edge
            //1-checking plane:
            double h_ = norm(subVectors(cowall[0].coneV, cowall[0].bot));
            gap_e1 = h_ - dotProduct(VP, cowall[0].axis) - g[i].radius;
            //checking wall
            VE_len = norm(VP) * sin(M_PI/2 - (cowall[0].theta/2. - gamma)) / sin(M_PI/2. - cowall[0].theta/2.);
            AB_len = norm(VP) * sin(cowall[0].theta/2 - gamma);
            gap_e2 = AB_len - g[i].radius;
            if(gap_e1 < 0. && gap_e2 < 0. ){
                id = 5;
                nij_e1 = elementMulti(cowall[0].axis, -1.);
                std::vector<double> coneE(3,0.);
                coneE = addVectors(cowall[0].coneV, elementMulti(cowall[0].axis, VE_len) );
                nij_e2[0] = coneE[0] - g[i].x;
                nij_e2[1] = coneE[1] - g[i].y;
                nij_e2[2] = coneE[2] - g[i].z;
                if(norm(nij_e2) != 0.){nij_e2 = normalize(nij_e2);}
            }
        }
    }
    if(id == 3 || id == 4)
    {
        wallKernel( i,  gap,  kn,  nun,  ks,  nus,nij);
        return;
    }
    if(id == 5)
    {
        wallKernel( i,  gap_e1,  kn,  nun,  ks,  nus,nij_e1);
        wallKernel( i,  gap_e2,  kn,  nun,  ks,  nus,nij_e2);
        return;
    }
}
#endif //MULTI_OBJECTIVE_CALIBRATION_FORCE_LOWERCONE_H
