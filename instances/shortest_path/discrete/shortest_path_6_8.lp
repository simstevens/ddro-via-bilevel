\ Model nohadani_6_8
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9d6f60db6d04e09d
Minimize
  58.85575587824864 y[0,1] + 33.24154027718932 y[0,2]
   + 31.89043743820395 y[0,3] + 39.69886648255842 y[0,4]
   + 48.41487374764082 y[0,5] + 58.85575587824864 y[1,0]
   + 58.69412236331676 y[1,2] + 50.24937810560445 y[1,3]
   + 51.22499389946279 y[1,4] + 39.59797974644666 y[1,5]
   + 33.24154027718932 y[2,0] + 58.69412236331676 y[2,1]
   + 59.4810894318522 y[2,3] + 26.47640458974745 y[2,5]
   + 31.89043743820395 y[3,0] + 50.24937810560445 y[3,1]
   + 59.4810894318522 y[3,2] + 7.810249675906654 y[3,4]
   + 39.69886648255842 y[4,0] + 51.22499389946279 y[4,1]
   + 7.810249675906654 y[4,3] + 48.41487374764082 y[5,0]
   + 39.59797974644666 y[5,1] + 26.47640458974745 y[5,2] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[1,0] + x[1,2] + x[1,3] + x[1,4] + x[1,5]
   + x[2,0] + x[2,1] + x[2,3] + x[2,5] + x[3,0] + x[3,1] + x[3,2] + x[3,4]
   + x[4,0] + x[4,1] + x[4,3] + x[5,0] + x[5,1] + x[5,2]
   + 5.885575587824865 r[0,1] + 3.324154027718933 r[0,2]
   + 3.189043743820395 r[0,3] + 3.969886648255842 r[0,4]
   + 4.841487374764082 r[0,5] + 5.885575587824865 r[1,0]
   + 5.869412236331677 r[1,2] + 5.024937810560445 r[1,3]
   + 5.122499389946279 r[1,4] + 3.959797974644666 r[1,5]
   + 3.324154027718933 r[2,0] + 5.869412236331677 r[2,1]
   + 5.948108943185221 r[2,3] + 2.647640458974745 r[2,5]
   + 3.189043743820395 r[3,0] + 5.024937810560445 r[3,1]
   + 5.948108943185221 r[3,2] + 0.7810249675906654 r[3,4]
   + 3.969886648255842 r[4,0] + 5.122499389946279 r[4,1]
   + 0.7810249675906654 r[4,3] + 4.841487374764082 r[5,0]
   + 3.959797974644666 r[5,1] + 2.647640458974745 r[5,2]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,4]
   - y[1,5] + y[2,1] + y[3,1] + y[4,1] + y[5,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,5] + y[3,2] + y[5,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] + y[4,3] = 0
 flow_cons_source: - y[0,4] - y[1,4] - y[3,4] + y[4,0] + y[4,1] + y[4,3]
   = 1
 flow_cons_target: y[0,5] + y[1,5] + y[2,5] - y[5,0] - y[5,1] - y[5,2] = 1
 primal_lower: 1.245214209992595 x[0,1] + 2.394600095207774 x[0,2]
   + 0.7489930438310689 x[0,3] + 3.642618081581624 x[0,4]
   + 2.049396546613796 x[0,5] + 3.847146409593055 x[1,0]
   + 0.7803960270034289 x[1,2] + 0.8597942897479631 x[1,3]
   + 1.802714382631491 x[1,4] + 0.8619711176562423 x[1,5]
   + 1.791982956198566 x[2,0] + 2.931383181083215 x[2,1]
   + 1.75281615536524 x[2,3] + 0.4391212442705227 x[2,5]
   + 1.760694106877611 x[3,0] + 2.723115478810882 x[3,1]
   + 1.162683653523494 x[3,2] + 3.984801354717965 x[3,4]
   + 3.025116806443598 x[4,0] + 4.312230060623357 x[4,1]
   + 1.420591798313749 x[4,3] + 1.523954246122695 x[5,0]
   + 3.146421417708478 x[5,1] + 1.898721069786945 x[5,2] + 56 u[0,1]
   + 37 u[0,2] + 71 u[0,3] + 16 u[0,4] + 69 u[0,5] + 22 u[1,0] + 66 u[1,2]
   + 68 u[1,3] + 46 u[1,4] + 23 u[1,5] + 84 u[2,0] + 36 u[2,1] + 37 u[2,3]
   + 37 u[2,5] + 73 u[3,0] + 57 u[3,1] + 98 u[3,2] + 17 u[3,4] + 10 u[4,0]
   + 63 u[4,1] + 10 u[4,3] + 80 u[5,0] + 17 u[5,1] + 55 u[5,2] <= 104
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[1,0] y[1,2] y[1,3] y[1,4] y[1,5]
 y[2,0] y[2,1] y[2,3] y[2,5] y[3,0] y[3,1] y[3,2] y[3,4] y[4,0] y[4,1]
 y[4,3] y[5,0] y[5,1] y[5,2] x[0,1] x[0,2] x[0,3] x[0,4] x[0,5] x[1,0]
 x[1,2] x[1,3] x[1,4] x[1,5] x[2,0] x[2,1] x[2,3] x[2,5] x[3,0] x[3,1]
 x[3,2] x[3,4] x[4,0] x[4,1] x[4,3] x[5,0] x[5,1] x[5,2] u[0,1] u[0,2]
 u[0,3] u[0,4] u[0,5] u[1,0] u[1,2] u[1,3] u[1,4] u[1,5] u[2,0] u[2,1]
 u[2,3] u[2,5] u[3,0] u[3,1] u[3,2] u[3,4] u[4,0] u[4,1] u[4,3] u[5,0]
 u[5,1] u[5,2] r[0,1] r[0,2] r[0,3] r[0,4] r[0,5] r[1,0] r[1,2] r[1,3]
 r[1,4] r[1,5] r[2,0] r[2,1] r[2,3] r[2,5] r[3,0] r[3,1] r[3,2] r[3,4]
 r[4,0] r[4,1] r[4,3] r[5,0] r[5,1] r[5,2]
End
