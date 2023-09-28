//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_SORTINGPARTICLES_H
#define MULTI_OBJECTIVE_CALIBRATION_SORTINGPARTICLES_H
void soringParticles(std::vector<int>& head, std::vector<int>& list, double mesh_resol, int mesh_x, int mesh_y, int mesh_z);
void soringParticles(std::vector<int>& head, std::vector<int>& list, double mesh_resol, int mesh_x, int mesh_y, int mesh_z)
{

    for(int i=0; i<g.size();i++){
        int ix = floor((g[i].x - x_min)/mesh_resol);
        int iy = floor((g[i].y - y_min)/mesh_resol);
        int iz = floor((g[i].z - z_min)/mesh_resol);
        if(g[i].x > x_max || g[i].y > y_max || g[i].z > z_max || g[i].x < x_min || g[i].y < y_min || g[i].z < z_min )
        {
            continue;
        }
        int ncell = ix + (iy*mesh_x) + (mesh_x*mesh_y*iz);
        list[i] = head[ncell];
        head[ncell] = i;
    }


}
#endif //MULTI_OBJECTIVE_CALIBRATION_SORTINGPARTICLES_H
