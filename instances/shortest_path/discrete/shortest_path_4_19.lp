\ Model nohadani_4_19
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x26b3cf7f3313a25f
Minimize
  48.70318264754368 y[0,1] + 73.97972695272672 y[0,2]
   + 48.70318264754368 y[1,0] + 38.89730067755345 y[1,2]
   + 46.87216658103186 y[1,3] + 73.97972695272672 y[2,0]
   + 38.89730067755345 y[2,1] + 11.04536101718726 y[2,3]
   + 46.87216658103186 y[3,1] + 11.04536101718726 y[3,2] + x[0,1] + x[0,2]
   + x[1,0] + x[1,2] + x[1,3] + x[2,0] + x[2,1] + x[2,3] + x[3,1] + x[3,2]
   + 4.870318264754369 r[0,1] + 7.397972695272673 r[0,2]
   + 4.870318264754369 r[1,0] + 3.889730067755345 r[1,2]
   + 4.687216658103186 r[1,3] + 7.397972695272673 r[2,0]
   + 3.889730067755345 r[2,1] + 1.104536101718726 r[2,3]
   + 4.687216658103186 r[3,1] + 1.104536101718726 r[3,2]
Subject To
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] + y[2,1]
   + y[3,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   + y[3,2] = 0
 flow_cons_source: y[0,1] + y[0,2] - y[1,0] - y[2,0] = 1
 flow_cons_target: y[1,3] + y[2,3] - y[3,1] - y[3,2] = 1
 primal_lower: 4.051115472279423 x[0,1] + 2.51555796309978 x[0,2]
   + 2.745231058663554 x[1,0] + 3.573050252276921 x[1,2]
   + 4.921654801425305 x[1,3] + 8.337519021949493 x[2,0]
   + 5.471366808298614 x[2,1] + 9.291885588161808 x[2,3]
   + 8.292462290442868 x[3,1] + 5.832024293457724 x[3,2] + 59 u[0,1]
   + 83 u[0,2] + 97 u[1,0] + 42 u[1,2] + 55 u[1,3] + 93 u[2,0] + 12 u[2,1]
   + 67 u[2,3] + 4 u[3,1] + 69 u[3,2] <= 97
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[1,0] y[1,2] y[1,3] y[2,0] y[2,1] y[2,3] y[3,1] y[3,2]
 x[0,1] x[0,2] x[1,0] x[1,2] x[1,3] x[2,0] x[2,1] x[2,3] x[3,1] x[3,2]
 u[0,1] u[0,2] u[1,0] u[1,2] u[1,3] u[2,0] u[2,1] u[2,3] u[3,1] u[3,2]
 r[0,1] r[0,2] r[1,0] r[1,2] r[1,3] r[2,0] r[2,1] r[2,3] r[3,1] r[3,2]
End
