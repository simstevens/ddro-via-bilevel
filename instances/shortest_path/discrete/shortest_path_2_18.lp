\ Model nohadani_2_18
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x2b3c2f32d9f8b44a
Minimize
  35.11409973215888 y[0,1] + 35.11409973215888 y[1,0] + x[0,1] + x[1,0]
   + 3.511409973215888 r[0,1] + 3.511409973215888 r[1,0]
Subject To
 flow_cons_source: y[0,1] - y[1,0] = 1
 flow_cons_target: y[0,1] - y[1,0] = 1
 primal_lower: 3.373223413414634 x[0,1] + 2.323493350203544 x[1,0]
   + 9 u[0,1] + 14 u[1,0] <= 14
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
