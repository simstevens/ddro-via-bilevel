\ Model sp_4_8
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  49.98 y[0,1] + 62.77 y[0,2] + 49.98 y[1,0] + 16.55 y[1,2] + 22.02 y[1,3]
   + 62.77 y[2,0] + 16.55 y[2,1] + 30.68 y[2,3] + 22.02 y[3,1]
   + 30.68 y[3,2] + 4.998 r[0,1] + 6.277 r[0,2] + 4.998 r[1,0]
   + 1.655 r[1,2] + 2.202 r[1,3] + 6.277 r[2,0] + 1.655 r[2,1]
   + 3.068 r[2,3] + 2.202 r[3,1] + 3.068 r[3,2]
Subject To
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] + y[2,1]
   + y[3,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   + y[3,2] = 0
 flow_cons_source: y[0,1] + y[0,2] - y[1,0] - y[2,0] = 1
 flow_cons_target: y[1,3] + y[2,3] - y[3,1] - y[3,2] = 1
 primal_lower: - 4.95 y[0,1] - 2.28 y[0,2] - 2.55 y[1,0] - 3.96 y[1,2]
   - 3.77 y[1,3] - 9.97 y[2,0] - 4.08 y[2,1] - 7.72 y[2,3] - 7.61 y[3,1]
   - 3.1 y[3,2] + 88 u[0,1] + 86 u[0,2] + 100 u[1,0] + 35 u[1,2]
   + 74 u[1,3] + 76 u[2,0] + 79 u[2,1] + 36 u[2,3] + 76 u[3,1] + 78 u[3,2]
   <= 100
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[1,0] y[1,2] y[1,3] y[2,0] y[2,1] y[2,3] y[3,1] y[3,2]
 u[0,1] u[0,2] u[1,0] u[1,2] u[1,3] u[2,0] u[2,1] u[2,3] u[3,1] u[3,2]
 r[0,1] r[0,2] r[1,0] r[1,2] r[1,3] r[2,0] r[2,1] r[2,3] r[3,1] r[3,2]
End
