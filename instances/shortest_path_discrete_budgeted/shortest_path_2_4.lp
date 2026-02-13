\ Model sp_2_4
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe07268892050a8ee
Minimize
  24.33 y[0,1] + 24.33 y[1,0] + 1.1 x[0,1] + 1.54 x[1,0] + 2.433 r[0,1]
   + 2.433 r[1,0]
Subject To
 flow_cons_source: y[0,1] - y[1,0] = 1
 flow_cons_target: y[0,1] - y[1,0] = 1
 primal_lower_interdiction[0,1]: x[0,1] + u[0,1] <= 1
 primal_lower_interdiction[1,0]: x[1,0] + u[1,0] <= 1
 primal_lower_budget: u[0,1] + u[1,0] <= 2
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
