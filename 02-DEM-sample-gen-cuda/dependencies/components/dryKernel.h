//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_DRYKERNEL_H
#define MULTI_OBJECTIVE_CALIBRATION_DRYKERNEL_H
#include <iostream>
using namespace std;
void dryParticles_force(int, int, int, double);



void dryParticles_force(int i, int j, int step, double dt)
{

    double xij, yij, zij, cij, dn;
    xij = g[i].x - g[j].x;
    yij = g[i].y - g[j].y;
    zij = g[i].z - g[j].z;
    cij = sqrt(xij*xij + yij*yij + zij*zij);
    dn = cij - (g[i].radius + g[j].radius);

    if (dn < 0)
    {

        if(old_c.find(make_pair(g[i].id,g[j].id))==old_c.end())
        {
            oldContact oc_;
            oc_.Ut = {0.,0.,0.};
            oc_.Ur = {0.,0.,0.};
            oc_.Uo = {0.,0.,0.};
            oc_.impactVelocity = 0.;
            old_c[make_pair(g[i].id, g[j].id)] = oc_;
        }

        oldContact *oc0;
        oc0 = &old_c[make_pair(g[i].id, g[j].id)];


//        double m_eff = g[i].mass * g[j].mass/(g[i].mass + g[j].mass);
//        double kn = 2. * params.E * (g[i].radius * g[j].radius)/(g[i].radius + g[j].radius);
//        double damp = -1 * log(params.en)/sqrt(log(params.en) * log(params.en) + M_PI* M_PI);
//        double dampN = 2 * sqrt(kn * m_eff) * damp;
//        double ks = params.ks_to_kn * kn;
//        double dampS = params.nus_to_nun * dampN;


        double kn = 2. *  params.E * (g[i].radius * g[j].radius)/(g[i].radius + g[j].radius);
        double m_eff = g[i].mass * g[j].mass/(g[i].mass + g[j].mass);
        double damp = -1 * log(params.en)/sqrt(log(params.en) * log(params.en) + M_PI* M_PI);
        double nun = 2. * sqrt(kn * m_eff) * damp * 4;
        double ks = params.ks_to_kn  * kn ;
        double kr = params.kr_to_kn * kn ;
        double ko = params.ko_to_kn  * kn ;
        double nus = params.nus_to_nun * nun ;
        double nur = params.nur_to_nun * nun ;
        double nuo = params.nuo_to_nun * nun ;

        std::vector < double > relVelij (3, 0.0);
        relVelij[0] = g[i].vx - g[j].vx;
        relVelij[1] = g[i].vy - g[j].vy;
        relVelij[2] = g[i].vz - g[j].vz;








        std::vector < double > nij (3, 0.0);
        nij[0] = xij;
        nij[1] = yij;
        nij[2] = zij;
        if (norm(nij) != 0) {
            nij = normalize(nij);

        }

        std::vector < double > relVelN (3, 0.0);
        relVelN = elementMulti(nij, dotProduct(relVelij, nij));


        std::vector < double > fn(3,0.);
        fn[0] = nij[0]* kn * abs(dn) - relVelN[0]*nun;
        fn[1] = nij[1]* kn * abs(dn) - relVelN[1]*nun;
        fn[2] = nij[2]* kn * abs(dn) - relVelN[2]*nun;


        double a_ij = (g[i].radius * g[j].radius)/ (g[i].radius + g[j].radius);

        std::vector < double > vij (3, 0.0);
        std::vector < double > vijt (3, 0.0);
        std::vector < double > vthi (3, 0.0);
        std::vector < double > vthj (3, 0.0);
        std::vector < double > crossi (3, 0.0);
        std::vector < double > crossj (3, 0.0);
        double doti, dotj;


        crossi = crossProduct(nij, vthi);
        crossj = crossProduct(nij, vthj);
        doti = dotProduct(nij, vthi);
        dotj = dotProduct(nij, vthj);


        vthi[0] = g[i].vthx;
        vthi[1] = g[i].vthy;
        vthi[2] = g[i].vthz;

        vthj[0] = g[j].vthx;
        vthj[1] = g[j].vthy;
        vthj[2] = g[j].vthz;

//        vij[0] = relVelij[0] + (g[i].radius - 0.5 * abs(dn)) * crossi[0] + (g[j].radius - 0.5 * abs(dn)) * crossj[0] ;
//        vij[1] = relVelij[1] + (g[i].radius - 0.5 * abs(dn)) * crossi[1] + (g[j].radius - 0.5 * abs(dn)) * crossj[1] ;
//        vij[2] = relVelij[2] + (g[i].radius - 0.5 * abs(dn)) * crossi[2] + (g[j].radius - 0.5 * abs(dn)) * crossj[2] ;
        vij[0] = relVelij[0];
        vij[1] = relVelij[1];
        vij[2] = relVelij[2];

        vijt[0] = vij[0] - relVelN[0];
        vijt[1] = vij[1] - relVelN[1];
        vijt[2] = vij[2] - relVelN[2];






        double a_prime_ij = ((g[i].radius - 0.5 * abs(dn)) * (g[j].radius - 0.5 * abs(dn))) /((g[i].radius - 0.5 * abs(dn))  + (g[j].radius - 0.5 * abs(dn)) );
        std::vector < double > vijr (3, 0.0);
        vijr[0] = -1 * a_prime_ij * (crossi[0] - crossj[0]);
        vijr[1] = -1 * a_prime_ij * (crossi[1] - crossj[1]);
        vijr[2] = -1 * a_prime_ij * (crossi[2] - crossj[2]);

        std::vector < double > vijo (3, 0.0);
        std::vector < double > Ut_pre (3, 0.0);
        std::vector < double > Ur_pre (3, 0.0);
        std::vector < double > Uo_pre (3, 0.0);
        std::vector < double > Ut (3, 0.0);
        std::vector < double > Ur (3, 0.0);
        std::vector < double > Uo (3, 0.0);
        vijo[0] = a_ij * (doti - dotj) * nij[0];
        vijo[1] = a_ij * (doti - dotj) * nij[1];
        vijo[2] = a_ij * (doti - dotj) * nij[2];

        Ut_pre = oc0->Ut;
        Ur_pre = oc0->Ur;
        Uo_pre = oc0->Uo;





        Ut_pre[0] = Ut_pre[0] - nij[0] * dotProduct(nij, Ut_pre);
        Ut_pre[1] = Ut_pre[1] - nij[1] * dotProduct(nij, Ut_pre);
        Ut_pre[2] = Ut_pre[2] - nij[2] * dotProduct(nij, Ut_pre);

        Ut[0] = Ut_pre[0] + dt_crt * vijt[0];
        Ut[1] = Ut_pre[1] + dt_crt * vijt[1];
        Ut[2] = Ut_pre[2] + dt_crt * vijt[2];

        std::vector < double > fs (3, 0.0);
        fs[0] = -1 * ks * Ut[0] - nus * vijt[0];
        fs[1] = -1 * ks * Ut[1] - nus * vijt[1];
        fs[2] = -1 * ks * Ut[2] - nus * vijt[2];

        std::vector < double > tan(3, 0.0);
        tan[0]=fs[0];
        tan[1]=fs[1];
        tan[2]=fs[2];

        if (norm(tan)>0.0) {
            tan[0]/=norm(tan);
            tan[1]/=norm(tan);
            tan[2]/=norm(tan);
        }


        double maxFs = params.mu * norm(fn);
        if( norm(fs) > maxFs){
            fs[0] = maxFs*tan[0];
            fs[1] = maxFs*tan[1];
            fs[2] = maxFs*tan[2];

            Ut[0] = -1 / ks * (maxFs*tan[0]);
            Ut[1] = -1 / ks * (maxFs*tan[1]);
            Ut[2] = -1 / ks * (maxFs*tan[2]);
        }


        //rolling
        Ur_pre[0] = Ur_pre[0] - nij[0] * dotProduct(nij, Ur_pre);
        Ur_pre[1] = Ur_pre[1] - nij[1] * dotProduct(nij, Ur_pre);
        Ur_pre[2] = Ur_pre[2] - nij[2] * dotProduct(nij, Ur_pre);

        Ur[0] = Ur_pre[0] + dt_crt * vijr[0];
        Ur[1] = Ur_pre[1] + dt_crt * vijr[1];
        Ur[2] = Ur_pre[2] + dt_crt * vijr[2];

        std::vector < double > fr (3, 0.0);
        std::vector < double > torque (3, 0.0);

        fr[0] = -1 * kr * Ur[0] - nur * vijr[0];
        fr[1] = -1 * kr * Ur[1] - nur * vijr[1];
        fr[2] = -1 * kr * Ur[2] - nur * vijr[2];

        std::vector < double > roll_(3, 0.0);
        roll_[0]=fr[0];
        roll_[1]=fr[1];
        roll_[2]=fr[2];

        if (norm(roll_)>0.0) {
            roll_[0]/=norm(roll_);
            roll_[1]/=norm(roll_);
            roll_[2]/=norm(roll_);
        }

        double maxFr = params.mur * norm(fn);
        if( norm(fr) > maxFr){
            fr[0] = maxFr * roll_[0];
            fr[1] = maxFr * roll_[1];
            fr[2] = maxFr * roll_[2];

            Ur[0] = -1 / kr * (maxFr * roll_[0]);
            Ur[1] = -1 / kr * (maxFr * roll_[1]);
            Ur[2] = -1 / kr * (maxFr * roll_[2]);
        }
        torque = elementMulti(crossProduct(nij, fr), a_ij);


        //Torsion
        Uo_pre[0] = Uo_pre[0] - nij[0] * dotProduct(nij, Uo_pre);
        Uo_pre[1] = Uo_pre[1] - nij[1] * dotProduct(nij, Uo_pre);
        Uo_pre[2] = Uo_pre[2] - nij[2] * dotProduct(nij, Uo_pre);

        Uo[0] = Uo_pre[0] + dt_crt * vijo[0];
        Uo[1] = Uo_pre[1] + dt_crt * vijo[1];
        Uo[2] = Uo_pre[2] + dt_crt * vijo[2];

        std::vector < double > fo (3, 0.0);
        std::vector < double > torsion (3, 0.0);
        fo[0] = -1 * ko * Uo[0] - nuo * vijo[0];
        fo[1] = -1 * ko * Uo[1] - nuo * vijo[1];
        fo[2] = -1 * ko * Uo[2] - nuo * vijo[2];

        std::vector < double > tor_(3, 0.0);
        tor_[0]=fr[0];
        tor_[1]=fr[1];
        tor_[2]=fr[2];

        if (norm(tor_)>0.0) {
            tor_[0]/=norm(tor_);
            tor_[1]/=norm(tor_);
            tor_[2]/=norm(tor_);
        }

        double maxFo = params.muo * norm(fn);
        if( norm(fo) > maxFo){
            fo[0] = maxFo * fo[0] / norm(fo);
            fo[1] = maxFo * fo[1] / norm(fo);
            fo[2] = maxFo * fo[2] / norm(fo);

            Uo[0] = -1 / ko * (maxFo * tor_[0]);
            Uo[1] = -1 / ko * (maxFo * tor_[1]);
            Uo[2] = -1 / ko * (maxFo * tor_[2]);
        }
        torsion = elementMulti(fo, a_ij);




        oc0->Ut = Ut;
        oc0->Ur = Ur;
        oc0->Uo = Uo;

#pragma omp atomic
        g[i].ax += fn[0] + fs[0];
#pragma omp atomic
        g[i].ay += fn[1] + fs[1];
#pragma omp atomic
        g[i].az += fn[2] + fs[2];

#pragma omp atomic
        g[j].ax += -1 * (fn[0] + fs[0]);
#pragma omp atomic
        g[j].ay += -1 * (fn[1] + fs[1]);
#pragma omp atomic
        g[j].az += -1 * (fn[2] + fs[2]);

        std::vector < double > crossthi (3, 0.0);
        std::vector < double > FFF (3, 0.0);
        crossthi = crossProduct(nij, fs);
        FFF[0] = -1 * (g[i].radius - 0.5 * abs(dn)) * crossthi[0];
        FFF[1] = -1 * (g[i].radius - 0.5 * abs(dn)) * crossthi[1];
        FFF[2] = -1 * (g[i].radius - 0.5 * abs(dn)) * crossthi[2];

#pragma omp atomic
        g[i].athx += FFF[0] ;
#pragma omp atomic
        g[i].athy += FFF[1] ;
#pragma omp atomic
        g[i].athz += FFF[2] ;
#pragma omp atomic
        g[j].athx += (g[j].radius - 0.5 * abs(dn)) / (g[i].radius - 0.5 * abs(dn)) * FFF[0] ;
#pragma omp atomic
        g[j].athy += (g[j].radius - 0.5 * abs(dn)) / (g[i].radius - 0.5 * abs(dn)) * FFF[1] ;
#pragma omp atomic
        g[j].athz += (g[j].radius - 0.5 * abs(dn)) / (g[i].radius - 0.5 * abs(dn)) * FFF[2] ;
#pragma omp atomic
        g[i].coordination ++;
#pragma omp atomic
        g[j].coordination ++;





    }
    else
    {
        if(old_c.find(make_pair(g[i].id,g[j].id))==old_c.end())
        {
            return;
        }
        else
        {
            old_c.erase(make_pair(g[i].id, g[j].id));
        }
    }


}

#endif //MULTI_OBJECTIVE_CALIBRATION_DRYKERNEL_H
