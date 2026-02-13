\ Model sp_4_4
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xdf8e95fb0fdc88e3
Minimize
  24.33 y[0,1] + 69.57 y[0,2] + 73.55 y[0,3] + 24.33 y[1,0] + 76.53 y[1,3]
   + 69.57 y[2,0] + 37.48 y[2,3] + 73.55 y[3,0] + 76.53 y[3,1]
   + 37.48 y[3,2] + 2.433 r[0,1] + 6.957 r[0,2] + 7.355 r[0,3]
   + 2.433 r[1,0] + 7.653 r[1,3] + 6.957 r[2,0] + 3.748 r[2,3]
   + 7.355 r[3,0] + 7.653 r[3,1] + 3.748 r[3,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] + y[1,0] + y[2,0]
   + y[3,0] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,3] - y[3,1] = 1
 flow_cons_target: y[0,2] - y[2,0] - y[2,3] + y[3,2] = 1
 primal_lower: - 7.52 y[0,1] - 6.09 y[0,2] - 2.39 y[0,3] - 7.28 y[1,0]
   - 3.01 y[1,3] - 9 y[2,0] - 0.41 y[2,3] - 4.23 y[3,0] - 8.76 y[3,1]
   - 4.37 y[3,2] + 14 u[0,1] + 72 u[0,2] + 54 u[0,3] + 85 u[1,0]
   + 84 u[1,3] + 58 u[2,0] + 77 u[2,3] + 22 u[3,0] + 82 u[3,1] + 96 u[3,2]
   <= 96
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[1,0] y[1,3] y[2,0] y[2,3] y[3,0] y[3,1] y[3,2]
 u[0,1] u[0,2] u[0,3] u[1,0] u[1,3] u[2,0] u[2,3] u[3,0] u[3,1] u[3,2]
 r[0,1] r[0,2] r[0,3] r[1,0] r[1,3] r[2,0] r[2,3] r[3,0] r[3,1] r[3,2]
End
