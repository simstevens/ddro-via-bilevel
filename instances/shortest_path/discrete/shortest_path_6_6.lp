\ Model nohadani_6_6
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9d6f60db6d04e09d
Minimize
  15 y[0,2] + 41.04875150354759 y[0,3] + 51.10772935672255 y[0,4]
   + 63.41135544995076 y[0,5] + 48.76474136094644 y[1,4]
   + 51.62363799656123 y[1,5] + 15 y[2,0] + 33.52610922848042 y[2,3]
   + 36.23534186398687 y[2,4] + 48.41487374764082 y[2,5]
   + 41.04875150354759 y[3,0] + 33.52610922848042 y[3,2]
   + 44.59820624195552 y[3,4] + 48.04164859785725 y[3,5]
   + 51.10772935672255 y[4,0] + 48.76474136094644 y[4,1]
   + 36.23534186398687 y[4,2] + 44.59820624195552 y[4,3]
   + 14.31782106327635 y[4,5] + 63.41135544995076 y[5,0]
   + 51.62363799656123 y[5,1] + 48.41487374764082 y[5,2]
   + 48.04164859785725 y[5,3] + 14.31782106327635 y[5,4] + x[0,2] + x[0,3]
   + x[0,4] + x[0,5] + x[1,4] + x[1,5] + x[2,0] + x[2,3] + x[2,4] + x[2,5]
   + x[3,0] + x[3,2] + x[3,4] + x[3,5] + x[4,0] + x[4,1] + x[4,2] + x[4,3]
   + x[4,5] + x[5,0] + x[5,1] + x[5,2] + x[5,3] + x[5,4] + 1.5 r[0,2]
   + 4.104875150354759 r[0,3] + 5.110772935672255 r[0,4]
   + 6.341135544995076 r[0,5] + 4.876474136094644 r[1,4]
   + 5.162363799656124 r[1,5] + 1.5 r[2,0] + 3.352610922848042 r[2,3]
   + 3.623534186398688 r[2,4] + 4.841487374764082 r[2,5]
   + 4.104875150354759 r[3,0] + 3.352610922848042 r[3,2]
   + 4.459820624195552 r[3,4] + 4.804164859785725 r[3,5]
   + 5.110772935672255 r[4,0] + 4.876474136094644 r[4,1]
   + 3.623534186398688 r[4,2] + 4.459820624195552 r[4,3]
   + 1.431782106327635 r[4,5] + 6.341135544995076 r[5,0]
   + 5.162363799656124 r[5,1] + 4.841487374764082 r[5,2]
   + 4.804164859785725 r[5,3] + 1.431782106327635 r[5,4]
Subject To
 flow_cons_inner_nodes[0]: - y[0,2] - y[0,3] - y[0,4] - y[0,5] + y[2,0]
   + y[3,0] + y[4,0] + y[5,0] = 0
 flow_cons_inner_nodes[2]: y[0,2] - y[2,0] - y[2,3] - y[2,4] - y[2,5]
   + y[3,2] + y[4,2] + y[5,2] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] - y[4,5] + y[5,4] = 0
 flow_cons_inner_nodes[5]: y[0,5] + y[1,5] + y[2,5] + y[3,5] + y[4,5]
   - y[5,0] - y[5,1] - y[5,2] - y[5,3] - y[5,4] = 0
 flow_cons_source: y[1,4] + y[1,5] - y[4,1] - y[5,1] = 1
 flow_cons_target: y[0,3] + y[2,3] - y[3,0] - y[3,2] - y[3,4] - y[3,5]
   + y[4,3] + y[5,3] = 1
 primal_lower: 1.09816921491413 x[0,2] + 3.649066764378134 x[0,3]
   + 2.756299716863537 x[0,4] + 1.040855183289849 x[0,5]
   + 2.21434305332299 x[1,4] + 1.452090680712555 x[1,5]
   + 2.840411357608067 x[2,0] + 1.666572695772515 x[2,3]
   + 0.8748717602755196 x[2,4] + 2.277341128462633 x[2,5]
   + 3.482499347244934 x[3,0] + 3.553731307897601 x[3,2]
   + 1.301595053133452 x[3,4] + 2.855583191287131 x[3,5]
   + 3.50128170454244 x[4,0] + 3.554870932378385 x[4,1]
   + 0.5384587145598521 x[4,2] + 1.911589731871424 x[4,3]
   + 0.3160759547436536 x[4,5] + 2.55870970279634 x[5,0]
   + 0.9103563607957081 x[5,1] + 3.907795442927819 x[5,2]
   + 0.8059852218557446 x[5,3] + 1.70813615701549 x[5,4] + 9 u[0,2]
   + 26 u[0,3] + 44 u[0,4] + 77 u[0,5] + 14 u[1,4] + 7 u[1,5] + 87 u[2,0]
   + 13 u[2,3] + 3 u[2,4] + 8 u[2,5] + 65 u[3,0] + 33 u[3,2] + 58 u[3,4]
   + 58 u[3,5] + 38 u[4,0] + 14 u[4,1] + 63 u[4,2] + 94 u[4,3] + 87 u[4,5]
   + 84 u[5,0] + 59 u[5,1] + 21 u[5,2] + 74 u[5,3] + 20 u[5,4] <= 96
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
Bounds
Binaries
 y[0,2] y[0,3] y[0,4] y[0,5] y[1,4] y[1,5] y[2,0] y[2,3] y[2,4] y[2,5]
 y[3,0] y[3,2] y[3,4] y[3,5] y[4,0] y[4,1] y[4,2] y[4,3] y[4,5] y[5,0]
 y[5,1] y[5,2] y[5,3] y[5,4] x[0,2] x[0,3] x[0,4] x[0,5] x[1,4] x[1,5]
 x[2,0] x[2,3] x[2,4] x[2,5] x[3,0] x[3,2] x[3,4] x[3,5] x[4,0] x[4,1]
 x[4,2] x[4,3] x[4,5] x[5,0] x[5,1] x[5,2] x[5,3] x[5,4] u[0,2] u[0,3]
 u[0,4] u[0,5] u[1,4] u[1,5] u[2,0] u[2,3] u[2,4] u[2,5] u[3,0] u[3,2]
 u[3,4] u[3,5] u[4,0] u[4,1] u[4,2] u[4,3] u[4,5] u[5,0] u[5,1] u[5,2]
 u[5,3] u[5,4] r[0,2] r[0,3] r[0,4] r[0,5] r[1,4] r[1,5] r[2,0] r[2,3]
 r[2,4] r[2,5] r[3,0] r[3,2] r[3,4] r[3,5] r[4,0] r[4,1] r[4,2] r[4,3]
 r[4,5] r[5,0] r[5,1] r[5,2] r[5,3] r[5,4]
End
