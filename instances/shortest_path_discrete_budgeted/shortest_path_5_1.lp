\ Model sp_5_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8b129bd16045e15
Minimize
  26.93 y[0,2] + 65.19 y[0,3] + 80.53 y[1,2] + 43.68 y[1,3] + 4 y[1,4]
   + 26.93 y[2,0] + 80.53 y[2,1] + 38.95 y[2,3] + 82.49 y[2,4]
   + 65.19 y[3,0] + 43.68 y[3,1] + 38.95 y[3,2] + 44.94 y[3,4] + 4 y[4,1]
   + 82.49 y[4,2] + 44.94 y[4,3] + 0.42 x[0,2] + 2.99 x[0,3] + 3.75 x[1,2]
   + 1.78 x[1,3] + 0.18 x[1,4] + 1.28 x[2,0] + 5.38 x[2,1] + 2.46 x[2,3]
   + 5.53 x[2,4] + 2.19 x[3,0] + 0.59 x[3,1] + 0.64 x[3,2] + 0.79 x[3,4]
   + 0.08 x[4,1] + 1.62 x[4,2] + 2.7 x[4,3] + 2.693 r[0,2] + 6.519 r[0,3]
   + 8.053 r[1,2] + 4.368 r[1,3] + 0.4 r[1,4] + 2.693 r[2,0] + 8.053 r[2,1]
   + 3.895 r[2,3] + 8.249 r[2,4] + 6.519 r[3,0] + 4.368 r[3,1]
   + 3.895 r[3,2] + 4.494 r[3,4] + 0.4 r[4,1] + 8.249 r[4,2] + 4.494 r[4,3]
Subject To
 flow_cons_inner_nodes[1]: - y[1,2] - y[1,3] - y[1,4] + y[2,1] + y[3,1]
   + y[4,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] + y[3,2] + y[4,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] + y[4,3] = 0
 flow_cons_source: y[0,2] + y[0,3] - y[2,0] - y[3,0] = 1
 flow_cons_target: y[1,4] + y[2,4] + y[3,4] - y[4,1] - y[4,2] - y[4,3] = 1
 primal_lower_interdiction[0,2]: x[0,2] + u[0,2] <= 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[1,3]: x[1,3] + u[1,3] <= 1
 primal_lower_interdiction[1,4]: x[1,4] + u[1,4] <= 1
 primal_lower_interdiction[2,0]: x[2,0] + u[2,0] <= 1
 primal_lower_interdiction[2,1]: x[2,1] + u[2,1] <= 1
 primal_lower_interdiction[2,3]: x[2,3] + u[2,3] <= 1
 primal_lower_interdiction[2,4]: x[2,4] + u[2,4] <= 1
 primal_lower_interdiction[3,0]: x[3,0] + u[3,0] <= 1
 primal_lower_interdiction[3,1]: x[3,1] + u[3,1] <= 1
 primal_lower_interdiction[3,2]: x[3,2] + u[3,2] <= 1
 primal_lower_interdiction[3,4]: x[3,4] + u[3,4] <= 1
 primal_lower_interdiction[4,1]: x[4,1] + u[4,1] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,3]: x[4,3] + u[4,3] <= 1
 primal_lower_budget: u[0,2] + u[0,3] + u[1,2] + u[1,3] + u[1,4] + u[2,0]
   + u[2,1] + u[2,3] + u[2,4] + u[3,0] + u[3,1] + u[3,2] + u[3,4] + u[4,1]
   + u[4,2] + u[4,3] <= 2
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
Bounds
Binaries
 y[0,2] y[0,3] y[1,2] y[1,3] y[1,4] y[2,0] y[2,1] y[2,3] y[2,4] y[3,0]
 y[3,1] y[3,2] y[3,4] y[4,1] y[4,2] y[4,3] x[0,2] x[0,3] x[1,2] x[1,3]
 x[1,4] x[2,0] x[2,1] x[2,3] x[2,4] x[3,0] x[3,1] x[3,2] x[3,4] x[4,1]
 x[4,2] x[4,3] u[0,2] u[0,3] u[1,2] u[1,3] u[1,4] u[2,0] u[2,1] u[2,3]
 u[2,4] u[3,0] u[3,1] u[3,2] u[3,4] u[4,1] u[4,2] u[4,3] r[0,2] r[0,3]
 r[1,2] r[1,3] r[1,4] r[2,0] r[2,1] r[2,3] r[2,4] r[3,0] r[3,1] r[3,2]
 r[3,4] r[4,1] r[4,2] r[4,3]
End
