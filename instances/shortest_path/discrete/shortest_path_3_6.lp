\ Model nohadani_3_6
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf9a0f44b955a6a9b
Minimize
  43.18564576337837 y[0,1] + 49.67896939349689 y[0,2]
   + 43.18564576337837 y[1,0] + 61.29437168288782 y[1,2]
   + 49.67896939349689 y[2,0] + 61.29437168288782 y[2,1] + x[0,1] + x[0,2]
   + x[1,0] + x[1,2] + x[2,0] + x[2,1] + 4.318564576337837 r[0,1]
   + 4.967896939349689 r[0,2] + 4.318564576337837 r[1,0]
   + 6.129437168288782 r[1,2] + 4.967896939349689 r[2,0]
   + 6.129437168288782 r[2,1]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] + y[1,0] + y[2,0] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] - y[2,1] = 1
 flow_cons_target: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 1
 primal_lower: 12.23875847656223 x[0,1] + 11.27167684374426 x[0,2]
   + 14.65701694960427 x[1,0] + 14.18605491964445 x[1,2]
   + 10.75746440253257 x[2,0] + 3.234308088688878 x[2,1] + 94 u[0,1]
   + 11 u[0,2] + 49 u[1,0] + 14 u[1,2] + 35 u[2,0] + 56 u[2,1] <= 94
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
 y[0,1] y[0,2] y[1,0] y[1,2] y[2,0] y[2,1] x[0,1] x[0,2] x[1,0] x[1,2]
 x[2,0] x[2,1] u[0,1] u[0,2] u[1,0] u[1,2] u[2,0] u[2,1] r[0,1] r[0,2]
 r[1,0] r[1,2] r[2,0] r[2,1]
End
