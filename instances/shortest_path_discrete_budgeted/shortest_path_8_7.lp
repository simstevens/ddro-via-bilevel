\ Model sp_8_7
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf0d5bc839e6ff29
Minimize
  53.25 y[0,1] + 61.59 y[0,2] + 65.46 y[0,3] + 43.05 y[0,4] + 53.08 y[0,5]
   + 17.8 y[0,7] + 53.25 y[1,0] + 82.73 y[1,2] + 54.08 y[1,3]
   + 46.96 y[1,6] + 55 y[1,7] + 61.59 y[2,0] + 82.73 y[2,1] + 42.45 y[2,3]
   + 36.14 y[2,4] + 36.01 y[2,5] + 80.81 y[2,6] + 43.91 y[2,7]
   + 65.46 y[3,0] + 54.08 y[3,1] + 42.45 y[3,2] + 67.68 y[3,4]
   + 72.45 y[3,5] + 38.42 y[3,6] + 51.48 y[3,7] + 43.05 y[4,0]
   + 36.14 y[4,2] + 67.68 y[4,3] + 10.05 y[4,5] + 31.78 y[4,7]
   + 53.08 y[5,0] + 36.01 y[5,2] + 72.45 y[5,3] + 10.05 y[5,4]
   + 41.44 y[5,7] + 46.96 y[6,1] + 80.81 y[6,2] + 38.42 y[6,3]
   + 78.45 y[6,7] + 17.8 y[7,0] + 55 y[7,1] + 43.91 y[7,2] + 51.48 y[7,3]
   + 31.78 y[7,4] + 41.44 y[7,5] + 78.45 y[7,6] + 2.88 x[0,1] + 2.95 x[0,2]
   + 2.64 x[0,3] + 2.64 x[0,4] + 2.45 x[0,5] + 0.79 x[0,7] + 1.81 x[1,0]
   + 2.06 x[1,2] + 0.99 x[1,3] + 1.66 x[1,6] + 1.79 x[1,7] + 3.47 x[2,0]
   + 2.16 x[2,1] + 1.44 x[2,3] + 2.41 x[2,4] + 1.7 x[2,5] + 4.01 x[2,6]
   + 2.25 x[2,7] + 4.23 x[3,0] + 1.21 x[3,1] + 2.39 x[3,2] + 0.94 x[3,4]
   + 1.83 x[3,5] + 1.76 x[3,6] + 1.5 x[3,7] + 1.69 x[4,0] + 0.84 x[4,2]
   + 1.71 x[4,3] + 0.36 x[4,5] + 1.48 x[4,7] + 2.74 x[5,0] + 1.44 x[5,2]
   + 2.37 x[5,3] + 0.68 x[5,4] + 2.35 x[5,7] + 2.01 x[6,1] + 3.44 x[6,2]
   + 0.73 x[6,3] + 1.72 x[6,7] + 0.27 x[7,0] + 3.66 x[7,1] + 2.62 x[7,2]
   + 0.71 x[7,3] + 1.64 x[7,4] + 1.34 x[7,5] + 3.91 x[7,6] + 5.325 r[0,1]
   + 6.159 r[0,2] + 6.546 r[0,3] + 4.305 r[0,4] + 5.308 r[0,5]
   + 1.78 r[0,7] + 5.325 r[1,0] + 8.273 r[1,2] + 5.408 r[1,3]
   + 4.696 r[1,6] + 5.5 r[1,7] + 6.159 r[2,0] + 8.273 r[2,1] + 4.245 r[2,3]
   + 3.614 r[2,4] + 3.601 r[2,5] + 8.081 r[2,6] + 4.391 r[2,7]
   + 6.546 r[3,0] + 5.408 r[3,1] + 4.245 r[3,2] + 6.768 r[3,4]
   + 7.245 r[3,5] + 3.842 r[3,6] + 5.148 r[3,7] + 4.305 r[4,0]
   + 3.614 r[4,2] + 6.768 r[4,3] + 1.005 r[4,5] + 3.178 r[4,7]
   + 5.308 r[5,0] + 3.601 r[5,2] + 7.245 r[5,3] + 1.005 r[5,4]
   + 4.144 r[5,7] + 4.696 r[6,1] + 8.081 r[6,2] + 3.842 r[6,3]
   + 7.845 r[6,7] + 1.78 r[7,0] + 5.5 r[7,1] + 4.391 r[7,2] + 5.148 r[7,3]
   + 3.178 r[7,4] + 4.144 r[7,5] + 7.845 r[7,6]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   - y[0,7] + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] + y[7,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,6]
   - y[1,7] + y[2,1] + y[3,1] + y[6,1] + y[7,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] - y[2,5] - y[2,6] - y[2,7] + y[3,2] + y[4,2] + y[5,2] + y[6,2]
   + y[7,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] - y[3,5] - y[3,6] - y[3,7] + y[4,3] + y[5,3] + y[6,3]
   + y[7,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[2,4] + y[3,4] - y[4,0] - y[4,2]
   - y[4,3] - y[4,5] - y[4,7] + y[5,4] + y[7,4] = 0
 flow_cons_inner_nodes[7]: y[0,7] + y[1,7] + y[2,7] + y[3,7] + y[4,7]
   + y[5,7] + y[6,7] - y[7,0] - y[7,1] - y[7,2] - y[7,3] - y[7,4] - y[7,5]
   - y[7,6] = 0
 flow_cons_source: - y[0,5] - y[2,5] - y[3,5] - y[4,5] + y[5,0] + y[5,2]
   + y[5,3] + y[5,4] + y[5,7] - y[7,5] = 1
 flow_cons_target: y[1,6] + y[2,6] + y[3,6] - y[6,1] - y[6,2] - y[6,3]
   - y[6,7] + y[7,6] = 1
 primal_lower_interdiction[0,1]: x[0,1] + u[0,1] <= 1
 primal_lower_interdiction[0,2]: x[0,2] + u[0,2] <= 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[0,4]: x[0,4] + u[0,4] <= 1
 primal_lower_interdiction[0,5]: x[0,5] + u[0,5] <= 1
 primal_lower_interdiction[0,7]: x[0,7] + u[0,7] <= 1
 primal_lower_interdiction[1,0]: x[1,0] + u[1,0] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[1,3]: x[1,3] + u[1,3] <= 1
 primal_lower_interdiction[1,6]: x[1,6] + u[1,6] <= 1
 primal_lower_interdiction[1,7]: x[1,7] + u[1,7] <= 1
 primal_lower_interdiction[2,0]: x[2,0] + u[2,0] <= 1
 primal_lower_interdiction[2,1]: x[2,1] + u[2,1] <= 1
 primal_lower_interdiction[2,3]: x[2,3] + u[2,3] <= 1
 primal_lower_interdiction[2,4]: x[2,4] + u[2,4] <= 1
 primal_lower_interdiction[2,5]: x[2,5] + u[2,5] <= 1
 primal_lower_interdiction[2,6]: x[2,6] + u[2,6] <= 1
 primal_lower_interdiction[2,7]: x[2,7] + u[2,7] <= 1
 primal_lower_interdiction[3,0]: x[3,0] + u[3,0] <= 1
 primal_lower_interdiction[3,1]: x[3,1] + u[3,1] <= 1
 primal_lower_interdiction[3,2]: x[3,2] + u[3,2] <= 1
 primal_lower_interdiction[3,4]: x[3,4] + u[3,4] <= 1
 primal_lower_interdiction[3,5]: x[3,5] + u[3,5] <= 1
 primal_lower_interdiction[3,6]: x[3,6] + u[3,6] <= 1
 primal_lower_interdiction[3,7]: x[3,7] + u[3,7] <= 1
 primal_lower_interdiction[4,0]: x[4,0] + u[4,0] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,3]: x[4,3] + u[4,3] <= 1
 primal_lower_interdiction[4,5]: x[4,5] + u[4,5] <= 1
 primal_lower_interdiction[4,7]: x[4,7] + u[4,7] <= 1
 primal_lower_interdiction[5,0]: x[5,0] + u[5,0] <= 1
 primal_lower_interdiction[5,2]: x[5,2] + u[5,2] <= 1
 primal_lower_interdiction[5,3]: x[5,3] + u[5,3] <= 1
 primal_lower_interdiction[5,4]: x[5,4] + u[5,4] <= 1
 primal_lower_interdiction[5,7]: x[5,7] + u[5,7] <= 1
 primal_lower_interdiction[6,1]: x[6,1] + u[6,1] <= 1
 primal_lower_interdiction[6,2]: x[6,2] + u[6,2] <= 1
 primal_lower_interdiction[6,3]: x[6,3] + u[6,3] <= 1
 primal_lower_interdiction[6,7]: x[6,7] + u[6,7] <= 1
 primal_lower_interdiction[7,0]: x[7,0] + u[7,0] <= 1
 primal_lower_interdiction[7,1]: x[7,1] + u[7,1] <= 1
 primal_lower_interdiction[7,2]: x[7,2] + u[7,2] <= 1
 primal_lower_interdiction[7,3]: x[7,3] + u[7,3] <= 1
 primal_lower_interdiction[7,4]: x[7,4] + u[7,4] <= 1
 primal_lower_interdiction[7,5]: x[7,5] + u[7,5] <= 1
 primal_lower_interdiction[7,6]: x[7,6] + u[7,6] <= 1
 primal_lower_budget: u[0,1] + u[0,2] + u[0,3] + u[0,4] + u[0,5] + u[0,7]
   + u[1,0] + u[1,2] + u[1,3] + u[1,6] + u[1,7] + u[2,0] + u[2,1] + u[2,3]
   + u[2,4] + u[2,5] + u[2,6] + u[2,7] + u[3,0] + u[3,1] + u[3,2] + u[3,4]
   + u[3,5] + u[3,6] + u[3,7] + u[4,0] + u[4,2] + u[4,3] + u[4,5] + u[4,7]
   + u[5,0] + u[5,2] + u[5,3] + u[5,4] + u[5,7] + u[6,1] + u[6,2] + u[6,3]
   + u[6,7] + u[7,0] + u[7,1] + u[7,2] + u[7,3] + u[7,4] + u[7,5] + u[7,6]
   <= 2
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[0,7]: - u[0,7] + r[0,7] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,6]: - u[1,6] + r[1,6] <= 0
 mccormick1[1,7]: - u[1,7] + r[1,7] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[2,6]: - u[2,6] + r[2,6] <= 0
 mccormick1[2,7]: - u[2,7] + r[2,7] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[3,6]: - u[3,6] + r[3,6] <= 0
 mccormick1[3,7]: - u[3,7] + r[3,7] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,7]: - u[4,7] + r[4,7] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,7]: - u[5,7] + r[5,7] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,3]: - u[6,3] + r[6,3] <= 0
 mccormick1[6,7]: - u[6,7] + r[6,7] <= 0
 mccormick1[7,0]: - u[7,0] + r[7,0] <= 0
 mccormick1[7,1]: - u[7,1] + r[7,1] <= 0
 mccormick1[7,2]: - u[7,2] + r[7,2] <= 0
 mccormick1[7,3]: - u[7,3] + r[7,3] <= 0
 mccormick1[7,4]: - u[7,4] + r[7,4] <= 0
 mccormick1[7,5]: - u[7,5] + r[7,5] <= 0
 mccormick1[7,6]: - u[7,6] + r[7,6] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[0,7]: - y[0,7] + r[0,7] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
 mccormick2[1,7]: - y[1,7] + r[1,7] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[2,6]: - y[2,6] + r[2,6] <= 0
 mccormick2[2,7]: - y[2,7] + r[2,7] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[3,6]: - y[3,6] + r[3,6] <= 0
 mccormick2[3,7]: - y[3,7] + r[3,7] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,7]: - y[4,7] + r[4,7] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,7]: - y[5,7] + r[5,7] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,3]: - y[6,3] + r[6,3] <= 0
 mccormick2[6,7]: - y[6,7] + r[6,7] <= 0
 mccormick2[7,0]: - y[7,0] + r[7,0] <= 0
 mccormick2[7,1]: - y[7,1] + r[7,1] <= 0
 mccormick2[7,2]: - y[7,2] + r[7,2] <= 0
 mccormick2[7,3]: - y[7,3] + r[7,3] <= 0
 mccormick2[7,4]: - y[7,4] + r[7,4] <= 0
 mccormick2[7,5]: - y[7,5] + r[7,5] <= 0
 mccormick2[7,6]: - y[7,6] + r[7,6] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[0,7]: - y[0,7] - u[0,7] + r[0,7] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
 mccormick3[1,7]: - y[1,7] - u[1,7] + r[1,7] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[2,6]: - y[2,6] - u[2,6] + r[2,6] >= -1
 mccormick3[2,7]: - y[2,7] - u[2,7] + r[2,7] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[3,6]: - y[3,6] - u[3,6] + r[3,6] >= -1
 mccormick3[3,7]: - y[3,7] - u[3,7] + r[3,7] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,7]: - y[4,7] - u[4,7] + r[4,7] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,7]: - y[5,7] - u[5,7] + r[5,7] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,3]: - y[6,3] - u[6,3] + r[6,3] >= -1
 mccormick3[6,7]: - y[6,7] - u[6,7] + r[6,7] >= -1
 mccormick3[7,0]: - y[7,0] - u[7,0] + r[7,0] >= -1
 mccormick3[7,1]: - y[7,1] - u[7,1] + r[7,1] >= -1
 mccormick3[7,2]: - y[7,2] - u[7,2] + r[7,2] >= -1
 mccormick3[7,3]: - y[7,3] - u[7,3] + r[7,3] >= -1
 mccormick3[7,4]: - y[7,4] - u[7,4] + r[7,4] >= -1
 mccormick3[7,5]: - y[7,5] - u[7,5] + r[7,5] >= -1
 mccormick3[7,6]: - y[7,6] - u[7,6] + r[7,6] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,7] y[1,0] y[1,2] y[1,3] y[1,6]
 y[1,7] y[2,0] y[2,1] y[2,3] y[2,4] y[2,5] y[2,6] y[2,7] y[3,0] y[3,1]
 y[3,2] y[3,4] y[3,5] y[3,6] y[3,7] y[4,0] y[4,2] y[4,3] y[4,5] y[4,7]
 y[5,0] y[5,2] y[5,3] y[5,4] y[5,7] y[6,1] y[6,2] y[6,3] y[6,7] y[7,0]
 y[7,1] y[7,2] y[7,3] y[7,4] y[7,5] y[7,6] x[0,1] x[0,2] x[0,3] x[0,4]
 x[0,5] x[0,7] x[1,0] x[1,2] x[1,3] x[1,6] x[1,7] x[2,0] x[2,1] x[2,3]
 x[2,4] x[2,5] x[2,6] x[2,7] x[3,0] x[3,1] x[3,2] x[3,4] x[3,5] x[3,6]
 x[3,7] x[4,0] x[4,2] x[4,3] x[4,5] x[4,7] x[5,0] x[5,2] x[5,3] x[5,4]
 x[5,7] x[6,1] x[6,2] x[6,3] x[6,7] x[7,0] x[7,1] x[7,2] x[7,3] x[7,4]
 x[7,5] x[7,6] u[0,1] u[0,2] u[0,3] u[0,4] u[0,5] u[0,7] u[1,0] u[1,2]
 u[1,3] u[1,6] u[1,7] u[2,0] u[2,1] u[2,3] u[2,4] u[2,5] u[2,6] u[2,7]
 u[3,0] u[3,1] u[3,2] u[3,4] u[3,5] u[3,6] u[3,7] u[4,0] u[4,2] u[4,3]
 u[4,5] u[4,7] u[5,0] u[5,2] u[5,3] u[5,4] u[5,7] u[6,1] u[6,2] u[6,3]
 u[6,7] u[7,0] u[7,1] u[7,2] u[7,3] u[7,4] u[7,5] u[7,6] r[0,1] r[0,2]
 r[0,3] r[0,4] r[0,5] r[0,7] r[1,0] r[1,2] r[1,3] r[1,6] r[1,7] r[2,0]
 r[2,1] r[2,3] r[2,4] r[2,5] r[2,6] r[2,7] r[3,0] r[3,1] r[3,2] r[3,4]
 r[3,5] r[3,6] r[3,7] r[4,0] r[4,2] r[4,3] r[4,5] r[4,7] r[5,0] r[5,2]
 r[5,3] r[5,4] r[5,7] r[6,1] r[6,2] r[6,3] r[6,7] r[7,0] r[7,1] r[7,2]
 r[7,3] r[7,4] r[7,5] r[7,6]
End
