\ Model sp_6_5
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb8d4f2f33e180bc3
Minimize
  24.08 y[0,3] + 45.62 y[0,4] + 4.24 y[1,2] + 39.85 y[1,3] + 23.26 y[1,4]
   + 9.43 y[1,5] + 4.24 y[2,1] + 43.66 y[2,3] + 25 y[2,4] + 9.43 y[2,5]
   + 24.08 y[3,0] + 39.85 y[3,1] + 43.66 y[3,2] + 27.8 y[3,4]
   + 46.53 y[3,5] + 45.62 y[4,0] + 23.26 y[4,1] + 25 y[4,2] + 27.8 y[4,3]
   + 32.65 y[4,5] + 9.43 y[5,1] + 9.43 y[5,2] + 46.53 y[5,3] + 32.65 y[5,4]
   + 0.3 x[0,3] + 1.6 x[0,4] + 0.05 x[1,2] + 0.64 x[1,3] + 0.6 x[1,4]
   + 0.64 x[1,5] + 0.16 x[2,1] + 1.87 x[2,3] + 1.63 x[2,4] + 0.6 x[2,5]
   + 1.06 x[3,0] + 0.95 x[3,1] + 1.81 x[3,2] + 0.88 x[3,4] + 3.14 x[3,5]
   + 0.55 x[4,0] + 0.75 x[4,1] + 1.28 x[4,2] + 1.28 x[4,3] + 1.42 x[4,5]
   + 0.53 x[5,1] + 0.23 x[5,2] + 2.81 x[5,3] + 2.12 x[5,4] + 2.408 r[0,3]
   + 4.562 r[0,4] + 0.424 r[1,2] + 3.985 r[1,3] + 2.326 r[1,4]
   + 0.943 r[1,5] + 0.424 r[2,1] + 4.366 r[2,3] + 2.5 r[2,4] + 0.943 r[2,5]
   + 2.408 r[3,0] + 3.985 r[3,1] + 4.366 r[3,2] + 2.78 r[3,4]
   + 4.653 r[3,5] + 4.562 r[4,0] + 2.326 r[4,1] + 2.5 r[4,2] + 2.78 r[4,3]
   + 3.265 r[4,5] + 0.943 r[5,1] + 0.943 r[5,2] + 4.653 r[5,3]
   + 3.265 r[5,4]
Subject To
 flow_cons_inner_nodes[1]: - y[1,2] - y[1,3] - y[1,4] - y[1,5] + y[2,1]
   + y[3,1] + y[4,1] + y[5,1] = 0
 flow_cons_inner_nodes[2]: y[1,2] - y[2,1] - y[2,3] - y[2,4] - y[2,5]
   + y[3,2] + y[4,2] + y[5,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] - y[3,5] + y[4,3] + y[5,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] - y[4,5] + y[5,4] = 0
 flow_cons_source: y[0,3] + y[0,4] - y[3,0] - y[4,0] = 1
 flow_cons_target: y[1,5] + y[2,5] + y[3,5] + y[4,5] - y[5,1] - y[5,2]
   - y[5,3] - y[5,4] = 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[0,4]: x[0,4] + u[0,4] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[1,3]: x[1,3] + u[1,3] <= 1
 primal_lower_interdiction[1,4]: x[1,4] + u[1,4] <= 1
 primal_lower_interdiction[1,5]: x[1,5] + u[1,5] <= 1
 primal_lower_interdiction[2,1]: x[2,1] + u[2,1] <= 1
 primal_lower_interdiction[2,3]: x[2,3] + u[2,3] <= 1
 primal_lower_interdiction[2,4]: x[2,4] + u[2,4] <= 1
 primal_lower_interdiction[2,5]: x[2,5] + u[2,5] <= 1
 primal_lower_interdiction[3,0]: x[3,0] + u[3,0] <= 1
 primal_lower_interdiction[3,1]: x[3,1] + u[3,1] <= 1
 primal_lower_interdiction[3,2]: x[3,2] + u[3,2] <= 1
 primal_lower_interdiction[3,4]: x[3,4] + u[3,4] <= 1
 primal_lower_interdiction[3,5]: x[3,5] + u[3,5] <= 1
 primal_lower_interdiction[4,0]: x[4,0] + u[4,0] <= 1
 primal_lower_interdiction[4,1]: x[4,1] + u[4,1] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,3]: x[4,3] + u[4,3] <= 1
 primal_lower_interdiction[4,5]: x[4,5] + u[4,5] <= 1
 primal_lower_interdiction[5,1]: x[5,1] + u[5,1] <= 1
 primal_lower_interdiction[5,2]: x[5,2] + u[5,2] <= 1
 primal_lower_interdiction[5,3]: x[5,3] + u[5,3] <= 1
 primal_lower_interdiction[5,4]: x[5,4] + u[5,4] <= 1
 primal_lower_budget: u[0,3] + u[0,4] + u[1,2] + u[1,3] + u[1,4] + u[1,5]
   + u[2,1] + u[2,3] + u[2,4] + u[2,5] + u[3,0] + u[3,1] + u[3,2] + u[3,4]
   + u[3,5] + u[4,0] + u[4,1] + u[4,2] + u[4,3] + u[4,5] + u[5,1] + u[5,2]
   + u[5,3] + u[5,4] <= 2
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
Bounds
Binaries
 y[0,3] y[0,4] y[1,2] y[1,3] y[1,4] y[1,5] y[2,1] y[2,3] y[2,4] y[2,5]
 y[3,0] y[3,1] y[3,2] y[3,4] y[3,5] y[4,0] y[4,1] y[4,2] y[4,3] y[4,5]
 y[5,1] y[5,2] y[5,3] y[5,4] x[0,3] x[0,4] x[1,2] x[1,3] x[1,4] x[1,5]
 x[2,1] x[2,3] x[2,4] x[2,5] x[3,0] x[3,1] x[3,2] x[3,4] x[3,5] x[4,0]
 x[4,1] x[4,2] x[4,3] x[4,5] x[5,1] x[5,2] x[5,3] x[5,4] u[0,3] u[0,4]
 u[1,2] u[1,3] u[1,4] u[1,5] u[2,1] u[2,3] u[2,4] u[2,5] u[3,0] u[3,1]
 u[3,2] u[3,4] u[3,5] u[4,0] u[4,1] u[4,2] u[4,3] u[4,5] u[5,1] u[5,2]
 u[5,3] u[5,4] r[0,3] r[0,4] r[1,2] r[1,3] r[1,4] r[1,5] r[2,1] r[2,3]
 r[2,4] r[2,5] r[3,0] r[3,1] r[3,2] r[3,4] r[3,5] r[4,0] r[4,1] r[4,2]
 r[4,3] r[4,5] r[5,1] r[5,2] r[5,3] r[5,4]
End
