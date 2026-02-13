\ Model sp_5_4
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8b129bd16045e15
Minimize
  24.33 y[0,1] + 69.57 y[0,2] + 73.55 y[0,3] + 25.08 y[0,4] + 24.33 y[1,0]
   + 14.04 y[1,4] + 69.57 y[2,0] + 37.48 y[2,3] + 71.84 y[2,4]
   + 73.55 y[3,0] + 37.48 y[3,2] + 62.51 y[3,4] + 25.08 y[4,0]
   + 14.04 y[4,1] + 71.84 y[4,2] + 62.51 y[4,3] + 1.03 x[0,1] + 4.05 x[0,2]
   + 0.87 x[0,3] + 1.43 x[0,4] + 1.17 x[1,0] + 0.19 x[1,4] + 0.82 x[2,0]
   + 1.61 x[2,3] + 1.99 x[2,4] + 2.19 x[3,0] + 1.98 x[3,2] + 3.49 x[3,4]
   + 0.85 x[4,0] + 0.73 x[4,1] + 2.27 x[4,2] + 2.39 x[4,3] + 2.433 r[0,1]
   + 6.957 r[0,2] + 7.355 r[0,3] + 2.508 r[0,4] + 2.433 r[1,0]
   + 1.404 r[1,4] + 6.957 r[2,0] + 3.748 r[2,3] + 7.184 r[2,4]
   + 7.355 r[3,0] + 3.748 r[3,2] + 6.251 r[3,4] + 2.508 r[4,0]
   + 1.404 r[4,1] + 7.184 r[4,2] + 6.251 r[4,3]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] + y[1,0]
   + y[2,0] + y[3,0] + y[4,0] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[2,3] - y[3,0] - y[3,2] - y[3,4]
   + y[4,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,4] - y[4,1] = 1
 flow_cons_target: y[0,2] - y[2,0] - y[2,3] - y[2,4] + y[3,2] + y[4,2] = 1
 primal_lower_interdiction[0,1]: x[0,1] + u[0,1] <= 1
 primal_lower_interdiction[0,2]: x[0,2] + u[0,2] <= 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[0,4]: x[0,4] + u[0,4] <= 1
 primal_lower_interdiction[1,0]: x[1,0] + u[1,0] <= 1
 primal_lower_interdiction[1,4]: x[1,4] + u[1,4] <= 1
 primal_lower_interdiction[2,0]: x[2,0] + u[2,0] <= 1
 primal_lower_interdiction[2,3]: x[2,3] + u[2,3] <= 1
 primal_lower_interdiction[2,4]: x[2,4] + u[2,4] <= 1
 primal_lower_interdiction[3,0]: x[3,0] + u[3,0] <= 1
 primal_lower_interdiction[3,2]: x[3,2] + u[3,2] <= 1
 primal_lower_interdiction[3,4]: x[3,4] + u[3,4] <= 1
 primal_lower_interdiction[4,0]: x[4,0] + u[4,0] <= 1
 primal_lower_interdiction[4,1]: x[4,1] + u[4,1] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,3]: x[4,3] + u[4,3] <= 1
 primal_lower_budget: u[0,1] + u[0,2] + u[0,3] + u[0,4] + u[1,0] + u[1,4]
   + u[2,0] + u[2,3] + u[2,4] + u[3,0] + u[3,2] + u[3,4] + u[4,0] + u[4,1]
   + u[4,2] + u[4,3] <= 2
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[1,0] y[1,4] y[2,0] y[2,3] y[2,4] y[3,0]
 y[3,2] y[3,4] y[4,0] y[4,1] y[4,2] y[4,3] x[0,1] x[0,2] x[0,3] x[0,4]
 x[1,0] x[1,4] x[2,0] x[2,3] x[2,4] x[3,0] x[3,2] x[3,4] x[4,0] x[4,1]
 x[4,2] x[4,3] u[0,1] u[0,2] u[0,3] u[0,4] u[1,0] u[1,4] u[2,0] u[2,3]
 u[2,4] u[3,0] u[3,2] u[3,4] u[4,0] u[4,1] u[4,2] u[4,3] r[0,1] r[0,2]
 r[0,3] r[0,4] r[1,0] r[1,4] r[2,0] r[2,3] r[2,4] r[3,0] r[3,2] r[3,4]
 r[4,0] r[4,1] r[4,2] r[4,3]
End
