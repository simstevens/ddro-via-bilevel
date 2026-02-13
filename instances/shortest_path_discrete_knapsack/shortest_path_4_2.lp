\ Model sp_4_2
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  28.6 y[0,1] + 58.14 y[0,2] + 38.21 y[0,3] + 28.6 y[1,0] + 64.51 y[1,3]
   + 58.14 y[2,0] + 34.53 y[2,3] + 38.21 y[3,0] + 64.51 y[3,1]
   + 34.53 y[3,2] + 2.86 r[0,1] + 5.814 r[0,2] + 3.821 r[0,3] + 2.86 r[1,0]
   + 6.451 r[1,3] + 5.814 r[2,0] + 3.453 r[2,3] + 3.821 r[3,0]
   + 6.451 r[3,1] + 3.453 r[3,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] + y[1,0] + y[2,0]
   + y[3,0] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,3] - y[3,1] = 1
 flow_cons_target: y[0,2] - y[2,0] - y[2,3] + y[3,2] = 1
 primal_lower: - 7.43 y[0,1] - 0.93 y[0,2] - 6.63 y[0,3] - 3.21 y[1,0]
   - 3.2 y[1,3] - 5.42 y[2,0] - 3.5 y[2,3] - 3.64 y[3,0] - 4.54 y[3,1]
   - 6.32 y[3,2] + 77 u[0,1] + 11 u[0,2] + 77 u[0,3] + 60 u[1,0]
   + 43 u[1,3] + 49 u[2,0] + 76 u[2,3] + 61 u[3,0] + 89 u[3,1] + 51 u[3,2]
   <= 89
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
