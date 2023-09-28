//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_IDENTIFYCOHBOND_H
#define MULTI_OBJECTIVE_CALIBRATION_IDENTIFYCOHBOND_H
void identify_coh_bonds(bond_properties);

void identify_coh_bonds(bond_properties bond_pro){


    double xij, yij, zij, cij, dn;
    srand(time(NULL));

    for(int i=0; i<g.size(); i++){
        for(int j = i+1; j<g.size(); j++){
            xij = g[i].x - g[j].x;
            yij = g[i].y - g[j].y;
            zij = g[i].z - g[j].z;
            cij = sqrt(xij*xij + yij*yij + zij*zij);
            dn = cij - (g[i].radius + g[j].radius);
            if(dn<0)
            {

                double kn, ks,kr,ko,nun,nus,nur,nuo,m_eff,damp;
                std::vector<double> Ut(3,0.);
                std::vector<double> Ur(3,0.);
                std::vector<double> Uo(3,0.);
                std::vector<double> fn(3,0.);
                std::vector<double> fs(3,0.);
                std::vector<double> torque(3,0.);
                std::vector<double> torsion(3,0.);
                bond b0;
                bond_copy b_copy;
                g[i].bondNumber ++;
                g[j].bondNumber ++;


//                double MIN = 0.2;
//                double MAX = 0.5;

//                double random = MIN + (double)(rand()) / ((double)(RAND_MAX/(MAX - MIN)));
                double random = 0.42;
                b0.b_c = random;
                b0.y_n = -1 * random;
                b0.y_s = 0.6 * random;
                b0.y_r = 0.379 * 0.004 * random;
                b0.y_o = 0.306 * 0.004 * random;
                //b0.y_r = 0.1 * random;
                //.y_o = 0.1* random;


                kn = 2. * params.E * (g[i].radius * g[j].radius)/(g[i].radius + g[j].radius);
                m_eff = g[i].mass * g[j].mass/(g[i].mass + g[j].mass);
                damp = -1 * log(params.en)/sqrt(log(params.en) * log(params.en) + M_PI* M_PI);
//                nun = 0.;
                nun = 2. * sqrt(kn * m_eff) * damp;

                kn = bond_pro.kn_kn * kn;
                ks = bond_pro.ks_kn * kn;
                kr = bond_pro.kr_kn * kn;
                ko = bond_pro.ko_kn * kn;

                nus = bond_pro.nus_nun * nun;
                nur = bond_pro.nur_nun * nun;
                nuo = bond_pro.nuo_nun * nun;

                b0.graini_id = g[i].id;
                b0.grainj_id = g[j].id;
                b0.isActive = true;
                b0.dn_init = dn;
                b0.dn = 0.;
                b0.Ut = Ut;
                b0.Ur = Ur;
                b0.Uo = Uo;
                b0.fn = fn;
                b0.fs = fs;
                b0.torque = torque;
                b0.torsion = torsion;
                b0.rupture = -1;
                b0.kn = kn;
                b0.ks = ks;
                b0.kr = kr;
                b0.ko = ko;
                b0.nun = nun;
                b0.nus = nus;
                b0.nur = nur;
                b0.nuo = nuo;
                b0.bondForce = 0.;

                b_copy.graini_id = g[i].id;
                b_copy.grainj_id = g[j].id;
                b_copy.isActive = true;
                b_copy.fn = 0.;
                b_copy.fs = 0.;
                b_copy.moment = 0.;
                b_copy.torsion = 0.;



                if((g[j].y + yij/2.)<top[1] * (1 + NECKSIZE) && (g[j].y + yij/2.)>top[1] * (1 - NECKSIZE) )
                {
                    b0.isNeck = 1;
                    b_copy.isNeck = 1;
                    NECKBONDS += 1 ;
                    if(g[i].flag != "None" || g[j].flag != "None"){
                        b0.isNeckWall = 1;
                        NECK_WALL_BONDS++;
                    }else{
                        b0.isNeckWall = 0;
                    }
                }
                else{
                    b0.isNeck = 0;
                    b_copy.isNeck = 0;
                }


#ifdef BOND_DAMAGE
                b0.ydam = -0.1;
                b0.eta = 1.e-2;
                b0.dam = 0.0;
#endif
                bonds[make_pair(g[i].id, g[j].id)] = b0;
                bonds_copy[make_pair(g[i].id, g[j].id)] = b_copy;


            }

        }

    }
}

#endif //MULTI_OBJECTIVE_CALIBRATION_IDENTIFYCOHBOND_H
