\ Model sp_3_2
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x504b9b8398650334
Minimize
  28.6 y[0,1] + 58.14 y[0,2] + 28.6 y[1,0] + 86.68 y[1,2] + 58.14 y[2,0]
   + 86.68 y[2,1] + 0.94 x[0,1] + 1.59 x[0,2] + 0.67 x[1,0] + 3.82 x[1,2]
   + 0.93 x[2,0] + 4.89 x[2,1] + 2.86 r[0,1] + 5.814 r[0,2] + 2.86 r[1,0]
   + 8.668 r[1,2] + 5.814 r[2,0] + 8.668 r[2,1]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] + y[1,0] + y[2,0] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] - y[2,1] = 1
 flow_cons_target: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 1
 primal_lower_interdiction[0,1]: x[0,1] + u[0,1] <= 1
 primal_lower_interdiction[0,2]: x[0,2] + u[0,2] <= 1
 primal_lower_interdiction[1,0]: x[1,0] + u[1,0] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[2,0]: x[2,0] + u[2,0] <= 1
 primal_lower_interdiction[2,1]: x[2,1] + u[2,1] <= 1
 primal_lower_budget: u[0,1] + u[0,2] + u[1,0] + u[1,2] + u[2,0] + u[2,1]
   <= 2
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
