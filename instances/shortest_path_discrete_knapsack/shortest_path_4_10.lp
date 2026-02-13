\ Model sp_4_10
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  49.09 y[0,2] + 18.11 y[0,3] + 35.85 y[1,2] + 72.95 y[1,3] + 49.09 y[2,0]
   + 35.85 y[2,1] + 43.93 y[2,3] + 18.11 y[3,0] + 72.95 y[3,1]
   + 43.93 y[3,2] + 4.909 r[0,2] + 1.811 r[0,3] + 3.585 r[1,2]
   + 7.295 r[1,3] + 4.909 r[2,0] + 3.585 r[2,1] + 4.393 r[2,3]
   + 1.811 r[3,0] + 7.295 r[3,1] + 4.393 r[3,2]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   + y[3,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: y[0,2] + y[0,3] - y[2,0] - y[3,0] = 1
 flow_cons_target: - y[1,2] - y[1,3] + y[2,1] + y[3,1] = 1
 primal_lower: - 7.33 y[0,2] - 0.23 y[0,3] - 1.88 y[1,2] - 5.5 y[1,3]
   - 0.87 y[2,0] - 5.52 y[2,1] - 0.48 y[2,3] - 8.55 y[3,0] - 8.73 y[3,1]
   - 4.64 y[3,2] + 25 u[0,2] + 39 u[0,3] + 77 u[1,2] + 60 u[1,3]
   + 15 u[2,0] + 85 u[2,1] + 72 u[2,3] + 89 u[3,0] + 69 u[3,1] + 23 u[3,2]
   <= 89
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
