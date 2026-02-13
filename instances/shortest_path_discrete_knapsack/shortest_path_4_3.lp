\ Model sp_4_3
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  35 y[0,1] + 28.3 y[0,2] + 51.79 y[0,3] + 35 y[1,0] + 35.51 y[1,3]
   + 28.3 y[2,0] + 48.84 y[2,3] + 51.79 y[3,0] + 35.51 y[3,1]
   + 48.84 y[3,2] + 3.5 r[0,1] + 2.83 r[0,2] + 5.179 r[0,3] + 3.5 r[1,0]
   + 3.551 r[1,3] + 2.83 r[2,0] + 4.884 r[2,3] + 5.179 r[3,0]
   + 3.551 r[3,1] + 4.884 r[3,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] + y[1,0] + y[2,0]
   + y[3,0] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,3] - y[3,1] = 1
 flow_cons_target: y[0,2] - y[2,0] - y[2,3] + y[3,2] = 1
 primal_lower: - 9.4 y[0,1] - 5.22 y[0,2] - 2.67 y[0,3] - 0.73 y[1,0]
   - 4.22 y[1,3] - 4.49 y[2,0] - 0.46 y[2,3] - 1.55 y[3,0] - 1.1 y[3,1]
   - 5.96 y[3,2] + 95 u[0,1] + 88 u[0,2] + 12 u[0,3] + 76 u[1,0]
   + 14 u[1,3] + 58 u[2,0] + 23 u[2,3] + 38 u[3,0] + 32 u[3,1] + 19 u[3,2]
   <= 95
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
