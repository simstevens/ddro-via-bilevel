\ Model nohadani_4_8
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x26b3cf7f3313a25f
Minimize
  10.77032961426901 y[0,1] + 79.40403012442127 y[0,2] + 22 y[0,3]
   + 10.77032961426901 y[1,0] + 74.27651041883968 y[1,2]
   + 20.591260281974 y[1,3] + 79.40403012442127 y[2,0]
   + 74.27651041883968 y[2,1] + 22 y[3,0] + 20.591260281974 y[3,1] + x[0,1]
   + x[0,2] + x[0,3] + x[1,0] + x[1,2] + x[1,3] + x[2,0] + x[2,1] + x[3,0]
   + x[3,1] + 1.077032961426901 r[0,1] + 7.940403012442127 r[0,2]
   + 2.2 r[0,3] + 1.077032961426901 r[1,0] + 7.427651041883968 r[1,2]
   + 2.0591260281974 r[1,3] + 7.940403012442127 r[2,0]
   + 7.427651041883968 r[2,1] + 2.2 r[3,0] + 2.0591260281974 r[3,1]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] + y[1,0] + y[2,0]
   + y[3,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] + y[2,1]
   + y[3,1] = 0
 flow_cons_source: - y[0,2] - y[1,2] + y[2,0] + y[2,1] = 1
 flow_cons_target: y[0,3] + y[1,3] - y[3,0] - y[3,1] = 1
 primal_lower: 4.244287687174062 x[0,1] + 1.181773316992799 x[0,2]
   + 4.223937781966007 x[0,3] + 3.944099746317126 x[1,0]
   + 1.085762651288386 x[1,2] + 1.46561081169946 x[1,3]
   + 5.916651368078912 x[2,0] + 3.77785619626816 x[2,1]
   + 2.572519497839525 x[3,0] + 7.695792670253892 x[3,1] + 77 u[0,1]
   + 94 u[0,2] + 16 u[0,3] + u[1,0] + 74 u[1,2] + 23 u[1,3] + 11 u[2,0]
   + 61 u[2,1] + 95 u[3,0] + 72 u[3,1] <= 95
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[1,0] y[1,2] y[1,3] y[2,0] y[2,1] y[3,0] y[3,1]
 x[0,1] x[0,2] x[0,3] x[1,0] x[1,2] x[1,3] x[2,0] x[2,1] x[3,0] x[3,1]
 u[0,1] u[0,2] u[0,3] u[1,0] u[1,2] u[1,3] u[2,0] u[2,1] u[3,0] u[3,1]
 r[0,1] r[0,2] r[0,3] r[1,0] r[1,2] r[1,3] r[2,0] r[2,1] r[3,0] r[3,1]
End
