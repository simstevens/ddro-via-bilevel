\ Model sp_3_10
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa4415f961933896d
Minimize
  82.73 y[0,1] + 49.09 y[0,2] + 82.73 y[1,0] + 35.85 y[1,2] + 49.09 y[2,0]
   + 35.85 y[2,1] + 8.273 r[0,1] + 4.909 r[0,2] + 8.273 r[1,0]
   + 3.585 r[1,2] + 4.909 r[2,0] + 3.585 r[2,1]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 0
 flow_cons_source: y[0,1] + y[0,2] - y[1,0] - y[2,0] = 1
 flow_cons_target: y[0,1] - y[1,0] - y[1,2] + y[2,1] = 1
 primal_lower: - 11.66 y[0,1] - 0.37 y[0,2] - 2.99 y[1,0] - 8.76 y[1,2]
   - 1.39 y[2,0] - 8.79 y[2,1] + 25 u[0,1] + 39 u[0,2] + 77 u[1,0]
   + 60 u[1,2] + 15 u[2,0] + 85 u[2,1] <= 85
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
