//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_WALLKERNEL_H
#define MULTI_OBJECTIVE_CALIBRATION_WALLKERNEL_H
void wallKernel(int i, double gap, double kn, double dampN, double ks, double dampS,std::vector<double>& nij);
void wallKernel_lower(int i, double gap, double kn, double dampN, double ks, double dampS,std::vector<double>& nij);


void wallKernel(int i, double gap, double kn, double nun, double ks, double nus,std::vector<double>& nij)
{



    std::vector < double > relVelij (3, 0.0);
    relVelij[0] = g[i].vx ;
    relVelij[1] = g[i].vy ;
    relVelij[2] = g[i].vz ;


    double vijn;
    vijn = dotProduct(relVelij, nij);
    //vijn[0] = relVelij[0] * nij[0] + relVelij[1] * nij[1] + relVelij[2] * nij[2];

    double fnabs = kn * abs(gap) - nun * vijn;
    if (fnabs < 0.){ fnabs = 0.;}

    std::vector < double > fn (3, 0.0);
    fn[0] = fnabs * nij[0];
    fn[1] = fnabs * nij[1];
    fn[2] = fnabs * nij[2];

    std::vector < double > vij (3, 0.0);
    std::vector < double > vijt (3, 0.0);

    vij[0] = relVelij[0] ;
    vij[1] = relVelij[1] ;
    vij[2] = relVelij[2] ;


    vijt[0] = vij[0] - nij[0] * vijn;
    vijt[1] = vij[1] - nij[1] * vijn;
    vijt[2] = vij[2] - nij[2] * vijn;


    std::vector < double > Ut (3, 0.0);


    Ut[0] = dt_crt * vijt[0];
    Ut[1] = dt_crt * vijt[1];
    Ut[2] = dt_crt * vijt[2];

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

#pragma omp atomic
    g[i].ax += fn[0] + fs[0];
#pragma omp atomic
    g[i].ay += fn[1] + fs[1];
#pragma omp atomic
    g[i].az += fn[2] + fs[2];

    std::vector<double> fff (3, 0.);
    fff = crossProduct(nij, fs);
    std::vector<double> ath_ = elementMulti(fff, g[i].radius + gap/2.);

#pragma omp atomic
    g[i].athx += ath_[0] ;
#pragma omp atomic
    g[i].athy += ath_[1] ;
#pragma omp atomic
    g[i].athz += ath_[2];


    //########################


}


void wallKernel_lower(int i, double gap, double kn, double dampN, double ks, double dampS,std::vector<double>& nij)
{

    std::vector < double > contactPoint (3,0.);
    contactPoint[0] = -1 * (g[i].radius ) * nij[0] + g[i].x;
    contactPoint[1] = -1 * (g[i].radius ) * nij[1] + g[i].y;
    contactPoint[2] = -1 * (g[i].radius ) * nij[2] + g[i].z;

    std::vector < double > rci (3,0.);
    rci[0] = contactPoint[0] - g[i].x;
    rci[1] = contactPoint[1] - g[i].y;
    rci[2] = contactPoint[2] - g[i].z;

    std::vector < double > anVeli (3,0.);
    anVeli[0] = g[i].vthx;anVeli[1] = g[i].vthy;anVeli[2] = g[i].vthz;

    std::vector < double > vi (3,0.);
    vi[0] = g[i].vx;vi[1] = g[i].vy;vi[2] = g[i].vz;

    std::vector < double > Ui (3,0.);
    std::vector < double > crossi (3,0.);
    crossi = crossProduct(rci, anVeli);
    Ui = vi + crossi;

    std::vector < double > relVelij (3, 0.0);
    relVelij = Ui;

    std::vector < double > relVelN (3, 0.0);std::vector < double > relVelT (3, 0.0);
    relVelN = elementMulti(nij, dotProduct(relVelij, nij));
    relVelT = relVelij - relVelN ;

    std::vector < double > fn(3,0.);
    fn[0] = nij[0]* kn * abs(gap)/1 - relVelN[0]*dampN;
    fn[1] = nij[1]* kn * abs(gap)/1 - relVelN[1]*dampN;
    fn[2] = nij[2]* kn * abs(gap)/1 - relVelN[2]*dampN;

    std::vector < double > tangentialDisplacement(3,0.);std::vector < double > rotatedTangentialDisplacement(3,0.);std::vector < double > newtangentialDisplacement(3,0.);
    rotatedTangentialDisplacement[0] = tangentialDisplacement[0] - nij[0]* dotProduct(nij, tangentialDisplacement);
    rotatedTangentialDisplacement[1] = tangentialDisplacement[1] - nij[1]* dotProduct(nij, tangentialDisplacement);
    rotatedTangentialDisplacement[2] = tangentialDisplacement[2] - nij[2]* dotProduct(nij, tangentialDisplacement);
    if(norm(rotatedTangentialDisplacement) > 0.)
    {
        newtangentialDisplacement = elementMulti(rotatedTangentialDisplacement, (norm(tangentialDisplacement) / norm(rotatedTangentialDisplacement)));
    }
    newtangentialDisplacement[0] =  dt*relVelT[0];
    newtangentialDisplacement[1] =  dt*relVelT[1];
    newtangentialDisplacement[2] =  dt*relVelT[2];

    std::vector < double > fTLS(3,0.);
    fTLS[0] = -1 * ks * newtangentialDisplacement[0] -  dampS * relVelT[0];
    fTLS[1] = -1 * ks * newtangentialDisplacement[1] -  dampS * relVelT[1];
    fTLS[2] = -1 * ks * newtangentialDisplacement[2] -  dampS * relVelT[2];

    std::vector < double > t(3,0.);

    t = normalize(fTLS);
    double fFrictionAbsDynamic = params.mu * norm(fn);
    double fFrictionAbs;
    if(norm(fTLS) < fFrictionAbsDynamic)
        fFrictionAbs = fFrictionAbsDynamic;
    else
    {
        fFrictionAbs = fFrictionAbsDynamic;
        newtangentialDisplacement[0] = (fFrictionAbs * t[0] - dampS * relVelT[0]) / ks;
        newtangentialDisplacement[1] = (fFrictionAbs * t[1] - dampS * relVelT[1]) / ks;
        newtangentialDisplacement[2] = (fFrictionAbs * t[2] - dampS * relVelT[2]) / ks;
    }

    double fTabs = std::min(norm(fTLS), fFrictionAbs);
    std::vector < double > fT(3,0.);
    fT[0] = fTabs*t[0];fT[1] = fTabs*t[1];fT[2] = fTabs*t[2];


#pragma omp atomic
    g[i].ax += fn[0] + fT[0];
#pragma omp atomic
    g[i].ay += fn[1] + fT[1];
#pragma omp atomic
    g[i].az += fn[2] + fT[2];


    std::vector < double > crossthi (3, 0.0);
    std::vector < double > FFFi (3, 0.0);
    crossthi = crossProduct(rci, fT);
    FFFi = elementMulti(crossthi, -1.);
#pragma omp atomic
    g[i].athx += FFFi[0] ;
#pragma omp atomic
    g[i].athy += FFFi[1] ;
#pragma omp atomic
    g[i].athz += FFFi[2] ;



}

#endif //MULTI_OBJECTIVE_CALIBRATION_WALLKERNEL_H
