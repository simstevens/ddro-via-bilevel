\ Model sp_4_7
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  53.25 y[0,1] + 61.59 y[0,2] + 65.46 y[0,3] + 53.25 y[1,0] + 54.08 y[1,3]
   + 61.59 y[2,0] + 42.45 y[2,3] + 65.46 y[3,0] + 54.08 y[3,1]
   + 42.45 y[3,2] + 5.325 r[0,1] + 6.159 r[0,2] + 6.546 r[0,3]
   + 5.325 r[1,0] + 5.408 r[1,3] + 6.159 r[2,0] + 4.245 r[2,3]
   + 6.546 r[3,0] + 5.408 r[3,1] + 4.245 r[3,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] + y[1,0] + y[2,0]
   + y[3,0] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,3] - y[3,1] = 1
 flow_cons_target: y[0,2] - y[2,0] - y[2,3] + y[3,2] = 1
 primal_lower: - 2.08 y[0,1] - 1.7 y[0,2] - 6.39 y[0,3] - 6.15 y[1,0]
   - 4.71 y[1,3] - 3.91 y[2,0] - 3.77 y[2,3] - 1.45 y[3,0] - 5.31 y[3,1]
   - 6.18 y[3,2] + 69 u[0,1] + 2 u[0,2] + 66 u[0,3] + 18 u[1,0] + 4 u[1,3]
   + 68 u[2,0] + 25 u[2,3] + 60 u[3,0] + 26 u[3,1] + 9 u[3,2] <= 69
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[1,0] y[1,3] y[2,0] y[2,3] y[3,0] y[3,1] y[3,2]
 u[0,1] u[0,2] u[0,3] u[1,0] u[1,3] u[2,0] u[2,3] u[3,0] u[3,1] u[3,2]
 r[0,1] r[0,2] r[0,3] r[1,0] r[1,3] r[2,0] r[2,3] r[3,0] r[3,1] r[3,2]
End
