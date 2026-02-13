\ Model sp_5_5
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x8b129bd16045e15
Minimize
  24.08 y[0,3] + 45.62 y[0,4] + 4.24 y[1,2] + 39.85 y[1,3] + 23.26 y[1,4]
   + 4.24 y[2,1] + 43.66 y[2,3] + 25 y[2,4] + 24.08 y[3,0] + 39.85 y[3,1]
   + 43.66 y[3,2] + 27.8 y[3,4] + 45.62 y[4,0] + 23.26 y[4,1] + 25 y[4,2]
   + 27.8 y[4,3] + 0.81 x[0,3] + 0.57 x[0,4] + 0.15 x[1,2] + 0.46 x[1,3]
   + 0.38 x[1,4] + 0.11 x[2,1] + 2.97 x[2,3] + 0.97 x[2,4] + 1.03 x[3,0]
   + 2.59 x[3,1] + 2.79 x[3,2] + 1.22 x[3,4] + 1.09 x[4,0] + 0.96 x[4,1]
   + 0.79 x[4,2] + 1.88 x[4,3] + 2.408 r[0,3] + 4.562 r[0,4] + 0.424 r[1,2]
   + 3.985 r[1,3] + 2.326 r[1,4] + 0.424 r[2,1] + 4.366 r[2,3] + 2.5 r[2,4]
   + 2.408 r[3,0] + 3.985 r[3,1] + 4.366 r[3,2] + 2.78 r[3,4]
   + 4.562 r[4,0] + 2.326 r[4,1] + 2.5 r[4,2] + 2.78 r[4,3]
Subject To
 flow_cons_inner_nodes[1]: - y[1,2] - y[1,3] - y[1,4] + y[2,1] + y[3,1]
   + y[4,1] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] + y[4,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] = 0
 flow_cons_source: y[0,3] + y[0,4] - y[3,0] - y[4,0] = 1
 flow_cons_target: y[1,2] - y[2,1] - y[2,3] - y[2,4] + y[3,2] + y[4,2] = 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[0,4]: x[0,4] + u[0,4] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[1,3]: x[1,3] + u[1,3] <= 1
 primal_lower_interdiction[1,4]: x[1,4] + u[1,4] <= 1
 primal_lower_interdiction[2,1]: x[2,1] + u[2,1] <= 1
 primal_lower_interdiction[2,3]: x[2,3] + u[2,3] <= 1
 primal_lower_interdiction[2,4]: x[2,4] + u[2,4] <= 1
 primal_lower_interdiction[3,0]: x[3,0] + u[3,0] <= 1
 primal_lower_interdiction[3,1]: x[3,1] + u[3,1] <= 1
 primal_lower_interdiction[3,2]: x[3,2] + u[3,2] <= 1
 primal_lower_interdiction[3,4]: x[3,4] + u[3,4] <= 1
 primal_lower_interdiction[4,0]: x[4,0] + u[4,0] <= 1
 primal_lower_interdiction[4,1]: x[4,1] + u[4,1] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,3]: x[4,3] + u[4,3] <= 1
 primal_lower_budget: u[0,3] + u[0,4] + u[1,2] + u[1,3] + u[1,4] + u[2,1]
   + u[2,3] + u[2,4] + u[3,0] + u[3,1] + u[3,2] + u[3,4] + u[4,0] + u[4,1]
   + u[4,2] + u[4,3] <= 2
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
Bounds
Binaries
 y[0,3] y[0,4] y[1,2] y[1,3] y[1,4] y[2,1] y[2,3] y[2,4] y[3,0] y[3,1]
 y[3,2] y[3,4] y[4,0] y[4,1] y[4,2] y[4,3] x[0,3] x[0,4] x[1,2] x[1,3]
 x[1,4] x[2,1] x[2,3] x[2,4] x[3,0] x[3,1] x[3,2] x[3,4] x[4,0] x[4,1]
 x[4,2] x[4,3] u[0,3] u[0,4] u[1,2] u[1,3] u[1,4] u[2,1] u[2,3] u[2,4]
 u[3,0] u[3,1] u[3,2] u[3,4] u[4,0] u[4,1] u[4,2] u[4,3] r[0,3] r[0,4]
 r[1,2] r[1,3] r[1,4] r[2,1] r[2,3] r[2,4] r[3,0] r[3,1] r[3,2] r[3,4]
 r[4,0] r[4,1] r[4,2] r[4,3]
End
