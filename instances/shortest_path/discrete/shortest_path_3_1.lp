\ Model nohadani_3_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf9a0f44b955a6a9b
Minimize
  52.46903848937962 y[0,1] + 25.29822128134704 y[0,2]
   + 52.46903848937962 y[1,0] + 77.46612162745726 y[1,2]
   + 25.29822128134704 y[2,0] + 77.46612162745726 y[2,1] + x[0,1] + x[0,2]
   + x[1,0] + x[1,2] + x[2,0] + x[2,1] + 5.246903848937962 r[0,1]
   + 2.529822128134704 r[0,2] + 5.246903848937962 r[1,0]
   + 7.746612162745726 r[1,2] + 2.529822128134704 r[2,0]
   + 7.746612162745726 r[2,1]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] + y[1,0] + y[2,0] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] - y[2,1] = 1
 flow_cons_target: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 1
 primal_lower: 7.4656854142502 x[0,1] + 15.09875087507876 x[0,2]
   + 9.730335031838903 x[1,0] + 9.405514585270192 x[1,2]
   + 8.941482010844487 x[2,0] + 14.38018472850687 x[2,1] + 92 u[0,1]
   + 57 u[0,2] + 79 u[1,0] + 36 u[1,2] + 73 u[2,0] + 74 u[2,1] <= 92
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
