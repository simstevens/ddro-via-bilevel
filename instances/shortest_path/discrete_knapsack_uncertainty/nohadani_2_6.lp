\ Model nohadani_2_6
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2b3c2f32d9f8b44a
Minimize
  42.72001872658765 y[0,1] + 42.72001872658765 y[1,0] + x[0,1] + x[1,0]
   + 4.272001872658765 r[0,1] + 4.272001872658765 r[1,0]
Subject To
 flow_cons_source: y[0,1] - y[1,0] = 1
 flow_cons_target: y[0,1] - y[1,0] = 1
 primal_lower: 25.2233378786094 x[0,1] + 1.849492889466431 x[1,0]
   + 4 u[0,1] + 60 u[1,0] <= 60
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
Bounds
Binaries
 y[0,1] y[1,0] x[0,1] x[1,0] u[0,1] u[1,0] r[0,1] r[1,0]
End
