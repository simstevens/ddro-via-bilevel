\ Model nohadani_7_20
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x917f322750627386
Minimize
  45.25483399593904 y[0,1] + 26.41968962724581 y[0,2]
   + 81.56592425762121 y[0,3] + 38.94868418830089 y[0,4]
   + 18.68154169226941 y[0,5] + 53.41348144429457 y[0,6]
   + 45.25483399593904 y[1,0] + 21.02379604162864 y[1,2]
   + 6.708203932499369 y[1,4] + 62.20128616033595 y[1,5]
   + 74.00675644831355 y[1,6] + 26.41968962724581 y[2,0]
   + 21.02379604162864 y[2,1] + 16.27882059609971 y[2,4]
   + 41.77319714841084 y[2,5] + 68.00735254367721 y[2,6]
   + 81.56592425762121 y[3,0] + 65.11528238439882 y[3,5]
   + 38.94868418830089 y[4,0] + 6.708203932499369 y[4,1]
   + 16.27882059609971 y[4,2] + 56.30275304103699 y[4,5]
   + 68.11754546370561 y[4,6] + 18.68154169226941 y[5,0]
   + 62.20128616033595 y[5,1] + 41.77319714841084 y[5,2]
   + 65.11528238439882 y[5,3] + 56.30275304103699 y[5,4]
   + 63.00793600809346 y[5,6] + 53.41348144429457 y[6,0]
   + 74.00675644831355 y[6,1] + 68.00735254367721 y[6,2]
   + 68.11754546370561 y[6,4] + 63.00793600809346 y[6,5] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[0,6] + x[1,0] + x[1,2] + x[1,4] + x[1,5]
   + x[1,6] + x[2,0] + x[2,1] + x[2,4] + x[2,5] + x[2,6] + x[3,0] + x[3,5]
   + x[4,0] + x[4,1] + x[4,2] + x[4,5] + x[4,6] + x[5,0] + x[5,1] + x[5,2]
   + x[5,3] + x[5,4] + x[5,6] + x[6,0] + x[6,1] + x[6,2] + x[6,4] + x[6,5]
   + 4.525483399593905 r[0,1] + 2.641968962724581 r[0,2]
   + 8.156592425762121 r[0,3] + 3.894868418830089 r[0,4]
   + 1.868154169226941 r[0,5] + 5.341348144429457 r[0,6]
   + 4.525483399593905 r[1,0] + 2.102379604162864 r[1,2]
   + 0.670820393249937 r[1,4] + 6.220128616033595 r[1,5]
   + 7.400675644831356 r[1,6] + 2.641968962724581 r[2,0]
   + 2.102379604162864 r[2,1] + 1.627882059609971 r[2,4]
   + 4.177319714841085 r[2,5] + 6.800735254367722 r[2,6]
   + 8.156592425762121 r[3,0] + 6.511528238439883 r[3,5]
   + 3.894868418830089 r[4,0] + 0.670820393249937 r[4,1]
   + 1.627882059609971 r[4,2] + 5.630275304103699 r[4,5]
   + 6.811754546370562 r[4,6] + 1.868154169226941 r[5,0]
   + 6.220128616033595 r[5,1] + 4.177319714841085 r[5,2]
   + 6.511528238439883 r[5,3] + 5.630275304103699 r[5,4]
   + 6.300793600809346 r[5,6] + 5.341348144429457 r[6,0]
   + 7.400675644831356 r[6,1] + 6.800735254367722 r[6,2]
   + 6.811754546370562 r[6,4] + 6.300793600809346 r[6,5]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   - y[0,6] + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] + y[6,0] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,4]
   - y[2,5] - y[2,6] + y[4,2] + y[5,2] + y[6,2] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] - y[4,0] - y[4,1]
   - y[4,2] - y[4,5] - y[4,6] + y[5,4] + y[6,4] = 0
 flow_cons_inner_nodes[5]: y[0,5] + y[1,5] + y[2,5] + y[3,5] + y[4,5]
   - y[5,0] - y[5,1] - y[5,2] - y[5,3] - y[5,4] - y[5,6] + y[6,5] = 0
 flow_cons_inner_nodes[6]: y[0,6] + y[1,6] + y[2,6] + y[4,6] + y[5,6]
   - y[6,0] - y[6,1] - y[6,2] - y[6,4] - y[6,5] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] + y[1,4] + y[1,5] + y[1,6]
   - y[2,1] - y[4,1] - y[5,1] - y[6,1] = 1
 flow_cons_target: y[0,3] - y[3,0] - y[3,5] + y[5,3] = 1
 primal_lower: 3.080334588583018 x[0,1] + 2.946569357086913 x[0,2]
   + 0.6205443079356306 x[0,3] + 1.676836933168218 x[0,4]
   + 1.051217466272125 x[0,5] + 0.4157002933254411 x[0,6]
   + 2.045089742571831 x[1,0] + 4.620488850822161 x[1,2]
   + 1.468639857995808 x[1,4] + 4.837128717140505 x[1,5]
   + 4.933067578856873 x[1,6] + 4.460684550583195 x[2,0]
   + 2.192173269739786 x[2,1] + 4.543835192801501 x[2,4]
   + 3.639152887412527 x[2,5] + 2.949758544883344 x[2,6]
   + 3.474177274300613 x[3,0] + 0.7190846499210795 x[3,5]
   + 3.945253242765105 x[4,0] + 1.083749854341585 x[4,1]
   + 1.990627115326835 x[4,2] + 1.294362904231527 x[4,5]
   + 5.039764508347725 x[4,6] + 0.8968494097487995 x[5,0]
   + 3.587699271169956 x[5,1] + 1.7503422657911 x[5,2]
   + 1.642123096622278 x[5,3] + 0.6514192148445724 x[5,4]
   + 0.6093965385127442 x[5,6] + 5.003838771876863 x[6,0]
   + 0.8097112625717831 x[6,1] + 2.253272820509319 x[6,2]
   + 2.882171044680023 x[6,4] + 0.6514077075715426 x[6,5] + 49 u[0,1]
   + 10 u[0,2] + 56 u[0,3] + 85 u[0,4] + 58 u[0,5] + 47 u[0,6] + 7 u[1,0]
   + 37 u[1,2] + 95 u[1,4] + 100 u[1,5] + 17 u[1,6] + 33 u[2,0] + 38 u[2,1]
   + 94 u[2,4] + 66 u[2,5] + 70 u[2,6] + 71 u[3,0] + 90 u[3,5] + 19 u[4,0]
   + 64 u[4,1] + 59 u[4,2] + 49 u[4,5] + 30 u[4,6] + 92 u[5,0] + 2 u[5,1]
   + 10 u[5,2] + 92 u[5,3] + u[5,4] + 95 u[5,6] + 81 u[6,0] + 83 u[6,1]
   + 97 u[6,2] + 81 u[6,4] + 31 u[6,5] <= 173
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[0,6]: - u[0,6] + r[0,6] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[1,6]: - u[1,6] + r[1,6] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[2,6]: - u[2,6] + r[2,6] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,6]: - u[4,6] + r[4,6] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,6]: - u[5,6] + r[5,6] <= 0
 mccormick1[6,0]: - u[6,0] + r[6,0] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,4]: - u[6,4] + r[6,4] <= 0
 mccormick1[6,5]: - u[6,5] + r[6,5] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[0,6]: - y[0,6] + r[0,6] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[2,6]: - y[2,6] + r[2,6] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,6]: - y[4,6] + r[4,6] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,6]: - y[5,6] + r[5,6] <= 0
 mccormick2[6,0]: - y[6,0] + r[6,0] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,4]: - y[6,4] + r[6,4] <= 0
 mccormick2[6,5]: - y[6,5] + r[6,5] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[0,6]: - y[0,6] - u[0,6] + r[0,6] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[2,6]: - y[2,6] - u[2,6] + r[2,6] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,6]: - y[4,6] - u[4,6] + r[4,6] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,6]: - y[5,6] - u[5,6] + r[5,6] >= -1
 mccormick3[6,0]: - y[6,0] - u[6,0] + r[6,0] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,4]: - y[6,4] - u[6,4] + r[6,4] >= -1
 mccormick3[6,5]: - y[6,5] - u[6,5] + r[6,5] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,6] y[1,0] y[1,2] y[1,4] y[1,5]
 y[1,6] y[2,0] y[2,1] y[2,4] y[2,5] y[2,6] y[3,0] y[3,5] y[4,0] y[4,1]
 y[4,2] y[4,5] y[4,6] y[5,0] y[5,1] y[5,2] y[5,3] y[5,4] y[5,6] y[6,0]
 y[6,1] y[6,2] y[6,4] y[6,5] x[0,1] x[0,2] x[0,3] x[0,4] x[0,5] x[0,6]
 x[1,0] x[1,2] x[1,4] x[1,5] x[1,6] x[2,0] x[2,1] x[2,4] x[2,5] x[2,6]
 x[3,0] x[3,5] x[4,0] x[4,1] x[4,2] x[4,5] x[4,6] x[5,0] x[5,1] x[5,2]
 x[5,3] x[5,4] x[5,6] x[6,0] x[6,1] x[6,2] x[6,4] x[6,5] u[0,1] u[0,2]
 u[0,3] u[0,4] u[0,5] u[0,6] u[1,0] u[1,2] u[1,4] u[1,5] u[1,6] u[2,0]
 u[2,1] u[2,4] u[2,5] u[2,6] u[3,0] u[3,5] u[4,0] u[4,1] u[4,2] u[4,5]
 u[4,6] u[5,0] u[5,1] u[5,2] u[5,3] u[5,4] u[5,6] u[6,0] u[6,1] u[6,2]
 u[6,4] u[6,5] r[0,1] r[0,2] r[0,3] r[0,4] r[0,5] r[0,6] r[1,0] r[1,2]
 r[1,4] r[1,5] r[1,6] r[2,0] r[2,1] r[2,4] r[2,5] r[2,6] r[3,0] r[3,5]
 r[4,0] r[4,1] r[4,2] r[4,5] r[4,6] r[5,0] r[5,1] r[5,2] r[5,3] r[5,4]
 r[5,6] r[6,0] r[6,1] r[6,2] r[6,4] r[6,5]
End
