\ Model sp_2_2
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x319185d70671b953
Minimize
  28.6 y[0,1] + 28.6 y[1,0] + 2.86 r[0,1] + 2.86 r[1,0]
Subject To
 flow_cons_source: y[0,1] - y[1,0] = 1
 flow_cons_target: y[0,1] - y[1,0] = 1
 primal_lower: - 32.14 y[0,1] - 4.03 y[1,0] + 77 u[0,1] + 11 u[1,0] <= 77
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
Bounds
Binaries
 y[0,1] y[1,0] u[0,1] u[1,0] r[0,1] r[1,0]
End
