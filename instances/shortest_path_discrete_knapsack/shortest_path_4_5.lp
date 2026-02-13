\ Model sp_4_5
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  62.8 y[0,1] + 24.08 y[0,3] + 62.8 y[1,0] + 4.24 y[1,2] + 39.85 y[1,3]
   + 4.24 y[2,1] + 43.66 y[2,3] + 24.08 y[3,0] + 39.85 y[3,1]
   + 43.66 y[3,2] + 6.28 r[0,1] + 2.408 r[0,3] + 6.28 r[1,0] + 0.424 r[1,2]
   + 3.985 r[1,3] + 0.424 r[2,1] + 4.366 r[2,3] + 2.408 r[3,0]
   + 3.985 r[3,1] + 4.366 r[3,2]
Subject To
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] + y[2,1]
   + y[3,1] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: y[0,1] + y[0,3] - y[1,0] - y[3,0] = 1
 flow_cons_target: y[1,2] - y[2,1] - y[2,3] + y[3,2] = 1
 primal_lower: - 1.12 y[0,1] - 9.65 y[0,3] - 7.21 y[1,0] - 3.48 y[1,2]
   - 7.01 y[1,3] - 7.92 y[2,1] - 6.39 y[2,3] - 4.1 y[3,0] - 6.99 y[3,1]
   - 2.44 y[3,2] + 32 u[0,1] + 49 u[0,3] + 89 u[1,0] + 93 u[1,2]
   + 55 u[1,3] + 67 u[2,1] + 24 u[2,3] + 99 u[3,0] + 33 u[3,1] + 64 u[3,2]
   <= 99
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
Bounds
Binaries
 y[0,1] y[0,3] y[1,0] y[1,2] y[1,3] y[2,1] y[2,3] y[3,0] y[3,1] y[3,2]
 u[0,1] u[0,3] u[1,0] u[1,2] u[1,3] u[2,1] u[2,3] u[3,0] u[3,1] u[3,2]
 r[0,1] r[0,3] r[1,0] r[1,2] r[1,3] r[2,1] r[2,3] r[3,0] r[3,1] r[3,2]
End
