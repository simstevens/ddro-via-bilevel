\ Model nohadani_8_15
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x229cff0c87735314
Minimize
  2.23606797749979 y[0,1] + 46.04345773288535 y[0,2]
   + 32.28002478313795 y[0,3] + 61.84658438426491 y[0,4]
   + 65.05382386916237 y[0,5] + 56.46237685397242 y[0,6]
   + 26.1725046566048 y[0,7] + 2.23606797749979 y[1,0] + 47 y[1,2]
   + 31.95309061734092 y[1,3] + 59.66573556070519 y[1,4]
   + 62.93647591023825 y[1,5] + 55.03635162326805 y[1,6]
   + 24.33105012119288 y[1,7] + 46.04345773288535 y[2,0] + 47 y[2,1]
   + 55.46169849544819 y[2,6] + 49.24428900898052 y[2,7]
   + 32.28002478313795 y[3,0] + 31.95309061734092 y[3,1]
   + 57.0087712549569 y[3,5] + 48.79549159502341 y[3,7]
   + 61.84658438426491 y[4,0] + 59.66573556070519 y[4,1]
   + 34.0147027033899 y[4,5] + 37.8549864614954 y[4,6]
   + 38.47076812334269 y[4,7] + 65.05382386916237 y[5,0]
   + 62.93647591023825 y[5,1] + 57.0087712549569 y[5,3]
   + 34.0147027033899 y[5,4] + 68.26419266350405 y[5,6]
   + 52.92447448959697 y[5,7] + 56.46237685397242 y[6,0]
   + 55.03635162326805 y[6,1] + 55.46169849544819 y[6,2]
   + 37.8549864614954 y[6,4] + 68.26419266350405 y[6,5]
   + 32.20248437620923 y[6,7] + 26.1725046566048 y[7,0]
   + 24.33105012119288 y[7,1] + 49.24428900898052 y[7,2]
   + 48.79549159502341 y[7,3] + 38.47076812334269 y[7,4]
   + 52.92447448959697 y[7,5] + 32.20248437620923 y[7,6] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[0,6] + x[0,7] + x[1,0] + x[1,2] + x[1,3]
   + x[1,4] + x[1,5] + x[1,6] + x[1,7] + x[2,0] + x[2,1] + x[2,6] + x[2,7]
   + x[3,0] + x[3,1] + x[3,5] + x[3,7] + x[4,0] + x[4,1] + x[4,5] + x[4,6]
   + x[4,7] + x[5,0] + x[5,1] + x[5,3] + x[5,4] + x[5,6] + x[5,7] + x[6,0]
   + x[6,1] + x[6,2] + x[6,4] + x[6,5] + x[6,7] + x[7,0] + x[7,1] + x[7,2]
   + x[7,3] + x[7,4] + x[7,5] + x[7,6] + 0.223606797749979 r[0,1]
   + 4.604345773288535 r[0,2] + 3.228002478313795 r[0,3]
   + 6.184658438426491 r[0,4] + 6.505382386916238 r[0,5]
   + 5.646237685397242 r[0,6] + 2.61725046566048 r[0,7]
   + 0.223606797749979 r[1,0] + 4.7 r[1,2] + 3.195309061734092 r[1,3]
   + 5.96657355607052 r[1,4] + 6.293647591023825 r[1,5]
   + 5.503635162326805 r[1,6] + 2.433105012119288 r[1,7]
   + 4.604345773288535 r[2,0] + 4.7 r[2,1] + 5.546169849544819 r[2,6]
   + 4.924428900898053 r[2,7] + 3.228002478313795 r[3,0]
   + 3.195309061734092 r[3,1] + 5.70087712549569 r[3,5]
   + 4.879549159502341 r[3,7] + 6.184658438426491 r[4,0]
   + 5.96657355607052 r[4,1] + 3.40147027033899 r[4,5]
   + 3.78549864614954 r[4,6] + 3.847076812334269 r[4,7]
   + 6.505382386916238 r[5,0] + 6.293647591023825 r[5,1]
   + 5.70087712549569 r[5,3] + 3.40147027033899 r[5,4]
   + 6.826419266350405 r[5,6] + 5.292447448959697 r[5,7]
   + 5.646237685397242 r[6,0] + 5.503635162326805 r[6,1]
   + 5.546169849544819 r[6,2] + 3.78549864614954 r[6,4]
   + 6.826419266350405 r[6,5] + 3.220248437620924 r[6,7]
   + 2.61725046566048 r[7,0] + 2.433105012119288 r[7,1]
   + 4.924428900898053 r[7,2] + 4.879549159502341 r[7,3]
   + 3.847076812334269 r[7,4] + 5.292447448959697 r[7,5]
   + 3.220248437620924 r[7,6]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   - y[0,6] - y[0,7] + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] + y[6,0]
   + y[7,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,4]
   - y[1,5] - y[1,6] - y[1,7] + y[2,1] + y[3,1] + y[4,1] + y[5,1] + y[6,1]
   + y[7,1] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] - y[3,0] - y[3,1] - y[3,5]
   - y[3,7] + y[5,3] + y[7,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] - y[4,0] - y[4,1] - y[4,5]
   - y[4,6] - y[4,7] + y[5,4] + y[6,4] + y[7,4] = 0
 flow_cons_inner_nodes[6]: y[0,6] + y[1,6] + y[2,6] + y[4,6] + y[5,6]
   - y[6,0] - y[6,1] - y[6,2] - y[6,4] - y[6,5] - y[6,7] + y[7,6] = 0
 flow_cons_inner_nodes[7]: y[0,7] + y[1,7] + y[2,7] + y[3,7] + y[4,7]
   + y[5,7] + y[6,7] - y[7,0] - y[7,1] - y[7,2] - y[7,3] - y[7,4] - y[7,5]
   - y[7,6] = 0
 flow_cons_source: - y[0,2] - y[1,2] + y[2,0] + y[2,1] + y[2,6] + y[2,7]
   - y[6,2] - y[7,2] = 1
 flow_cons_target: y[0,5] + y[1,5] + y[3,5] + y[4,5] - y[5,0] - y[5,1]
   - y[5,3] - y[5,4] - y[5,6] - y[5,7] + y[6,5] + y[7,5] = 1
 primal_lower: 2.549447702753342 x[0,1] + 0.996908305709303 x[0,2]
   + 0.3187877797385407 x[0,3] + 2.478333433864691 x[0,4]
   + 4.132968061577622 x[0,5] + 1.998552729659994 x[0,6]
   + 2.037141853403769 x[0,7] + 2.465261602721087 x[1,0]
   + 2.8301316842386 x[1,2] + 0.2108964678918366 x[1,3]
   + 0.2535067805154413 x[1,4] + 4.120388164403207 x[1,5]
   + 0.8677613366101485 x[1,6] + 3.590744109186989 x[1,7]
   + 3.061627136676623 x[2,0] + 3.063220341453274 x[2,1]
   + 0.0448578718924185 x[2,6] + 2.119404426762319 x[2,7]
   + 3.211723813104313 x[3,0] + 2.228045386655499 x[3,1]
   + 0.6822979524353548 x[3,5] + 0.7770593545158151 x[3,7]
   + 4.043339748254155 x[4,0] + 1.329666061843126 x[4,1]
   + 3.478302077123243 x[4,5] + 3.435625490849695 x[4,6]
   + 2.377709769764252 x[4,7] + 1.744333936198782 x[5,0]
   + 2.409564554137734 x[5,1] + 3.276263900858961 x[5,3]
   + 4.49117138040343 x[5,4] + 3.150020865321924 x[5,6]
   + 4.717372399888748 x[5,7] + 0.1363089914605407 x[6,0]
   + 0.1550015192627993 x[6,1] + 2.931623574906032 x[6,2]
   + 3.603080890613593 x[6,4] + 2.580486898472222 x[6,5]
   + 4.555109338336309 x[6,7] + 1.381335842105958 x[7,0]
   + 4.46557211754501 x[7,1] + 4.600022793920908 x[7,2]
   + 4.452873446758411 x[7,3] + 3.574415315565947 x[7,4]
   + 3.63285953811818 x[7,5] + 0.0905471273584482 x[7,6] + 43 u[0,1]
   + 99 u[0,2] + 53 u[0,3] + 14 u[0,4] + 15 u[0,5] + 65 u[0,6] + 84 u[0,7]
   + 63 u[1,0] + 52 u[1,2] + 53 u[1,3] + 7 u[1,4] + 26 u[1,5] + 99 u[1,6]
   + 35 u[1,7] + 52 u[2,0] + 76 u[2,1] + 8 u[2,6] + 83 u[2,7] + 76 u[3,0]
   + 97 u[3,1] + 56 u[3,5] + 71 u[3,7] + 19 u[4,0] + 74 u[4,1] + 20 u[4,5]
   + 95 u[4,6] + 93 u[4,7] + 43 u[5,0] + 73 u[5,1] + 22 u[5,3] + 37 u[5,4]
   + 27 u[5,6] + 7 u[5,7] + 76 u[6,0] + 19 u[6,1] + 4 u[6,2] + 87 u[6,4]
   + 36 u[6,5] + 55 u[6,7] + 70 u[7,0] + 62 u[7,1] + 25 u[7,2] + 97 u[7,3]
   + 41 u[7,4] + 90 u[7,5] + 74 u[7,6] <= 224
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
 mccormick1[1,7]: - u[1,7] + r[1,7] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,6]: - u[2,6] + r[2,6] <= 0
 mccormick1[2,7]: - u[2,7] + r[2,7] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[3,7]: - u[3,7] + r[3,7] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,6]: - u[4,6] + r[4,6] <= 0
 mccormick1[4,7]: - u[4,7] + r[4,7] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,6]: - u[5,6] + r[5,6] <= 0
 mccormick1[5,7]: - u[5,7] + r[5,7] <= 0
 mccormick1[6,0]: - u[6,0] + r[6,0] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,4]: - u[6,4] + r[6,4] <= 0
 mccormick1[6,5]: - u[6,5] + r[6,5] <= 0
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
 mccormick2[0,6]: - y[0,6] + r[0,6] <= 0
 mccormick2[0,7]: - y[0,7] + r[0,7] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
 mccormick2[1,7]: - y[1,7] + r[1,7] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,6]: - y[2,6] + r[2,6] <= 0
 mccormick2[2,7]: - y[2,7] + r[2,7] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[3,7]: - y[3,7] + r[3,7] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,6]: - y[4,6] + r[4,6] <= 0
 mccormick2[4,7]: - y[4,7] + r[4,7] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,6]: - y[5,6] + r[5,6] <= 0
 mccormick2[5,7]: - y[5,7] + r[5,7] <= 0
 mccormick2[6,0]: - y[6,0] + r[6,0] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,4]: - y[6,4] + r[6,4] <= 0
 mccormick2[6,5]: - y[6,5] + r[6,5] <= 0
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
 mccormick3[0,6]: - y[0,6] - u[0,6] + r[0,6] >= -1
 mccormick3[0,7]: - y[0,7] - u[0,7] + r[0,7] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
 mccormick3[1,7]: - y[1,7] - u[1,7] + r[1,7] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,6]: - y[2,6] - u[2,6] + r[2,6] >= -1
 mccormick3[2,7]: - y[2,7] - u[2,7] + r[2,7] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[3,7]: - y[3,7] - u[3,7] + r[3,7] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,6]: - y[4,6] - u[4,6] + r[4,6] >= -1
 mccormick3[4,7]: - y[4,7] - u[4,7] + r[4,7] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,6]: - y[5,6] - u[5,6] + r[5,6] >= -1
 mccormick3[5,7]: - y[5,7] - u[5,7] + r[5,7] >= -1
 mccormick3[6,0]: - y[6,0] - u[6,0] + r[6,0] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,4]: - y[6,4] - u[6,4] + r[6,4] >= -1
 mccormick3[6,5]: - y[6,5] - u[6,5] + r[6,5] >= -1
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
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,6] y[0,7] y[1,0] y[1,2] y[1,3]
 y[1,4] y[1,5] y[1,6] y[1,7] y[2,0] y[2,1] y[2,6] y[2,7] y[3,0] y[3,1]
 y[3,5] y[3,7] y[4,0] y[4,1] y[4,5] y[4,6] y[4,7] y[5,0] y[5,1] y[5,3]
 y[5,4] y[5,6] y[5,7] y[6,0] y[6,1] y[6,2] y[6,4] y[6,5] y[6,7] y[7,0]
 y[7,1] y[7,2] y[7,3] y[7,4] y[7,5] y[7,6] x[0,1] x[0,2] x[0,3] x[0,4]
 x[0,5] x[0,6] x[0,7] x[1,0] x[1,2] x[1,3] x[1,4] x[1,5] x[1,6] x[1,7]
 x[2,0] x[2,1] x[2,6] x[2,7] x[3,0] x[3,1] x[3,5] x[3,7] x[4,0] x[4,1]
 x[4,5] x[4,6] x[4,7] x[5,0] x[5,1] x[5,3] x[5,4] x[5,6] x[5,7] x[6,0]
 x[6,1] x[6,2] x[6,4] x[6,5] x[6,7] x[7,0] x[7,1] x[7,2] x[7,3] x[7,4]
 x[7,5] x[7,6] u[0,1] u[0,2] u[0,3] u[0,4] u[0,5] u[0,6] u[0,7] u[1,0]
 u[1,2] u[1,3] u[1,4] u[1,5] u[1,6] u[1,7] u[2,0] u[2,1] u[2,6] u[2,7]
 u[3,0] u[3,1] u[3,5] u[3,7] u[4,0] u[4,1] u[4,5] u[4,6] u[4,7] u[5,0]
 u[5,1] u[5,3] u[5,4] u[5,6] u[5,7] u[6,0] u[6,1] u[6,2] u[6,4] u[6,5]
 u[6,7] u[7,0] u[7,1] u[7,2] u[7,3] u[7,4] u[7,5] u[7,6] r[0,1] r[0,2]
 r[0,3] r[0,4] r[0,5] r[0,6] r[0,7] r[1,0] r[1,2] r[1,3] r[1,4] r[1,5]
 r[1,6] r[1,7] r[2,0] r[2,1] r[2,6] r[2,7] r[3,0] r[3,1] r[3,5] r[3,7]
 r[4,0] r[4,1] r[4,5] r[4,6] r[4,7] r[5,0] r[5,1] r[5,3] r[5,4] r[5,6]
 r[5,7] r[6,0] r[6,1] r[6,2] r[6,4] r[6,5] r[6,7] r[7,0] r[7,1] r[7,2]
 r[7,3] r[7,4] r[7,5] r[7,6]
End
