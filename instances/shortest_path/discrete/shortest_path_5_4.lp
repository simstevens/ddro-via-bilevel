\ Model nohadani_5_4
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa1d49c5c4aa7c587
Minimize
  11.40175425099138 y[0,1] + 79.02531240052139 y[0,3]
   + 75.32595834106593 y[0,4] + 11.40175425099138 y[1,0]
   + 78.64477096412705 y[1,2] + 68.6804193347711 y[1,3]
   + 74.21590126111789 y[1,4] + 78.64477096412705 y[2,1]
   + 39.69886648255842 y[2,3] + 79.02531240052139 y[3,0]
   + 68.6804193347711 y[3,1] + 39.69886648255842 y[3,2]
   + 73.7360156233031 y[3,4] + 75.32595834106593 y[4,0]
   + 74.21590126111789 y[4,1] + 73.7360156233031 y[4,3] + x[0,1] + x[0,3]
   + x[0,4] + x[1,0] + x[1,2] + x[1,3] + x[1,4] + x[2,1] + x[2,3] + x[3,0]
   + x[3,1] + x[3,2] + x[3,4] + x[4,0] + x[4,1] + x[4,3]
   + 1.140175425099138 r[0,1] + 7.902531240052139 r[0,3]
   + 7.532595834106593 r[0,4] + 1.140175425099138 r[1,0]
   + 7.864477096412705 r[1,2] + 6.868041933477111 r[1,3]
   + 7.42159012611179 r[1,4] + 7.864477096412705 r[2,1]
   + 3.969886648255842 r[2,3] + 7.902531240052139 r[3,0]
   + 6.868041933477111 r[3,1] + 3.969886648255842 r[3,2]
   + 7.373601562330311 r[3,4] + 7.532595834106593 r[4,0]
   + 7.42159012611179 r[4,1] + 7.373601562330311 r[4,3]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,3] - y[0,4] + y[1,0] + y[3,0]
   + y[4,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,4]
   + y[2,1] + y[3,1] + y[4,1] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] + y[4,3] = 0
 flow_cons_source: - y[1,2] + y[2,1] + y[2,3] - y[3,2] = 1
 flow_cons_target: y[0,4] + y[1,4] + y[3,4] - y[4,0] - y[4,1] - y[4,3] = 1
 primal_lower: 1.26010959030617 x[0,1] + 0.3284342435385078 x[0,3]
   + 1.695994464317112 x[0,4] + 4.062342484687661 x[1,0]
   + 3.892461228233537 x[1,2] + 3.775454664807888 x[1,3]
   + 6.04154867610114 x[1,4] + 1.377437682184524 x[2,1]
   + 1.337550938829974 x[2,3] + 5.173688945816021 x[3,0]
   + 4.19041260136407 x[3,1] + 3.779048001979447 x[3,2]
   + 1.805591773200924 x[3,4] + 5.22234974476119 x[4,0]
   + 3.246870965347391 x[4,1] + 0.8043385188922714 x[4,3] + 76 u[0,1]
   + 69 u[0,3] + 99 u[0,4] + 88 u[1,0] + 85 u[1,2] + 50 u[1,3] + 14 u[1,4]
   + 12 u[2,1] + 62 u[2,3] + 11 u[3,0] + 76 u[3,1] + 16 u[3,2] + 85 u[3,4]
   + 77 u[4,0] + 69 u[4,1] + 93 u[4,3] <= 99
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
Bounds
Binaries
 y[0,1] y[0,3] y[0,4] y[1,0] y[1,2] y[1,3] y[1,4] y[2,1] y[2,3] y[3,0]
 y[3,1] y[3,2] y[3,4] y[4,0] y[4,1] y[4,3] x[0,1] x[0,3] x[0,4] x[1,0]
 x[1,2] x[1,3] x[1,4] x[2,1] x[2,3] x[3,0] x[3,1] x[3,2] x[3,4] x[4,0]
 x[4,1] x[4,3] u[0,1] u[0,3] u[0,4] u[1,0] u[1,2] u[1,3] u[1,4] u[2,1]
 u[2,3] u[3,0] u[3,1] u[3,2] u[3,4] u[4,0] u[4,1] u[4,3] r[0,1] r[0,3]
 r[0,4] r[1,0] r[1,2] r[1,3] r[1,4] r[2,1] r[2,3] r[3,0] r[3,1] r[3,2]
 r[3,4] r[4,0] r[4,1] r[4,3]
End
