\ Model sp_8_3
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf0d5bc839e6ff29
Minimize
  35 y[0,1] + 28.3 y[0,2] + 51.79 y[0,3] + 26.25 y[0,4] + 51.09 y[0,5]
   + 38.05 y[0,6] + 42.3 y[0,7] + 35 y[1,0] + 52.35 y[1,2] + 35.51 y[1,3]
   + 60.42 y[1,4] + 63.6 y[1,5] + 31.06 y[1,6] + 28.3 y[2,0] + 52.35 y[2,1]
   + 48.84 y[2,3] + 23.02 y[2,4] + 25.63 y[2,5] + 34.71 y[2,6]
   + 63.95 y[2,7] + 51.79 y[3,0] + 35.51 y[3,1] + 48.84 y[3,2]
   + 43.68 y[3,5] + 14.76 y[3,6] + 26.25 y[4,0] + 60.42 y[4,1]
   + 23.02 y[4,2] + 47.68 y[4,5] + 53.34 y[4,6] + 45.34 y[4,7]
   + 51.09 y[5,0] + 63.6 y[5,1] + 25.63 y[5,2] + 43.68 y[5,3]
   + 47.68 y[5,4] + 35.01 y[5,6] + 38.05 y[6,0] + 31.06 y[6,1]
   + 34.71 y[6,2] + 14.76 y[6,3] + 53.34 y[6,4] + 35.01 y[6,5]
   + 42.3 y[7,0] + 63.95 y[7,2] + 45.34 y[7,4] + 1.71 x[0,1] + 1.81 x[0,2]
   + 0.72 x[0,3] + 0.69 x[0,4] + 3.26 x[0,5] + 0.73 x[0,6] + 2.94 x[0,7]
   + 1.95 x[1,0] + 1.87 x[1,2] + 1.66 x[1,3] + 1.12 x[1,4] + 0.85 x[1,5]
   + 0.37 x[1,6] + 0.83 x[2,0] + 1.64 x[2,1] + 2.61 x[2,3] + 0.67 x[2,4]
   + 0.89 x[2,5] + 0.39 x[2,6] + 1.9 x[2,7] + 2.95 x[3,0] + 1.84 x[3,1]
   + 3.23 x[3,2] + 1.83 x[3,5] + 0.62 x[3,6] + 1.26 x[4,0] + 2.86 x[4,1]
   + 1.2 x[4,2] + 1.2 x[4,5] + 2.66 x[4,6] + 1.79 x[4,7] + 1.66 x[5,0]
   + 1.44 x[5,1] + 0.5 x[5,2] + 2.5 x[5,3] + 1.19 x[5,4] + 1.84 x[5,6]
   + 1.35 x[6,0] + 0.7 x[6,1] + 1.15 x[6,2] + 0.48 x[6,3] + 2.4 x[6,4]
   + 1.51 x[6,5] + 1.84 x[7,0] + 0.88 x[7,2] + 1.85 x[7,4] + 3.5 r[0,1]
   + 2.83 r[0,2] + 5.179 r[0,3] + 2.625 r[0,4] + 5.109 r[0,5]
   + 3.805 r[0,6] + 4.23 r[0,7] + 3.5 r[1,0] + 5.235 r[1,2] + 3.551 r[1,3]
   + 6.042 r[1,4] + 6.36 r[1,5] + 3.106 r[1,6] + 2.83 r[2,0] + 5.235 r[2,1]
   + 4.884 r[2,3] + 2.302 r[2,4] + 2.563 r[2,5] + 3.471 r[2,6]
   + 6.395 r[2,7] + 5.179 r[3,0] + 3.551 r[3,1] + 4.884 r[3,2]
   + 4.368 r[3,5] + 1.476 r[3,6] + 2.625 r[4,0] + 6.042 r[4,1]
   + 2.302 r[4,2] + 4.768 r[4,5] + 5.334 r[4,6] + 4.534 r[4,7]
   + 5.109 r[5,0] + 6.36 r[5,1] + 2.563 r[5,2] + 4.368 r[5,3]
   + 4.768 r[5,4] + 3.501 r[5,6] + 3.805 r[6,0] + 3.106 r[6,1]
   + 3.471 r[6,2] + 1.476 r[6,3] + 5.334 r[6,4] + 3.501 r[6,5]
   + 4.23 r[7,0] + 6.395 r[7,2] + 4.534 r[7,4]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   - y[0,6] - y[0,7] + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] + y[6,0]
   + y[7,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,4]
   - y[1,5] - y[1,6] + y[2,1] + y[3,1] + y[4,1] + y[5,1] + y[6,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] - y[2,5] - y[2,6] - y[2,7] + y[3,2] + y[4,2] + y[5,2] + y[6,2]
   + y[7,2] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] - y[4,0] - y[4,1]
   - y[4,2] - y[4,5] - y[4,6] - y[4,7] + y[5,4] + y[6,4] + y[7,4] = 0
 flow_cons_inner_nodes[5]: y[0,5] + y[1,5] + y[2,5] + y[3,5] + y[4,5]
   - y[5,0] - y[5,1] - y[5,2] - y[5,3] - y[5,4] - y[5,6] + y[6,5] = 0
 flow_cons_inner_nodes[6]: y[0,6] + y[1,6] + y[2,6] + y[3,6] + y[4,6]
   + y[5,6] - y[6,0] - y[6,1] - y[6,2] - y[6,3] - y[6,4] - y[6,5] = 0
 flow_cons_source: - y[0,3] - y[1,3] - y[2,3] + y[3,0] + y[3,1] + y[3,2]
   + y[3,5] + y[3,6] - y[5,3] - y[6,3] = 1
 flow_cons_target: y[0,7] + y[2,7] + y[4,7] - y[7,0] - y[7,2] - y[7,4] = 1
 primal_lower_interdiction[0,1]: x[0,1] + u[0,1] <= 1
 primal_lower_interdiction[0,2]: x[0,2] + u[0,2] <= 1
 primal_lower_interdiction[0,3]: x[0,3] + u[0,3] <= 1
 primal_lower_interdiction[0,4]: x[0,4] + u[0,4] <= 1
 primal_lower_interdiction[0,5]: x[0,5] + u[0,5] <= 1
 primal_lower_interdiction[0,6]: x[0,6] + u[0,6] <= 1
 primal_lower_interdiction[0,7]: x[0,7] + u[0,7] <= 1
 primal_lower_interdiction[1,0]: x[1,0] + u[1,0] <= 1
 primal_lower_interdiction[1,2]: x[1,2] + u[1,2] <= 1
 primal_lower_interdiction[1,3]: x[1,3] + u[1,3] <= 1
 primal_lower_interdiction[1,4]: x[1,4] + u[1,4] <= 1
 primal_lower_interdiction[1,5]: x[1,5] + u[1,5] <= 1
 primal_lower_interdiction[1,6]: x[1,6] + u[1,6] <= 1
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
 primal_lower_interdiction[3,5]: x[3,5] + u[3,5] <= 1
 primal_lower_interdiction[3,6]: x[3,6] + u[3,6] <= 1
 primal_lower_interdiction[4,0]: x[4,0] + u[4,0] <= 1
 primal_lower_interdiction[4,1]: x[4,1] + u[4,1] <= 1
 primal_lower_interdiction[4,2]: x[4,2] + u[4,2] <= 1
 primal_lower_interdiction[4,5]: x[4,5] + u[4,5] <= 1
 primal_lower_interdiction[4,6]: x[4,6] + u[4,6] <= 1
 primal_lower_interdiction[4,7]: x[4,7] + u[4,7] <= 1
 primal_lower_interdiction[5,0]: x[5,0] + u[5,0] <= 1
 primal_lower_interdiction[5,1]: x[5,1] + u[5,1] <= 1
 primal_lower_interdiction[5,2]: x[5,2] + u[5,2] <= 1
 primal_lower_interdiction[5,3]: x[5,3] + u[5,3] <= 1
 primal_lower_interdiction[5,4]: x[5,4] + u[5,4] <= 1
 primal_lower_interdiction[5,6]: x[5,6] + u[5,6] <= 1
 primal_lower_interdiction[6,0]: x[6,0] + u[6,0] <= 1
 primal_lower_interdiction[6,1]: x[6,1] + u[6,1] <= 1
 primal_lower_interdiction[6,2]: x[6,2] + u[6,2] <= 1
 primal_lower_interdiction[6,3]: x[6,3] + u[6,3] <= 1
 primal_lower_interdiction[6,4]: x[6,4] + u[6,4] <= 1
 primal_lower_interdiction[6,5]: x[6,5] + u[6,5] <= 1
 primal_lower_interdiction[7,0]: x[7,0] + u[7,0] <= 1
 primal_lower_interdiction[7,2]: x[7,2] + u[7,2] <= 1
 primal_lower_interdiction[7,4]: x[7,4] + u[7,4] <= 1
 primal_lower_budget: u[0,1] + u[0,2] + u[0,3] + u[0,4] + u[0,5] + u[0,6]
   + u[0,7] + u[1,0] + u[1,2] + u[1,3] + u[1,4] + u[1,5] + u[1,6] + u[2,0]
   + u[2,1] + u[2,3] + u[2,4] + u[2,5] + u[2,6] + u[2,7] + u[3,0] + u[3,1]
   + u[3,2] + u[3,5] + u[3,6] + u[4,0] + u[4,1] + u[4,2] + u[4,5] + u[4,6]
   + u[4,7] + u[5,0] + u[5,1] + u[5,2] + u[5,3] + u[5,4] + u[5,6] + u[6,0]
   + u[6,1] + u[6,2] + u[6,3] + u[6,4] + u[6,5] + u[7,0] + u[7,2] + u[7,4]
   <= 2
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[0,6]: - u[0,6] + r[0,6] <= 0
 mccormick1[0,7]: - u[0,7] + r[0,7] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[1,6]: - u[1,6] + r[1,6] <= 0
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
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[3,6]: - u[3,6] + r[3,6] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,6]: - u[4,6] + r[4,6] <= 0
 mccormick1[4,7]: - u[4,7] + r[4,7] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,6]: - u[5,6] + r[5,6] <= 0
 mccormick1[6,0]: - u[6,0] + r[6,0] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,3]: - u[6,3] + r[6,3] <= 0
 mccormick1[6,4]: - u[6,4] + r[6,4] <= 0
 mccormick1[6,5]: - u[6,5] + r[6,5] <= 0
 mccormick1[7,0]: - u[7,0] + r[7,0] <= 0
 mccormick1[7,2]: - u[7,2] + r[7,2] <= 0
 mccormick1[7,4]: - u[7,4] + r[7,4] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[0,6]: - y[0,6] + r[0,6] <= 0
 mccormick2[0,7]: - y[0,7] + r[0,7] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
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
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[3,6]: - y[3,6] + r[3,6] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,6]: - y[4,6] + r[4,6] <= 0
 mccormick2[4,7]: - y[4,7] + r[4,7] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,6]: - y[5,6] + r[5,6] <= 0
 mccormick2[6,0]: - y[6,0] + r[6,0] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,3]: - y[6,3] + r[6,3] <= 0
 mccormick2[6,4]: - y[6,4] + r[6,4] <= 0
 mccormick2[6,5]: - y[6,5] + r[6,5] <= 0
 mccormick2[7,0]: - y[7,0] + r[7,0] <= 0
 mccormick2[7,2]: - y[7,2] + r[7,2] <= 0
 mccormick2[7,4]: - y[7,4] + r[7,4] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[0,6]: - y[0,6] - u[0,6] + r[0,6] >= -1
 mccormick3[0,7]: - y[0,7] - u[0,7] + r[0,7] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
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
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[3,6]: - y[3,6] - u[3,6] + r[3,6] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,6]: - y[4,6] - u[4,6] + r[4,6] >= -1
 mccormick3[4,7]: - y[4,7] - u[4,7] + r[4,7] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,6]: - y[5,6] - u[5,6] + r[5,6] >= -1
 mccormick3[6,0]: - y[6,0] - u[6,0] + r[6,0] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,3]: - y[6,3] - u[6,3] + r[6,3] >= -1
 mccormick3[6,4]: - y[6,4] - u[6,4] + r[6,4] >= -1
 mccormick3[6,5]: - y[6,5] - u[6,5] + r[6,5] >= -1
 mccormick3[7,0]: - y[7,0] - u[7,0] + r[7,0] >= -1
 mccormick3[7,2]: - y[7,2] - u[7,2] + r[7,2] >= -1
 mccormick3[7,4]: - y[7,4] - u[7,4] + r[7,4] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,6] y[0,7] y[1,0] y[1,2] y[1,3]
 y[1,4] y[1,5] y[1,6] y[2,0] y[2,1] y[2,3] y[2,4] y[2,5] y[2,6] y[2,7]
 y[3,0] y[3,1] y[3,2] y[3,5] y[3,6] y[4,0] y[4,1] y[4,2] y[4,5] y[4,6]
 y[4,7] y[5,0] y[5,1] y[5,2] y[5,3] y[5,4] y[5,6] y[6,0] y[6,1] y[6,2]
 y[6,3] y[6,4] y[6,5] y[7,0] y[7,2] y[7,4] x[0,1] x[0,2] x[0,3] x[0,4]
 x[0,5] x[0,6] x[0,7] x[1,0] x[1,2] x[1,3] x[1,4] x[1,5] x[1,6] x[2,0]
 x[2,1] x[2,3] x[2,4] x[2,5] x[2,6] x[2,7] x[3,0] x[3,1] x[3,2] x[3,5]
 x[3,6] x[4,0] x[4,1] x[4,2] x[4,5] x[4,6] x[4,7] x[5,0] x[5,1] x[5,2]
 x[5,3] x[5,4] x[5,6] x[6,0] x[6,1] x[6,2] x[6,3] x[6,4] x[6,5] x[7,0]
 x[7,2] x[7,4] u[0,1] u[0,2] u[0,3] u[0,4] u[0,5] u[0,6] u[0,7] u[1,0]
 u[1,2] u[1,3] u[1,4] u[1,5] u[1,6] u[2,0] u[2,1] u[2,3] u[2,4] u[2,5]
 u[2,6] u[2,7] u[3,0] u[3,1] u[3,2] u[3,5] u[3,6] u[4,0] u[4,1] u[4,2]
 u[4,5] u[4,6] u[4,7] u[5,0] u[5,1] u[5,2] u[5,3] u[5,4] u[5,6] u[6,0]
 u[6,1] u[6,2] u[6,3] u[6,4] u[6,5] u[7,0] u[7,2] u[7,4] r[0,1] r[0,2]
 r[0,3] r[0,4] r[0,5] r[0,6] r[0,7] r[1,0] r[1,2] r[1,3] r[1,4] r[1,5]
 r[1,6] r[2,0] r[2,1] r[2,3] r[2,4] r[2,5] r[2,6] r[2,7] r[3,0] r[3,1]
 r[3,2] r[3,5] r[3,6] r[4,0] r[4,1] r[4,2] r[4,5] r[4,6] r[4,7] r[5,0]
 r[5,1] r[5,2] r[5,3] r[5,4] r[5,6] r[6,0] r[6,1] r[6,2] r[6,3] r[6,4]
 r[6,5] r[7,0] r[7,2] r[7,4]
End
