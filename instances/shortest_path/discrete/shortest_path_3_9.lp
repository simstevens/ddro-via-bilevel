\ Model nohadani_3_9
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xf9a0f44b955a6a9b
Minimize
  61.18823416311342 y[0,1] + 18.02775637731995 y[0,2]
   + 61.18823416311342 y[1,0] + 43.41658669218482 y[1,2]
   + 18.02775637731995 y[2,0] + 43.41658669218482 y[2,1] + x[0,1] + x[0,2]
   + x[1,0] + x[1,2] + x[2,0] + x[2,1] + 6.118823416311343 r[0,1]
   + 1.802775637731995 r[0,2] + 6.118823416311343 r[1,0]
   + 4.341658669218482 r[1,2] + 1.802775637731995 r[2,0]
   + 4.341658669218482 r[2,1]
Subject To
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] = 0
 flow_cons_source: y[0,1] + y[0,2] - y[1,0] - y[2,0] = 1
 flow_cons_target: y[0,1] - y[1,0] - y[1,2] + y[2,1] = 1
 primal_lower: 9.368838110960123 x[0,1] + 5.609746111502868 x[0,2]
   + 2.731307412995472 x[1,0] + 6.097780347758023 x[1,2]
   + 1.243273998701136 x[2,0] + 2.55498627181823 x[2,1] + 27 u[0,1]
   + 47 u[0,2] + 81 u[1,0] + 42 u[1,2] + 15 u[2,0] + 73 u[2,1] <= 81
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[1,0] y[1,2] y[2,0] y[2,1] x[0,1] x[0,2] x[1,0] x[1,2]
 x[2,0] x[2,1] u[0,1] u[0,2] u[1,0] u[1,2] u[2,0] u[2,1] r[0,1] r[0,2]
 r[1,0] r[1,2] r[2,0] r[2,1]
End
