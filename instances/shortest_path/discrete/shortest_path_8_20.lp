\ Model nohadani_8_20
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x229cff0c87735314
Minimize
  57.68882040742383 y[0,1] + 72.27724399837061 y[0,2]
   + 72.56031973468694 y[0,3] + 39.39543120718442 y[0,4]
   + 45.89117562233506 y[0,5] + 72.89718787443039 y[0,7]
   + 57.68882040742383 y[1,0] + 76.15773105863909 y[1,2]
   + 33.24154027718932 y[1,3] + 32.2490309931942 y[1,4]
   + 36.24913792078372 y[1,7] + 72.27724399837061 y[2,0]
   + 76.15773105863909 y[2,1] + 54.45181356024793 y[2,3]
   + 48.08326112068523 y[2,4] + 83.48652585896721 y[2,5]
   + 23.40939982143925 y[2,6] + 51.24451190127583 y[2,7]
   + 72.56031973468694 y[3,0] + 33.24154027718932 y[3,1]
   + 54.45181356024793 y[3,2] + 33.60059523282288 y[3,4]
   + 77.46612162745726 y[3,6] + 3.605551275463989 y[3,7]
   + 39.39543120718442 y[4,0] + 32.2490309931942 y[4,1]
   + 48.08326112068523 y[4,2] + 33.60059523282288 y[4,3]
   + 75.8023746329889 y[4,5] + 70 y[4,6] + 33.61547262794322 y[4,7]
   + 45.89117562233506 y[5,0] + 83.48652585896721 y[5,2]
   + 75.8023746329889 y[5,4] + 87.14355971613737 y[5,6]
   + 23.40939982143925 y[6,2] + 77.46612162745726 y[6,3] + 70 y[6,4]
   + 87.14355971613737 y[6,5] + 74.14849964766651 y[6,7]
   + 72.89718787443039 y[7,0] + 36.24913792078372 y[7,1]
   + 51.24451190127583 y[7,2] + 3.605551275463989 y[7,3]
   + 33.61547262794322 y[7,4] + 74.14849964766651 y[7,6] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[0,7] + x[1,0] + x[1,2] + x[1,3] + x[1,4]
   + x[1,7] + x[2,0] + x[2,1] + x[2,3] + x[2,4] + x[2,5] + x[2,6] + x[2,7]
   + x[3,0] + x[3,1] + x[3,2] + x[3,4] + x[3,6] + x[3,7] + x[4,0] + x[4,1]
   + x[4,2] + x[4,3] + x[4,5] + x[4,6] + x[4,7] + x[5,0] + x[5,2] + x[5,4]
   + x[5,6] + x[6,2] + x[6,3] + x[6,4] + x[6,5] + x[6,7] + x[7,0] + x[7,1]
   + x[7,2] + x[7,3] + x[7,4] + x[7,6] + 5.768882040742383 r[0,1]
   + 7.227724399837061 r[0,2] + 7.256031973468694 r[0,3]
   + 3.939543120718442 r[0,4] + 4.589117562233507 r[0,5]
   + 7.289718787443039 r[0,7] + 5.768882040742383 r[1,0]
   + 7.615773105863909 r[1,2] + 3.324154027718933 r[1,3]
   + 3.22490309931942 r[1,4] + 3.624913792078372 r[1,7]
   + 7.227724399837061 r[2,0] + 7.615773105863909 r[2,1]
   + 5.445181356024793 r[2,3] + 4.808326112068523 r[2,4]
   + 8.348652585896721 r[2,5] + 2.340939982143925 r[2,6]
   + 5.124451190127584 r[2,7] + 7.256031973468694 r[3,0]
   + 3.324154027718933 r[3,1] + 5.445181356024793 r[3,2]
   + 3.360059523282288 r[3,4] + 7.746612162745726 r[3,6]
   + 0.360555127546399 r[3,7] + 3.939543120718442 r[4,0]
   + 3.22490309931942 r[4,1] + 4.808326112068523 r[4,2]
   + 3.360059523282288 r[4,3] + 7.58023746329889 r[4,5] + 7 r[4,6]
   + 3.361547262794322 r[4,7] + 4.589117562233507 r[5,0]
   + 8.348652585896721 r[5,2] + 7.58023746329889 r[5,4]
   + 8.714355971613738 r[5,6] + 2.340939982143925 r[6,2]
   + 7.746612162745726 r[6,3] + 7 r[6,4] + 8.714355971613738 r[6,5]
   + 7.414849964766652 r[6,7] + 7.289718787443039 r[7,0]
   + 3.624913792078372 r[7,1] + 5.124451190127584 r[7,2]
   + 0.360555127546399 r[7,3] + 3.361547262794322 r[7,4]
   + 7.414849964766652 r[7,6]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   - y[0,7] + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] + y[7,0] = 0
 flow_cons_inner_nodes[1]: y[0,1] - y[1,0] - y[1,2] - y[1,3] - y[1,4]
   - y[1,7] + y[2,1] + y[3,1] + y[4,1] + y[7,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] - y[2,5] - y[2,6] - y[2,7] + y[3,2] + y[4,2] + y[5,2] + y[6,2]
   + y[7,2] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] - y[4,5] - y[4,6] - y[4,7] + y[5,4] + y[6,4]
   + y[7,4] = 0
 flow_cons_inner_nodes[6]: y[2,6] + y[3,6] + y[4,6] + y[5,6] - y[6,2]
   - y[6,3] - y[6,4] - y[6,5] - y[6,7] + y[7,6] = 0
 flow_cons_inner_nodes[7]: y[0,7] + y[1,7] + y[2,7] + y[3,7] + y[4,7]
   + y[6,7] - y[7,0] - y[7,1] - y[7,2] - y[7,3] - y[7,4] - y[7,6] = 0
 flow_cons_source: - y[0,3] - y[1,3] - y[2,3] + y[3,0] + y[3,1] + y[3,2]
   + y[3,4] + y[3,6] + y[3,7] - y[4,3] - y[6,3] - y[7,3] = 1
 flow_cons_target: y[0,5] + y[2,5] + y[4,5] - y[5,0] - y[5,2] - y[5,4]
   - y[5,6] + y[6,5] = 1
 primal_lower: 1.527261926568129 x[0,1] + 1.643704268594864 x[0,2]
   + 4.587982258111774 x[0,3] + 3.264825916006866 x[0,4]
   + 4.626231089326574 x[0,5] + 3.006442271544028 x[0,7]
   + 2.501018606392838 x[1,0] + 1.288501654165884 x[1,2]
   + 2.258567347808218 x[1,3] + 1.014782409120267 x[1,4]
   + 1.154966864796043 x[1,7] + 1.090708900357074 x[2,0]
   + 2.181126829980565 x[2,1] + 1.943170171853078 x[2,3]
   + 2.751752998369637 x[2,4] + 2.683873109771718 x[2,5]
   + 4.665100073972417 x[2,6] + 3.217324784932015 x[2,7]
   + 4.345384468151392 x[3,0] + 5.007241819586839 x[3,1]
   + 2.495462764224218 x[3,2] + 1.516700928525774 x[3,4]
   + 2.466164124275118 x[3,6] + 0.1717721592303019 x[3,7]
   + 1.29695901159845 x[4,0] + 3.857238167812678 x[4,1]
   + 1.435927428588163 x[4,2] + 0.4653072442443917 x[4,3]
   + 3.930204616127823 x[4,5] + 2.186020341070416 x[4,6]
   + 1.576328569841067 x[4,7] + 3.726215431313068 x[5,0]
   + 1.570197301382022 x[5,2] + 2.791888190046349 x[5,4]
   + 2.725254213093269 x[5,6] + 3.946316233599548 x[6,2]
   + 2.949727145660844 x[6,3] + 4.555452618883431 x[6,4]
   + 4.192024752865577 x[6,5] + 0.3946851207981203 x[6,7]
   + 0.9191758890101623 x[7,0] + 3.871603912094055 x[7,1]
   + 4.304301488836839 x[7,2] + 2.821694988556235 x[7,3]
   + 0.2548618892959155 x[7,4] + 4.742719765565861 x[7,6] + 60 u[0,1]
   + 48 u[0,2] + 78 u[0,3] + 27 u[0,4] + 68 u[0,5] + 30 u[0,7] + 5 u[1,0]
   + 76 u[1,2] + 49 u[1,3] + 90 u[1,4] + 68 u[1,7] + 31 u[2,0] + 28 u[2,1]
   + 56 u[2,3] + 89 u[2,4] + 97 u[2,5] + 53 u[2,6] + 4 u[2,7] + 37 u[3,0]
   + 74 u[3,1] + 9 u[3,2] + 92 u[3,4] + 32 u[3,6] + 75 u[3,7] + 9 u[4,0]
   + 52 u[4,1] + 46 u[4,2] + 52 u[4,3] + 74 u[4,5] + 3 u[4,6] + 90 u[4,7]
   + 68 u[5,0] + 92 u[5,2] + 21 u[5,4] + 72 u[5,6] + 85 u[6,2] + 56 u[6,3]
   + 21 u[6,4] + 100 u[6,5] + 87 u[6,7] + 91 u[7,0] + 50 u[7,1] + 90 u[7,2]
   + 98 u[7,3] + 7 u[7,4] + 63 u[7,6] <= 236
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[0,7]: - u[0,7] + r[0,7] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,7]: - u[1,7] + r[1,7] <= 0
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
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,6]: - u[3,6] + r[3,6] <= 0
 mccormick1[3,7]: - u[3,7] + r[3,7] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,6]: - u[4,6] + r[4,6] <= 0
 mccormick1[4,7]: - u[4,7] + r[4,7] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,6]: - u[5,6] + r[5,6] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,3]: - u[6,3] + r[6,3] <= 0
 mccormick1[6,4]: - u[6,4] + r[6,4] <= 0
 mccormick1[6,5]: - u[6,5] + r[6,5] <= 0
 mccormick1[6,7]: - u[6,7] + r[6,7] <= 0
 mccormick1[7,0]: - u[7,0] + r[7,0] <= 0
 mccormick1[7,1]: - u[7,1] + r[7,1] <= 0
 mccormick1[7,2]: - u[7,2] + r[7,2] <= 0
 mccormick1[7,3]: - u[7,3] + r[7,3] <= 0
 mccormick1[7,4]: - u[7,4] + r[7,4] <= 0
 mccormick1[7,6]: - u[7,6] + r[7,6] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[0,7]: - y[0,7] + r[0,7] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,7]: - y[1,7] + r[1,7] <= 0
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
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,6]: - y[3,6] + r[3,6] <= 0
 mccormick2[3,7]: - y[3,7] + r[3,7] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,6]: - y[4,6] + r[4,6] <= 0
 mccormick2[4,7]: - y[4,7] + r[4,7] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,6]: - y[5,6] + r[5,6] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,3]: - y[6,3] + r[6,3] <= 0
 mccormick2[6,4]: - y[6,4] + r[6,4] <= 0
 mccormick2[6,5]: - y[6,5] + r[6,5] <= 0
 mccormick2[6,7]: - y[6,7] + r[6,7] <= 0
 mccormick2[7,0]: - y[7,0] + r[7,0] <= 0
 mccormick2[7,1]: - y[7,1] + r[7,1] <= 0
 mccormick2[7,2]: - y[7,2] + r[7,2] <= 0
 mccormick2[7,3]: - y[7,3] + r[7,3] <= 0
 mccormick2[7,4]: - y[7,4] + r[7,4] <= 0
 mccormick2[7,6]: - y[7,6] + r[7,6] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[0,7]: - y[0,7] - u[0,7] + r[0,7] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,7]: - y[1,7] - u[1,7] + r[1,7] >= -1
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
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,6]: - y[3,6] - u[3,6] + r[3,6] >= -1
 mccormick3[3,7]: - y[3,7] - u[3,7] + r[3,7] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,6]: - y[4,6] - u[4,6] + r[4,6] >= -1
 mccormick3[4,7]: - y[4,7] - u[4,7] + r[4,7] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,6]: - y[5,6] - u[5,6] + r[5,6] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,3]: - y[6,3] - u[6,3] + r[6,3] >= -1
 mccormick3[6,4]: - y[6,4] - u[6,4] + r[6,4] >= -1
 mccormick3[6,5]: - y[6,5] - u[6,5] + r[6,5] >= -1
 mccormick3[6,7]: - y[6,7] - u[6,7] + r[6,7] >= -1
 mccormick3[7,0]: - y[7,0] - u[7,0] + r[7,0] >= -1
 mccormick3[7,1]: - y[7,1] - u[7,1] + r[7,1] >= -1
 mccormick3[7,2]: - y[7,2] - u[7,2] + r[7,2] >= -1
 mccormick3[7,3]: - y[7,3] - u[7,3] + r[7,3] >= -1
 mccormick3[7,4]: - y[7,4] - u[7,4] + r[7,4] >= -1
 mccormick3[7,6]: - y[7,6] - u[7,6] + r[7,6] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,7] y[1,0] y[1,2] y[1,3] y[1,4]
 y[1,7] y[2,0] y[2,1] y[2,3] y[2,4] y[2,5] y[2,6] y[2,7] y[3,0] y[3,1]
 y[3,2] y[3,4] y[3,6] y[3,7] y[4,0] y[4,1] y[4,2] y[4,3] y[4,5] y[4,6]
 y[4,7] y[5,0] y[5,2] y[5,4] y[5,6] y[6,2] y[6,3] y[6,4] y[6,5] y[6,7]
 y[7,0] y[7,1] y[7,2] y[7,3] y[7,4] y[7,6] x[0,1] x[0,2] x[0,3] x[0,4]
 x[0,5] x[0,7] x[1,0] x[1,2] x[1,3] x[1,4] x[1,7] x[2,0] x[2,1] x[2,3]
 x[2,4] x[2,5] x[2,6] x[2,7] x[3,0] x[3,1] x[3,2] x[3,4] x[3,6] x[3,7]
 x[4,0] x[4,1] x[4,2] x[4,3] x[4,5] x[4,6] x[4,7] x[5,0] x[5,2] x[5,4]
 x[5,6] x[6,2] x[6,3] x[6,4] x[6,5] x[6,7] x[7,0] x[7,1] x[7,2] x[7,3]
 x[7,4] x[7,6] u[0,1] u[0,2] u[0,3] u[0,4] u[0,5] u[0,7] u[1,0] u[1,2]
 u[1,3] u[1,4] u[1,7] u[2,0] u[2,1] u[2,3] u[2,4] u[2,5] u[2,6] u[2,7]
 u[3,0] u[3,1] u[3,2] u[3,4] u[3,6] u[3,7] u[4,0] u[4,1] u[4,2] u[4,3]
 u[4,5] u[4,6] u[4,7] u[5,0] u[5,2] u[5,4] u[5,6] u[6,2] u[6,3] u[6,4]
 u[6,5] u[6,7] u[7,0] u[7,1] u[7,2] u[7,3] u[7,4] u[7,6] r[0,1] r[0,2]
 r[0,3] r[0,4] r[0,5] r[0,7] r[1,0] r[1,2] r[1,3] r[1,4] r[1,7] r[2,0]
 r[2,1] r[2,3] r[2,4] r[2,5] r[2,6] r[2,7] r[3,0] r[3,1] r[3,2] r[3,4]
 r[3,6] r[3,7] r[4,0] r[4,1] r[4,2] r[4,3] r[4,5] r[4,6] r[4,7] r[5,0]
 r[5,2] r[5,4] r[5,6] r[6,2] r[6,3] r[6,4] r[6,5] r[6,7] r[7,0] r[7,1]
 r[7,2] r[7,3] r[7,4] r[7,6]
End
