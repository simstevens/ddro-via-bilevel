\ Model sp_3_4
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa4415f961933896d
Minimize
  24.33 y[0,1] + 69.57 y[0,2] + 24.33 y[1,0] + 83.76 y[1,2] + 69.57 y[2,0]
   + 83.76 y[2,1] + 2.433 r[0,1] + 6.957 r[0,2] + 2.433 r[1,0]
   + 8.376 r[1,2] + 6.957 r[2,0] + 8.376 r[2,1]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] + y[1,0] + y[2,0] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] - y[2,1] = 1
 flow_cons_target: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 1
 primal_lower: - 11.1 y[0,1] - 8.99 y[0,2] - 3.53 y[1,0] - 10.74 y[1,2]
   - 4.44 y[2,0] - 13.28 y[2,1] + 14 u[0,1] + 72 u[0,2] + 54 u[1,0]
   + 85 u[1,2] + 84 u[2,0] + 58 u[2,1] <= 85
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
