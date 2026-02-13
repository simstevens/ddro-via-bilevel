\ Model sp_3_3
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa4415f961933896d
Minimize
  35 y[0,1] + 28.3 y[0,2] + 35 y[1,0] + 52.35 y[1,2] + 28.3 y[2,0]
   + 52.35 y[2,1] + 3.5 r[0,1] + 2.83 r[0,2] + 3.5 r[1,0] + 5.235 r[1,2]
   + 2.83 r[2,0] + 5.235 r[2,1]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] + y[1,0] + y[2,0] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] - y[2,1] = 1
 flow_cons_target: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 1
 primal_lower: - 15.66 y[0,1] - 8.7 y[0,2] - 4.46 y[1,0] - 1.22 y[1,2]
   - 7.04 y[2,0] - 7.49 y[2,1] + 95 u[0,1] + 88 u[0,2] + 12 u[1,0]
   + 76 u[1,2] + 14 u[2,0] + 58 u[2,1] <= 95
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
