\ Model nohadani_7_12
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x917f322750627386
Minimize
  40.04996878900157 y[0,1] + 24.69817807045694 y[0,2]
   + 60.03332407921454 y[0,3] + 33.60059523282288 y[0,4]
   + 33.97057550292606 y[0,5] + 40.04996878900157 y[1,0]
   + 21.95449840010015 y[1,2] + 54.91812087098393 y[1,3]
   + 22.20360331117452 y[1,4] + 28.60069929215018 y[1,5]
   + 31.90611226708763 y[1,6] + 24.69817807045694 y[2,0]
   + 21.95449840010015 y[2,1] + 9.219544457292887 y[2,4]
   + 12.16552506059644 y[2,5] + 52.3450093132096 y[2,6]
   + 60.03332407921454 y[3,0] + 54.91812087098393 y[3,1]
   + 38.18376618407357 y[3,6] + 33.60059523282288 y[4,0]
   + 22.20360331117452 y[4,1] + 9.219544457292887 y[4,2]
   + 6.403124237432849 y[4,5] + 54.08326913195984 y[4,6]
   + 33.97057550292606 y[5,0] + 28.60069929215018 y[5,1]
   + 12.16552506059644 y[5,2] + 6.403124237432849 y[5,4]
   + 60.4648658313239 y[5,6] + 31.90611226708763 y[6,1]
   + 52.3450093132096 y[6,2] + 38.18376618407357 y[6,3]
   + 54.08326913195984 y[6,4] + 60.4648658313239 y[6,5] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[1,0] + x[1,2] + x[1,3] + x[1,4] + x[1,5]
   + x[1,6] + x[2,0] + x[2,1] + x[2,4] + x[2,5] + x[2,6] + x[3,0] + x[3,1]
   + x[3,6] + x[4,0] + x[4,1] + x[4,2] + x[4,5] + x[4,6] + x[5,0] + x[5,1]
   + x[5,2] + x[5,4] + x[5,6] + x[6,1] + x[6,2] + x[6,3] + x[6,4] + x[6,5]
   + 4.004996878900157 r[0,1] + 2.469817807045694 r[0,2]
   + 6.003332407921454 r[0,3] + 3.360059523282288 r[0,4]
   + 3.397057550292606 r[0,5] + 4.004996878900157 r[1,0]
   + 2.195449840010015 r[1,2] + 5.491812087098393 r[1,3]
   + 2.220360331117452 r[1,4] + 2.860069929215018 r[1,5]
   + 3.190611226708763 r[1,6] + 2.469817807045694 r[2,0]
   + 2.195449840010015 r[2,1] + 0.9219544457292888 r[2,4]
   + 1.216552506059644 r[2,5] + 5.234500931320961 r[2,6]
   + 6.003332407921454 r[3,0] + 5.491812087098393 r[3,1]
   + 3.818376618407357 r[3,6] + 3.360059523282288 r[4,0]
   + 2.220360331117452 r[4,1] + 0.9219544457292888 r[4,2]
   + 0.6403124237432849 r[4,5] + 5.408326913195984 r[4,6]
   + 3.397057550292606 r[5,0] + 2.860069929215018 r[5,1]
   + 1.216552506059644 r[5,2] + 0.6403124237432849 r[5,4]
   + 6.04648658313239 r[5,6] + 3.190611226708763 r[6,1]
   + 5.234500931320961 r[6,2] + 3.818376618407357 r[6,3]
   + 5.408326913195984 r[6,4] + 6.04648658313239 r[6,5]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,4]
   - y[1,5] - y[1,6] + y[2,1] + y[3,1] + y[4,1] + y[5,1] + y[6,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,4]
   - y[2,5] - y[2,6] + y[4,2] + y[5,2] + y[6,2] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] - y[4,0] - y[4,1]
   - y[4,2] - y[4,5] - y[4,6] + y[5,4] + y[6,4] = 0
 flow_cons_inner_nodes[6]: y[1,6] + y[2,6] + y[3,6] + y[4,6] + y[5,6]
   - y[6,1] - y[6,2] - y[6,3] - y[6,4] - y[6,5] = 0
 flow_cons_source: - y[0,3] - y[1,3] + y[3,0] + y[3,1] + y[3,6] - y[6,3]
   = 1
 flow_cons_target: y[0,5] + y[1,5] + y[2,5] + y[4,5] - y[5,0] - y[5,1]
   - y[5,2] - y[5,4] - y[5,6] + y[6,5] = 1
 primal_lower: 0.8060733042902589 x[0,1] + 0.0182595490022218 x[0,2]
   + 1.99366065307539 x[0,3] + 1.241527048831132 x[0,4]
   + 2.883311986997638 x[0,5] + 4.177124826659877 x[1,0]
   + 3.631461009207419 x[1,2] + 1.227846057132162 x[1,3]
   + 0.7507561061490626 x[1,4] + 2.371450305380731 x[1,5]
   + 0.1521070272616618 x[1,6] + 0.1512462128772311 x[2,0]
   + 1.551283740041083 x[2,1] + 2.866532375185054 x[2,4]
   + 1.702314477652558 x[2,5] + 0.9267033534082085 x[2,6]
   + 2.488874505041949 x[3,0] + 4.279341145217503 x[3,1]
   + 1.566684574431549 x[3,6] + 0.7834345308638976 x[4,0]
   + 2.031830117596539 x[4,1] + 4.474637030674951 x[4,2]
   + 1.580161090484963 x[4,5] + 0.7192965963507247 x[4,6]
   + 2.023002979279331 x[5,0] + 3.507842976548116 x[5,1]
   + 3.282239643539592 x[5,2] + 1.048594880841155 x[5,4]
   + 1.765938649980456 x[5,6] + 3.793942417859814 x[6,1]
   + 1.814193078758473 x[6,2] + 4.497301812081932 x[6,3]
   + 1.731392114311915 x[6,4] + 2.845769384250814 x[6,5] + 8 u[0,1]
   + 84 u[0,2] + 26 u[0,3] + 79 u[0,4] + 72 u[0,5] + 62 u[1,0] + 37 u[1,2]
   + 48 u[1,3] + 77 u[1,4] + 46 u[1,5] + 48 u[1,6] + 43 u[2,0] + 12 u[2,1]
   + 16 u[2,4] + 53 u[2,5] + 13 u[2,6] + 25 u[3,0] + 100 u[3,1] + 69 u[3,6]
   + 18 u[4,0] + 5 u[4,1] + 76 u[4,2] + 84 u[4,5] + 71 u[4,6] + 49 u[5,0]
   + 80 u[5,1] + 74 u[5,2] + 72 u[5,4] + 42 u[5,6] + 35 u[6,1] + 54 u[6,2]
   + 52 u[6,3] + 84 u[6,4] + 25 u[6,5] <= 158
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
 mccormick1[1,6]: - u[1,6] + r[1,6] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[2,6]: - u[2,6] + r[2,6] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,6]: - u[3,6] + r[3,6] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,6]: - u[4,6] + r[4,6] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,6]: - u[5,6] + r[5,6] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,3]: - u[6,3] + r[6,3] <= 0
 mccormick1[6,4]: - u[6,4] + r[6,4] <= 0
 mccormick1[6,5]: - u[6,5] + r[6,5] <= 0
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
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[2,6]: - y[2,6] + r[2,6] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,6]: - y[3,6] + r[3,6] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,6]: - y[4,6] + r[4,6] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,6]: - y[5,6] + r[5,6] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,3]: - y[6,3] + r[6,3] <= 0
 mccormick2[6,4]: - y[6,4] + r[6,4] <= 0
 mccormick2[6,5]: - y[6,5] + r[6,5] <= 0
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
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[2,6]: - y[2,6] - u[2,6] + r[2,6] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,6]: - y[3,6] - u[3,6] + r[3,6] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,6]: - y[4,6] - u[4,6] + r[4,6] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,6]: - y[5,6] - u[5,6] + r[5,6] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,3]: - y[6,3] - u[6,3] + r[6,3] >= -1
 mccormick3[6,4]: - y[6,4] - u[6,4] + r[6,4] >= -1
 mccormick3[6,5]: - y[6,5] - u[6,5] + r[6,5] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[1,0] y[1,2] y[1,3] y[1,4] y[1,5]
 y[1,6] y[2,0] y[2,1] y[2,4] y[2,5] y[2,6] y[3,0] y[3,1] y[3,6] y[4,0]
 y[4,1] y[4,2] y[4,5] y[4,6] y[5,0] y[5,1] y[5,2] y[5,4] y[5,6] y[6,1]
 y[6,2] y[6,3] y[6,4] y[6,5] x[0,1] x[0,2] x[0,3] x[0,4] x[0,5] x[1,0]
 x[1,2] x[1,3] x[1,4] x[1,5] x[1,6] x[2,0] x[2,1] x[2,4] x[2,5] x[2,6]
 x[3,0] x[3,1] x[3,6] x[4,0] x[4,1] x[4,2] x[4,5] x[4,6] x[5,0] x[5,1]
 x[5,2] x[5,4] x[5,6] x[6,1] x[6,2] x[6,3] x[6,4] x[6,5] u[0,1] u[0,2]
 u[0,3] u[0,4] u[0,5] u[1,0] u[1,2] u[1,3] u[1,4] u[1,5] u[1,6] u[2,0]
 u[2,1] u[2,4] u[2,5] u[2,6] u[3,0] u[3,1] u[3,6] u[4,0] u[4,1] u[4,2]
 u[4,5] u[4,6] u[5,0] u[5,1] u[5,2] u[5,4] u[5,6] u[6,1] u[6,2] u[6,3]
 u[6,4] u[6,5] r[0,1] r[0,2] r[0,3] r[0,4] r[0,5] r[1,0] r[1,2] r[1,3]
 r[1,4] r[1,5] r[1,6] r[2,0] r[2,1] r[2,4] r[2,5] r[2,6] r[3,0] r[3,1]
 r[3,6] r[4,0] r[4,1] r[4,2] r[4,5] r[4,6] r[5,0] r[5,1] r[5,2] r[5,4]
 r[5,6] r[6,1] r[6,2] r[6,3] r[6,4] r[6,5]
End
