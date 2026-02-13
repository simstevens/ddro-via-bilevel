\ Model sp_4_9
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  35 y[0,2] + 50.45 y[0,3] + 40.02 y[1,2] + 12 y[1,3] + 35 y[2,0]
   + 40.02 y[2,1] + 39.12 y[2,3] + 50.45 y[3,0] + 12 y[3,1] + 39.12 y[3,2]
   + 3.5 r[0,2] + 5.045 r[0,3] + 4.002 r[1,2] + 1.2 r[1,3] + 3.5 r[2,0]
   + 4.002 r[2,1] + 3.912 r[2,3] + 5.045 r[3,0] + 1.2 r[3,1] + 3.912 r[3,2]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   + y[3,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: y[0,2] + y[0,3] - y[2,0] - y[3,0] = 1
 flow_cons_target: - y[1,2] - y[1,3] + y[2,1] + y[3,1] = 1
 primal_lower: - 5.2 y[0,2] - 0.34 y[0,3] - 2.64 y[1,2] - 4.96 y[1,3]
   - 2.19 y[2,0] - 7.31 y[2,1] - 1.21 y[2,3] - 2.99 y[3,0] - 4.54 y[3,1]
   - 3.76 y[3,2] + 6 u[0,2] + 63 u[0,3] + 43 u[1,2] + 43 u[1,3] + 45 u[2,0]
   + 77 u[2,1] + 26 u[2,3] + 13 u[3,0] + 27 u[3,1] + 46 u[3,2] <= 77
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
Bounds
Binaries
 y[0,2] y[0,3] y[1,2] y[1,3] y[2,0] y[2,1] y[2,3] y[3,0] y[3,1] y[3,2]
 u[0,2] u[0,3] u[1,2] u[1,3] u[2,0] u[2,1] u[2,3] u[3,0] u[3,1] u[3,2]
 r[0,2] r[0,3] r[1,2] r[1,3] r[2,0] r[2,1] r[2,3] r[3,0] r[3,1] r[3,2]
End
