\ Model sp_6_10
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xb8d4f2f33e180bc3
Minimize
  49.09 y[0,2] + 18.11 y[0,3] + 22.02 y[0,4] + 24.76 y[0,5] + 35.85 y[1,2]
   + 58 y[1,5] + 49.09 y[2,0] + 35.85 y[2,1] + 43.93 y[2,3] + 51.62 y[2,4]
   + 25.63 y[2,5] + 18.11 y[3,0] + 43.93 y[3,2] + 38.48 y[3,4] + 19 y[3,5]
   + 22.02 y[4,0] + 51.62 y[4,2] + 38.48 y[4,3] + 35.13 y[4,5]
   + 24.76 y[5,0] + 58 y[5,1] + 25.63 y[5,2] + 19 y[5,3] + 35.13 y[5,4]
   + 3.33 x[0,2] + 0.66 x[0,3] + 0.22 x[0,4] + 1.06 x[0,5] + 1.3 x[1,2]
   + 1.41 x[1,5] + 0.96 x[2,0] + 1.39 x[2,1] + 2.09 x[2,3] + 2.03 x[2,4]
   + 1.02 x[2,5] + 0.31 x[3,0] + 0.53 x[3,2] + 1.81 x[3,4] + 0.62 x[3,5]
   + 0.34 x[4,0] + 1.74 x[4,2] + 2.45 x[4,3] + 1.12 x[4,5] + 0.44 x[5,0]
   + 1.96 x[5,1] + 1.29 x[5,2] + 0.99 x[5,3] + 0.94 x[5,4] + 4.909 r[0,2]
   + 1.811 r[0,3] + 2.202 r[0,4] + 2.476 r[0,5] + 3.585 r[1,2] + 5.8 r[1,5]
   + 4.909 r[2,0] + 3.585 r[2,1] + 4.393 r[2,3] + 5.162 r[2,4]
   + 2.563 r[2,5] + 1.811 r[3,0] + 4.393 r[3,2] + 3.848 r[3,4] + 1.9 r[3,5]
   + 2.202 r[4,0] + 5.162 r[4,2] + 3.848 r[4,3] + 3.513 r[4,5]
   + 2.476 r[5,0] + 5.8 r[5,1] + 2.563 r[5,2] + 1.9 r[5,3] + 3.513 r[5,4]
Subject To
 flow_cons_inner_nodes[0]: - y[0,2] - y[0,3] - y[0,4] - y[0,5] + y[2,0]
   + y[3,0] + y[4,0] + y[5,0] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] - y[2,5] + y[3,2] + y[4,2] + y[5,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[2,3] - y[3,0] - y[3,2] - y[3,4]
   - y[3,5] + y[4,3] + y[5,3] = 0
 flow_cons_inner_nodes[5]: y[0,5] + y[1,5] + y[2,5] + y[3,5] + y[4,5]
   - y[5,0] - y[5,1] - y[5,2] - y[5,3] - y[5,4] = 0
 flow_cons_source: y[1,2] + y[1,5] - y[2,1] - y[5,1] = 1
 flow_cons_target: y[0,4] + y[2,4] + y[3,4] - y[4,0] - y[4,2] - y[4,3]
   - y[4,5] + y[5,4] = 1
 primal_lower_interdiction[0,2]: x[0,2] + u[0,2] <= 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[0,4]: x[0,4] + u[0,4] <= 1
 primal_lower_interdiction[0,5]: x[0,5] + u[0,5] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[1,5]: x[1,5] + u[1,5] <= 1
 primal_lower_interdiction[2,0]: x[2,0] + u[2,0] <= 1
 primal_lower_interdiction[2,1]: x[2,1] + u[2,1] <= 1
 primal_lower_interdiction[2,3]: x[2,3] + u[2,3] <= 1
 primal_lower_interdiction[2,4]: x[2,4] + u[2,4] <= 1
 primal_lower_interdiction[2,5]: x[2,5] + u[2,5] <= 1
 primal_lower_interdiction[3,0]: x[3,0] + u[3,0] <= 1
 primal_lower_interdiction[3,2]: x[3,2] + u[3,2] <= 1
 primal_lower_interdiction[3,4]: x[3,4] + u[3,4] <= 1
 primal_lower_interdiction[3,5]: x[3,5] + u[3,5] <= 1
 primal_lower_interdiction[4,0]: x[4,0] + u[4,0] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,3]: x[4,3] + u[4,3] <= 1
 primal_lower_interdiction[4,5]: x[4,5] + u[4,5] <= 1
 primal_lower_interdiction[5,0]: x[5,0] + u[5,0] <= 1
 primal_lower_interdiction[5,1]: x[5,1] + u[5,1] <= 1
 primal_lower_interdiction[5,2]: x[5,2] + u[5,2] <= 1
 primal_lower_interdiction[5,3]: x[5,3] + u[5,3] <= 1
 primal_lower_interdiction[5,4]: x[5,4] + u[5,4] <= 1
 primal_lower_budget: u[0,2] + u[0,3] + u[0,4] + u[0,5] + u[1,2] + u[1,5]
   + u[2,0] + u[2,1] + u[2,3] + u[2,4] + u[2,5] + u[3,0] + u[3,2] + u[3,4]
   + u[3,5] + u[4,0] + u[4,2] + u[4,3] + u[4,5] + u[5,0] + u[5,1] + u[5,2]
   + u[5,3] + u[5,4] <= 2
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
Bounds
Binaries
 y[0,2] y[0,3] y[0,4] y[0,5] y[1,2] y[1,5] y[2,0] y[2,1] y[2,3] y[2,4]
 y[2,5] y[3,0] y[3,2] y[3,4] y[3,5] y[4,0] y[4,2] y[4,3] y[4,5] y[5,0]
 y[5,1] y[5,2] y[5,3] y[5,4] x[0,2] x[0,3] x[0,4] x[0,5] x[1,2] x[1,5]
 x[2,0] x[2,1] x[2,3] x[2,4] x[2,5] x[3,0] x[3,2] x[3,4] x[3,5] x[4,0]
 x[4,2] x[4,3] x[4,5] x[5,0] x[5,1] x[5,2] x[5,3] x[5,4] u[0,2] u[0,3]
 u[0,4] u[0,5] u[1,2] u[1,5] u[2,0] u[2,1] u[2,3] u[2,4] u[2,5] u[3,0]
 u[3,2] u[3,4] u[3,5] u[4,0] u[4,2] u[4,3] u[4,5] u[5,0] u[5,1] u[5,2]
 u[5,3] u[5,4] r[0,2] r[0,3] r[0,4] r[0,5] r[1,2] r[1,5] r[2,0] r[2,1]
 r[2,3] r[2,4] r[2,5] r[3,0] r[3,2] r[3,4] r[3,5] r[4,0] r[4,2] r[4,3]
 r[4,5] r[5,0] r[5,1] r[5,2] r[5,3] r[5,4]
End
