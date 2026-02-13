\ Model sp_3_8
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa4415f961933896d
Minimize
  49.98 y[0,1] + 62.77 y[0,2] + 49.98 y[1,0] + 16.55 y[1,2] + 62.77 y[2,0]
   + 16.55 y[2,1] + 4.998 r[0,1] + 6.277 r[0,2] + 4.998 r[1,0]
   + 1.655 r[1,2] + 6.277 r[2,0] + 1.655 r[2,1]
Subject To
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] + y[2,1] = 0
 flow_cons_source: y[0,1] + y[0,2] - y[1,0] - y[2,0] = 1
 flow_cons_target: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 1
 primal_lower: - 8.24 y[0,1] - 3.8 y[0,2] - 4.26 y[1,0] - 6.61 y[1,2]
   - 6.29 y[2,0] - 16.61 y[2,1] + 88 u[0,1] + 86 u[0,2] + 100 u[1,0]
   + 35 u[1,2] + 74 u[2,0] + 76 u[2,1] <= 100
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[1,0] y[1,2] y[2,0] y[2,1] u[0,1] u[0,2] u[1,0] u[1,2]
 u[2,0] u[2,1] r[0,1] r[0,2] r[1,0] r[1,2] r[2,0] r[2,1]
End
