\ Model nohadani_6_13
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9d6f60db6d04e09d
Minimize
  49.64876634922564 y[0,1] + 29.06888370749727 y[0,2]
   + 52.20153254455275 y[0,3] + 11.40175425099138 y[0,4]
   + 45.39823785126467 y[0,5] + 49.64876634922564 y[1,0]
   + 34.05877273185281 y[1,3] + 47.4236228055175 y[1,4]
   + 29.06888370749727 y[2,0] + 33.24154027718932 y[2,4]
   + 33.97057550292606 y[2,5] + 52.20153254455275 y[3,0]
   + 34.05877273185281 y[3,1] + 57.3149195236284 y[3,4]
   + 74.4043009509531 y[3,5] + 11.40175425099138 y[4,0]
   + 47.4236228055175 y[4,1] + 33.24154027718932 y[4,2]
   + 57.3149195236284 y[4,3] + 55.54277630799526 y[4,5]
   + 45.39823785126467 y[5,0] + 33.97057550292606 y[5,2]
   + 74.4043009509531 y[5,3] + 55.54277630799526 y[5,4] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[1,0] + x[1,3] + x[1,4] + x[2,0] + x[2,4]
   + x[2,5] + x[3,0] + x[3,1] + x[3,4] + x[3,5] + x[4,0] + x[4,1] + x[4,2]
   + x[4,3] + x[4,5] + x[5,0] + x[5,2] + x[5,3] + x[5,4]
   + 4.964876634922565 r[0,1] + 2.906888370749727 r[0,2]
   + 5.220153254455275 r[0,3] + 1.140175425099138 r[0,4]
   + 4.539823785126467 r[0,5] + 4.964876634922565 r[1,0]
   + 3.405877273185281 r[1,3] + 4.742362280551751 r[1,4]
   + 2.906888370749727 r[2,0] + 3.324154027718933 r[2,4]
   + 3.397057550292606 r[2,5] + 5.220153254455275 r[3,0]
   + 3.405877273185281 r[3,1] + 5.73149195236284 r[3,4]
   + 7.44043009509531 r[3,5] + 1.140175425099138 r[4,0]
   + 4.742362280551751 r[4,1] + 3.324154027718933 r[4,2]
   + 5.73149195236284 r[4,3] + 5.554277630799526 r[4,5]
   + 4.539823785126467 r[5,0] + 3.397057550292606 r[5,2]
   + 7.44043009509531 r[5,3] + 5.554277630799526 r[5,4]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] = 0
 flow_cons_inner_nodes[2]: y[0,2] - y[2,0] - y[2,4] - y[2,5] + y[4,2]
   + y[5,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] - y[3,0] - y[3,1] - y[3,4]
   - y[3,5] + y[4,3] + y[5,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] - y[4,5] + y[5,4] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,3] + y[1,4] - y[3,1] - y[4,1]
   = 1
 flow_cons_target: y[0,5] + y[2,5] + y[3,5] + y[4,5] - y[5,0] - y[5,2]
   - y[5,3] - y[5,4] = 1
 primal_lower: 4.281532432491516 x[0,1] + 1.239565441446747 x[0,2]
   + 1.911109686511881 x[0,3] + 0.3020300870252365 x[0,4]
   + 2.351205138444755 x[0,5] + 0.1509590802712946 x[1,0]
   + 0.0974217138501284 x[1,3] + 0.5834326349008619 x[1,4]
   + 0.5516380284075998 x[2,0] + 1.572533194574996 x[2,4]
   + 2.518869842665513 x[2,5] + 0.2218521990602502 x[3,0]
   + 1.205616421971945 x[3,1] + 1.238514237769478 x[3,4]
   + 4.133184804295357 x[3,5] + 0.5173618413371239 x[4,0]
   + 3.981558475048916 x[4,1] + 2.486457880298721 x[4,2]
   + 1.284946001728625 x[4,3] + 1.44060074581555 x[4,5]
   + 4.210882833093459 x[5,0] + 2.475846280624654 x[5,2]
   + 4.027128549277816 x[5,3] + 0.1088240427158947 x[5,4] + 9 u[0,1]
   + 50 u[0,2] + 28 u[0,3] + 17 u[0,4] + 50 u[0,5] + 71 u[1,0] + 3 u[1,3]
   + 53 u[1,4] + 99 u[2,0] + 84 u[2,4] + 25 u[2,5] + 37 u[3,0] + 66 u[3,1]
   + 6 u[3,4] + 74 u[3,5] + 18 u[4,0] + 15 u[4,1] + 74 u[4,2] + 63 u[4,3]
   + 56 u[4,5] + 59 u[5,0] + 69 u[5,2] + 62 u[5,3] + 92 u[5,4] <= 107
 mccormick1[0,1]: - u[0,1] + r[0,1] <= 0
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[1,0]: - u[1,0] + r[1,0] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick2[0,1]: - y[0,1] + r[0,1] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[1,0]: - y[1,0] + r[1,0] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick3[0,1]: - y[0,1] - u[0,1] + r[0,1] >= -1
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[1,0]: - y[1,0] - u[1,0] + r[1,0] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[1,0] y[1,3] y[1,4] y[2,0] y[2,4]
 y[2,5] y[3,0] y[3,1] y[3,4] y[3,5] y[4,0] y[4,1] y[4,2] y[4,3] y[4,5]
 y[5,0] y[5,2] y[5,3] y[5,4] x[0,1] x[0,2] x[0,3] x[0,4] x[0,5] x[1,0]
 x[1,3] x[1,4] x[2,0] x[2,4] x[2,5] x[3,0] x[3,1] x[3,4] x[3,5] x[4,0]
 x[4,1] x[4,2] x[4,3] x[4,5] x[5,0] x[5,2] x[5,3] x[5,4] u[0,1] u[0,2]
 u[0,3] u[0,4] u[0,5] u[1,0] u[1,3] u[1,4] u[2,0] u[2,4] u[2,5] u[3,0]
 u[3,1] u[3,4] u[3,5] u[4,0] u[4,1] u[4,2] u[4,3] u[4,5] u[5,0] u[5,2]
 u[5,3] u[5,4] r[0,1] r[0,2] r[0,3] r[0,4] r[0,5] r[1,0] r[1,3] r[1,4]
 r[2,0] r[2,4] r[2,5] r[3,0] r[3,1] r[3,4] r[3,5] r[4,0] r[4,1] r[4,2]
 r[4,3] r[4,5] r[5,0] r[5,2] r[5,3] r[5,4]
End
