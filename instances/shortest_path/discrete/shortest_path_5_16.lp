\ Model nohadani_5_16
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa1d49c5c4aa7c587
Minimize
  39.45883931389772 y[0,1] + 32.20248437620923 y[0,2]
   + 65.29931086925804 y[0,3] + 72.47068372797375 y[0,4]
   + 39.45883931389772 y[1,0] + 57.77542730261716 y[1,2]
   + 50.48762224545735 y[1,4] + 32.20248437620923 y[2,0]
   + 57.77542730261716 y[2,1] + 38.27531841800928 y[2,3]
   + 65.79513659838392 y[2,4] + 65.29931086925804 y[3,0]
   + 38.27531841800928 y[3,2] + 72.47068372797375 y[4,0]
   + 50.48762224545735 y[4,1] + 65.79513659838392 y[4,2] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[1,0] + x[1,2] + x[1,4] + x[2,0] + x[2,1] + x[2,3]
   + x[2,4] + x[3,0] + x[3,2] + x[4,0] + x[4,1] + x[4,2]
   + 3.945883931389772 r[0,1] + 3.220248437620924 r[0,2]
   + 6.529931086925804 r[0,3] + 7.247068372797376 r[0,4]
   + 3.945883931389772 r[1,0] + 5.777542730261716 r[1,2]
   + 5.048762224545736 r[1,4] + 3.220248437620924 r[2,0]
   + 5.777542730261716 r[2,1] + 3.827531841800928 r[2,3]
   + 6.579513659838392 r[2,4] + 6.529931086925804 r[3,0]
   + 3.827531841800928 r[3,2] + 7.247068372797376 r[4,0]
   + 5.048762224545736 r[4,1] + 6.579513659838392 r[4,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] + y[1,0]
   + y[2,0] + y[3,0] + y[4,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,4] + y[2,1]
   + y[4,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] + y[3,2] + y[4,2] = 0
 flow_cons_source: - y[0,3] - y[2,3] + y[3,0] + y[3,2] = 1
 flow_cons_target: y[0,4] + y[1,4] + y[2,4] - y[4,0] - y[4,1] - y[4,2] = 1
 primal_lower: 1.887624418813394 x[0,1] + 1.361725045532315 x[0,2]
   + 4.795952635511798 x[0,3] + 4.716671392985913 x[0,4]
   + 0.8423346825381144 x[1,0] + 2.186075092508904 x[1,2]
   + 3.607497622881457 x[1,4] + 2.106745167685736 x[2,0]
   + 4.965268057702496 x[2,1] + 0.7548750903840065 x[2,3]
   + 3.780793638257492 x[2,4] + 3.884790905124242 x[3,0]
   + 4.844648833823594 x[3,2] + 0.8724612898626077 x[4,0]
   + 0.4571937613991828 x[4,1] + 4.81946928663093 x[4,2] + 50 u[0,1]
   + 58 u[0,2] + 24 u[0,3] + 25 u[0,4] + 6 u[1,0] + 4 u[1,2] + 99 u[1,4]
   + 2 u[2,0] + 39 u[2,1] + 80 u[2,3] + 42 u[2,4] + 5 u[3,0] + 42 u[3,2]
   + 82 u[4,0] + 7 u[4,1] + 79 u[4,2] <= 99
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[1,0] y[1,2] y[1,4] y[2,0] y[2,1] y[2,3]
 y[2,4] y[3,0] y[3,2] y[4,0] y[4,1] y[4,2] x[0,1] x[0,2] x[0,3] x[0,4]
 x[1,0] x[1,2] x[1,4] x[2,0] x[2,1] x[2,3] x[2,4] x[3,0] x[3,2] x[4,0]
 x[4,1] x[4,2] u[0,1] u[0,2] u[0,3] u[0,4] u[1,0] u[1,2] u[1,4] u[2,0]
 u[2,1] u[2,3] u[2,4] u[3,0] u[3,2] u[4,0] u[4,1] u[4,2] r[0,1] r[0,2]
 r[0,3] r[0,4] r[1,0] r[1,2] r[1,4] r[2,0] r[2,1] r[2,3] r[2,4] r[3,0]
 r[3,2] r[4,0] r[4,1] r[4,2]
End
