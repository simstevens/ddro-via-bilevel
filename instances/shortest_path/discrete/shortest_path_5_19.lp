\ Model nohadani_5_19
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa1d49c5c4aa7c587
Minimize
  33.01514803843835 y[0,1] + 38.91015291668744 y[0,2]
   + 43.41658669218482 y[0,3] + 58.25804665451803 y[0,4]
   + 33.01514803843835 y[1,0] + 61.61168720299745 y[1,2] + 15 y[1,3]
   + 38.91015291668744 y[2,0] + 61.61168720299745 y[2,1]
   + 63.69458375717672 y[2,3] + 77.25283166331187 y[2,4]
   + 43.41658669218482 y[3,0] + 15 y[3,1] + 63.69458375717672 y[3,2]
   + 58.25804665451803 y[4,0] + 77.25283166331187 y[4,2] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[1,0] + x[1,2] + x[1,3] + x[2,0] + x[2,1] + x[2,3]
   + x[2,4] + x[3,0] + x[3,1] + x[3,2] + x[4,0] + x[4,2]
   + 3.301514803843836 r[0,1] + 3.891015291668744 r[0,2]
   + 4.341658669218482 r[0,3] + 5.825804665451804 r[0,4]
   + 3.301514803843836 r[1,0] + 6.161168720299745 r[1,2] + 1.5 r[1,3]
   + 3.891015291668744 r[2,0] + 6.161168720299745 r[2,1]
   + 6.369458375717672 r[2,3] + 7.725283166331187 r[2,4]
   + 4.341658669218482 r[3,0] + 1.5 r[3,1] + 6.369458375717672 r[3,2]
   + 5.825804665451804 r[4,0] + 7.725283166331187 r[4,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] + y[1,0]
   + y[2,0] + y[3,0] + y[4,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] + y[2,1]
   + y[3,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] + y[3,2] + y[4,2] = 0
 flow_cons_source: - y[0,3] - y[1,3] - y[2,3] + y[3,0] + y[3,1] + y[3,2]
   = 1
 flow_cons_target: y[0,4] + y[2,4] - y[4,0] - y[4,2] = 1
 primal_lower: 1.917871289931314 x[0,1] + 1.283409307123045 x[0,2]
   + 0.9077341452383713 x[0,3] + 0.5284605838741997 x[0,4]
   + 4.630283880076427 x[1,0] + 3.983071860862867 x[1,2]
   + 3.954967880666374 x[1,3] + 1.699047511967791 x[2,0]
   + 5.085628984232598 x[2,1] + 0.7384247714084575 x[2,3]
   + 3.30724996313134 x[2,4] + 3.318201517246087 x[3,0]
   + 1.337029750501359 x[3,1] + 0.7186310189175885 x[3,2]
   + 3.304633505899612 x[4,0] + 4.173137126215892 x[4,2] + 52 u[0,1]
   + 29 u[0,2] + 47 u[0,3] + 68 u[0,4] + 45 u[1,0] + 58 u[1,2] + 22 u[1,3]
   + 20 u[2,0] + 22 u[2,1] + 11 u[2,3] + 24 u[2,4] + 28 u[3,0] + 41 u[3,1]
   + 21 u[3,2] + 85 u[4,0] + 13 u[4,2] <= 85
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[1,0] y[1,2] y[1,3] y[2,0] y[2,1] y[2,3]
 y[2,4] y[3,0] y[3,1] y[3,2] y[4,0] y[4,2] x[0,1] x[0,2] x[0,3] x[0,4]
 x[1,0] x[1,2] x[1,3] x[2,0] x[2,1] x[2,3] x[2,4] x[3,0] x[3,1] x[3,2]
 x[4,0] x[4,2] u[0,1] u[0,2] u[0,3] u[0,4] u[1,0] u[1,2] u[1,3] u[2,0]
 u[2,1] u[2,3] u[2,4] u[3,0] u[3,1] u[3,2] u[4,0] u[4,2] r[0,1] r[0,2]
 r[0,3] r[0,4] r[1,0] r[1,2] r[1,3] r[2,0] r[2,1] r[2,3] r[2,4] r[3,0]
 r[3,1] r[3,2] r[4,0] r[4,2]
End
