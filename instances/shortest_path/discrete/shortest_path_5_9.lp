\ Model nohadani_5_9
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa1d49c5c4aa7c587
Minimize
  21.2602916254693 y[0,2] + 27.01851217221259 y[0,3]
   + 31.76476034853718 y[0,4] + 55.60575509783138 y[1,2]
   + 57.9827560572969 y[1,3] + 21.2602916254693 y[2,0]
   + 55.60575509783138 y[2,1] + 19.84943324127921 y[2,3]
   + 34.0147027033899 y[2,4] + 27.01851217221259 y[3,0]
   + 57.9827560572969 y[3,1] + 19.84943324127921 y[3,2]
   + 16.0312195418814 y[3,4] + 31.76476034853718 y[4,0]
   + 34.0147027033899 y[4,2] + 16.0312195418814 y[4,3] + x[0,2] + x[0,3]
   + x[0,4] + x[1,2] + x[1,3] + x[2,0] + x[2,1] + x[2,3] + x[2,4] + x[3,0]
   + x[3,1] + x[3,2] + x[3,4] + x[4,0] + x[4,2] + x[4,3]
   + 2.12602916254693 r[0,2] + 2.701851217221259 r[0,3]
   + 3.176476034853718 r[0,4] + 5.560575509783138 r[1,2]
   + 5.79827560572969 r[1,3] + 2.12602916254693 r[2,0]
   + 5.560575509783138 r[2,1] + 1.984943324127921 r[2,3]
   + 3.40147027033899 r[2,4] + 2.701851217221259 r[3,0]
   + 5.79827560572969 r[3,1] + 1.984943324127921 r[3,2]
   + 1.60312195418814 r[3,4] + 3.176476034853718 r[4,0]
   + 3.40147027033899 r[4,2] + 1.60312195418814 r[4,3]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] + y[3,2] + y[4,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] + y[4,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[2,4] + y[3,4] - y[4,0] - y[4,2]
   - y[4,3] = 0
 flow_cons_source: y[0,2] + y[0,3] + y[0,4] - y[2,0] - y[3,0] - y[4,0] = 1
 flow_cons_target: - y[1,2] - y[1,3] + y[2,1] + y[3,1] = 1
 primal_lower: 0.8034139381160007 x[0,2] + 4.072392330759926 x[0,3]
   + 3.463789169665875 x[0,4] + 0.0918656535655102 x[1,2]
   + 0.2606191994311566 x[1,3] + 2.76121235407162 x[2,0]
   + 0.4683756134588233 x[2,1] + 3.108696578261581 x[2,3]
   + 4.831430911400826 x[2,4] + 3.025800491124965 x[3,0]
   + 1.223234363862926 x[3,1] + 3.49991321846775 x[3,2]
   + 0.3667697075144634 x[3,4] + 1.06075108999589 x[4,0]
   + 1.66614393759738 x[4,2] + 4.465881408302879 x[4,3] + 71 u[0,2]
   + 15 u[0,3] + 73 u[0,4] + 2 u[1,2] + 99 u[1,3] + 41 u[2,0] + 56 u[2,1]
   + 51 u[2,3] + 92 u[2,4] + 93 u[3,0] + 31 u[3,1] + 74 u[3,2] + 15 u[3,4]
   + 79 u[4,0] + 12 u[4,2] + 32 u[4,3] <= 99
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
Bounds
Binaries
 y[0,2] y[0,3] y[0,4] y[1,2] y[1,3] y[2,0] y[2,1] y[2,3] y[2,4] y[3,0]
 y[3,1] y[3,2] y[3,4] y[4,0] y[4,2] y[4,3] x[0,2] x[0,3] x[0,4] x[1,2]
 x[1,3] x[2,0] x[2,1] x[2,3] x[2,4] x[3,0] x[3,1] x[3,2] x[3,4] x[4,0]
 x[4,2] x[4,3] u[0,2] u[0,3] u[0,4] u[1,2] u[1,3] u[2,0] u[2,1] u[2,3]
 u[2,4] u[3,0] u[3,1] u[3,2] u[3,4] u[4,0] u[4,2] u[4,3] r[0,2] r[0,3]
 r[0,4] r[1,2] r[1,3] r[2,0] r[2,1] r[2,3] r[2,4] r[3,0] r[3,1] r[3,2]
 r[3,4] r[4,0] r[4,2] r[4,3]
End
