\ Model nohadani_5_2
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa1d49c5c4aa7c587
Minimize
  41.7612260356422 y[0,1] + 5 y[0,2] + 80.60397012554654 y[0,3]
   + 53.14132102234569 y[0,4] + 41.7612260356422 y[1,0]
   + 46.57252408878007 y[1,2] + 5 y[2,0] + 46.57252408878007 y[2,1]
   + 77.6659513557904 y[2,3] + 51.66236541235796 y[2,4]
   + 80.60397012554654 y[3,0] + 77.6659513557904 y[3,2]
   + 34.0147027033899 y[3,4] + 53.14132102234569 y[4,0]
   + 51.66236541235796 y[4,2] + 34.0147027033899 y[4,3] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[1,0] + x[1,2] + x[2,0] + x[2,1] + x[2,3] + x[2,4]
   + x[3,0] + x[3,2] + x[3,4] + x[4,0] + x[4,2] + x[4,3]
   + 4.17612260356422 r[0,1] + 0.5 r[0,2] + 8.060397012554654 r[0,3]
   + 5.31413210223457 r[0,4] + 4.17612260356422 r[1,0]
   + 4.657252408878008 r[1,2] + 0.5 r[2,0] + 4.657252408878008 r[2,1]
   + 7.76659513557904 r[2,3] + 5.166236541235796 r[2,4]
   + 8.060397012554654 r[3,0] + 7.76659513557904 r[3,2]
   + 3.40147027033899 r[3,4] + 5.31413210223457 r[4,0]
   + 5.166236541235796 r[4,2] + 3.40147027033899 r[4,3]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] + y[1,0]
   + y[2,0] + y[3,0] + y[4,0] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] + y[3,2] + y[4,2] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[2,4] + y[3,4] - y[4,0] - y[4,2]
   - y[4,3] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] - y[2,1] = 1
 flow_cons_target: y[0,3] + y[2,3] - y[3,0] - y[3,2] - y[3,4] + y[4,3] = 1
 primal_lower: 2.082969108105111 x[0,1] + 0.7161295533039921 x[0,2]
   + 5.236019333734712 x[0,3] + 1.355719964352444 x[0,4]
   + 0.5351229913437044 x[1,0] + 0.3265824063496401 x[1,2]
   + 2.414397779799816 x[2,0] + 3.934316056999859 x[2,1]
   + 2.848298331011168 x[2,3] + 0.5055683849718523 x[2,4]
   + 2.502234325203992 x[3,0] + 4.006735116468111 x[3,2]
   + 3.589435671405672 x[3,4] + 1.468763650347527 x[4,0]
   + 0.7663180179771979 x[4,2] + 3.593125460671588 x[4,3] + 44 u[0,1]
   + 60 u[0,2] + 98 u[0,3] + 87 u[0,4] + 80 u[1,0] + 6 u[1,2] + 25 u[2,0]
   + 28 u[2,1] + 41 u[2,3] + 2 u[2,4] + 96 u[3,0] + 47 u[3,2] + 64 u[3,4]
   + 36 u[4,0] + 93 u[4,2] + 17 u[4,3] <= 98
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[1,0] y[1,2] y[2,0] y[2,1] y[2,3] y[2,4]
 y[3,0] y[3,2] y[3,4] y[4,0] y[4,2] y[4,3] x[0,1] x[0,2] x[0,3] x[0,4]
 x[1,0] x[1,2] x[2,0] x[2,1] x[2,3] x[2,4] x[3,0] x[3,2] x[3,4] x[4,0]
 x[4,2] x[4,3] u[0,1] u[0,2] u[0,3] u[0,4] u[1,0] u[1,2] u[2,0] u[2,1]
 u[2,3] u[2,4] u[3,0] u[3,2] u[3,4] u[4,0] u[4,2] u[4,3] r[0,1] r[0,2]
 r[0,3] r[0,4] r[1,0] r[1,2] r[2,0] r[2,1] r[2,3] r[2,4] r[3,0] r[3,2]
 r[3,4] r[4,0] r[4,2] r[4,3]
End
