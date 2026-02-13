\ Model sp_4_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  26.93 y[0,2] + 65.19 y[0,3] + 80.53 y[1,2] + 43.68 y[1,3] + 26.93 y[2,0]
   + 80.53 y[2,1] + 38.95 y[2,3] + 65.19 y[3,0] + 43.68 y[3,1]
   + 38.95 y[3,2] + 2.693 r[0,2] + 6.519 r[0,3] + 8.053 r[1,2]
   + 4.368 r[1,3] + 2.693 r[2,0] + 8.053 r[2,1] + 3.895 r[2,3]
   + 6.519 r[3,0] + 4.368 r[3,1] + 3.895 r[3,2]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   + y[3,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: y[0,2] + y[0,3] - y[2,0] - y[3,0] = 1
 flow_cons_target: - y[1,2] - y[1,3] + y[2,1] + y[3,1] = 1
 primal_lower: - 0.98 y[0,2] - 5.18 y[0,3] - 1.13 y[1,2] - 2.05 y[1,3]
   - 2.78 y[2,0] - 7.3 y[2,1] - 5.66 y[2,3] - 4.6 y[3,0] - 0.25 y[3,1]
   - 6.24 y[3,2] + 58 u[0,2] + 35 u[0,3] + 35 u[1,2] + 51 u[1,3]
   + 73 u[2,0] + 49 u[2,1] + 30 u[2,3] + 85 u[3,0] + 39 u[3,1] + 82 u[3,2]
   <= 85
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
