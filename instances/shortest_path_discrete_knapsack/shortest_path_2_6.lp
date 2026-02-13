\ Model sp_2_6
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x319185d70671b953
Minimize
  62.27 y[0,1] + 62.27 y[1,0] + 6.227 r[0,1] + 6.227 r[1,0]
Subject To
 flow_cons_source: y[0,1] - y[1,0] = 1
 flow_cons_target: y[0,1] - y[1,0] = 1
 primal_lower: - 0.45 y[0,1] - 22.74 y[1,0] + 51 u[0,1] + 25 u[1,0] <= 51
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
