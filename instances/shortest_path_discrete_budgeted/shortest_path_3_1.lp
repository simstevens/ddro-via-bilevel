\ Model sp_3_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x504b9b8398650334
Minimize
  104.62 y[0,1] + 26.93 y[0,2] + 104.62 y[1,0] + 80.53 y[1,2] + 26.93 y[2,0]
   + 80.53 y[2,1] + 3.37 x[0,1] + 1.4 x[0,2] + 1.65 x[1,0] + 3.7 x[1,2]
   + 1.25 x[2,0] + 3.29 x[2,1] + 10.462 r[0,1] + 2.693 r[0,2]
   + 10.462 r[1,0] + 8.053 r[1,2] + 2.693 r[2,0] + 8.053 r[2,1]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 0
 flow_cons_source: y[0,1] + y[0,2] - y[1,0] - y[2,0] = 1
 flow_cons_target: y[0,1] - y[1,0] - y[1,2] + y[2,1] = 1
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
