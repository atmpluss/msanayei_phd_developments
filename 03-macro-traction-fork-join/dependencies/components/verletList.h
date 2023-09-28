//
// Created by msanayei on 3/23/2022.
//

#ifndef MULTI_OBJECTIVE_CALIBRATION_VERLETLIST_H
#define MULTI_OBJECTIVE_CALIBRATION_VERLETLIST_H
void verletList (std::vector<int>& head, std::vector<int>& list, double mesh_resol, int mesh_x, int mesh_y, int mesh_z, int step);


void verletList (std::vector<int>& head, std::vector<int>& list, double mesh_resol, int mesh_x, int mesh_y, int mesh_z, int step)
{
#pragma omp parallel for
    for (int i=0 ; i<g.size();i++)
    {
        int ix = floor((g[i].x - x_min)/mesh_resol);
        int iy = floor((g[i].y - y_min)/mesh_resol);
        int iz = floor((g[i].z - z_min)/mesh_resol);
        for (int z=-1; z<2; z++)
        {
            for (int y=-1; y<2;y++)
            {
                for (int x=-1; x<2;x++)
                {
                    int ix_neighbour = ix + x;
                    int iy_neighbour = iy + y;
                    int iz_neighbour = iz + z;
                    if(ix_neighbour<0 || iy_neighbour<0 || iz_neighbour<0) continue;
                    int ncell_neighbour = ix_neighbour + (iy_neighbour*mesh_x) + (mesh_x*mesh_y*iz_neighbour);
                    if(ncell_neighbour>= mesh_x*mesh_y*mesh_z) continue;
                    int j = head[ncell_neighbour];

                    while(j>-1 && j>i)
                    {
#ifdef COHESION
                        if(bonds.find(make_pair(g[i].id,g[j].id))==bonds.end())
                        {
                            dryParticles_force( i, j,  step, dt);

                        }else
                        {
                            bonded_grains_interaction(i,j,step);
                        }
                        j = list[j];


#else
                        dryParticles_force( i, j,  step, dt);
                        j = list[j];
#endif

                    }
                }

            }

        }

    }// end of for
}
#endif //MULTI_OBJECTIVE_CALIBRATION_VERLETLIST_H
