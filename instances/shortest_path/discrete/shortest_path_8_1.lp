\ Model nohadani_8_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x229cff0c87735314
Minimize
  75.31268153505093 y[0,1] + 49.24428900898052 y[0,2]
   + 34.13209633175202 y[0,3] + 19.6468827043885 y[0,4]
   + 62.60990336999411 y[0,5] + 58.52349955359813 y[0,6]
   + 68.54195795277518 y[0,7] + 75.31268153505093 y[1,0]
   + 49.04079934095692 y[1,2] + 70.60453243241541 y[1,3]
   + 22.80350850198276 y[1,5] + 67.80117993073571 y[1,6]
   + 49.24428900898052 y[2,0] + 49.04079934095692 y[2,1]
   + 25.49509756796392 y[2,3] + 48.25971404805462 y[2,4]
   + 53.60037313302958 y[2,5] + 82.28000972289685 y[2,6]
   + 34.13209633175202 y[3,0] + 70.60453243241541 y[3,1]
   + 25.49509756796392 y[3,2] + 25.07987240796891 y[3,4]
   + 68.5054742338158 y[3,5] + 84.02380615040002 y[3,6]
   + 19.6468827043885 y[4,0] + 48.25971404805462 y[4,2]
   + 25.07987240796891 y[4,3] + 77.00649323271382 y[4,5]
   + 78.10889834071403 y[4,6] + 84.89994110716449 y[4,7]
   + 62.60990336999411 y[5,0] + 22.80350850198276 y[5,1]
   + 53.60037313302958 y[5,2] + 68.5054742338158 y[5,3]
   + 77.00649323271382 y[5,4] + 45 y[5,6] + 58.52349955359813 y[6,0]
   + 67.80117993073571 y[6,1] + 82.28000972289685 y[6,2]
   + 84.02380615040002 y[6,3] + 78.10889834071403 y[6,4] + 45 y[6,5]
   + 47.67598976424087 y[6,7] + 68.54195795277518 y[7,0]
   + 84.89994110716449 y[7,4] + 47.67598976424087 y[7,6] + x[0,1] + x[0,2]
   + x[0,3] + x[0,4] + x[0,5] + x[0,6] + x[0,7] + x[1,0] + x[1,2] + x[1,3]
   + x[1,5] + x[1,6] + x[2,0] + x[2,1] + x[2,3] + x[2,4] + x[2,5] + x[2,6]
   + x[3,0] + x[3,1] + x[3,2] + x[3,4] + x[3,5] + x[3,6] + x[4,0] + x[4,2]
   + x[4,3] + x[4,5] + x[4,6] + x[4,7] + x[5,0] + x[5,1] + x[5,2] + x[5,3]
   + x[5,4] + x[5,6] + x[6,0] + x[6,1] + x[6,2] + x[6,3] + x[6,4] + x[6,5]
   + x[6,7] + x[7,0] + x[7,4] + x[7,6] + 7.531268153505093 r[0,1]
   + 4.924428900898053 r[0,2] + 3.413209633175203 r[0,3]
   + 1.96468827043885 r[0,4] + 6.260990336999412 r[0,5]
   + 5.852349955359813 r[0,6] + 6.854195795277518 r[0,7]
   + 7.531268153505093 r[1,0] + 4.904079934095692 r[1,2]
   + 7.060453243241541 r[1,3] + 2.280350850198276 r[1,5]
   + 6.780117993073572 r[1,6] + 4.924428900898053 r[2,0]
   + 4.904079934095692 r[2,1] + 2.549509756796393 r[2,3]
   + 4.825971404805462 r[2,4] + 5.360037313302959 r[2,5]
   + 8.228000972289685 r[2,6] + 3.413209633175203 r[3,0]
   + 7.060453243241541 r[3,1] + 2.549509756796393 r[3,2]
   + 2.507987240796891 r[3,4] + 6.850547423381581 r[3,5]
   + 8.402380615040002 r[3,6] + 1.96468827043885 r[4,0]
   + 4.825971404805462 r[4,2] + 2.507987240796891 r[4,3]
   + 7.700649323271382 r[4,5] + 7.810889834071403 r[4,6]
   + 8.48999411071645 r[4,7] + 6.260990336999412 r[5,0]
   + 2.280350850198276 r[5,1] + 5.360037313302959 r[5,2]
   + 6.850547423381581 r[5,3] + 7.700649323271382 r[5,4] + 4.5 r[5,6]
   + 5.852349955359813 r[6,0] + 6.780117993073572 r[6,1]
   + 8.228000972289685 r[6,2] + 8.402380615040002 r[6,3]
   + 7.810889834071403 r[6,4] + 4.5 r[6,5] + 4.767598976424087 r[6,7]
   + 6.854195795277518 r[7,0] + 8.48999411071645 r[7,4]
   + 4.767598976424087 r[7,6]
Subject To
 flow_cons_inner_nodes[0]: - y[0,1] - y[0,2] - y[0,3] - y[0,4] - y[0,5]
   - y[0,6] - y[0,7] + y[1,0] + y[2,0] + y[3,0] + y[4,0] + y[5,0] + y[6,0]
   + y[7,0] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] - y[2,5] - y[2,6] + y[3,2] + y[4,2] + y[5,2] + y[6,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] - y[3,5] - y[3,6] + y[4,3] + y[5,3] + y[6,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[2,4] + y[3,4] - y[4,0] - y[4,2]
   - y[4,3] - y[4,5] - y[4,6] - y[4,7] + y[5,4] + y[6,4] + y[7,4] = 0
 flow_cons_inner_nodes[5]: y[0,5] + y[1,5] + y[2,5] + y[3,5] + y[4,5]
   - y[5,0] - y[5,1] - y[5,2] - y[5,3] - y[5,4] - y[5,6] + y[6,5] = 0
 flow_cons_inner_nodes[6]: y[0,6] + y[1,6] + y[2,6] + y[3,6] + y[4,6]
   + y[5,6] - y[6,0] - y[6,1] - y[6,2] - y[6,3] - y[6,4] - y[6,5] - y[6,7]
   + y[7,6] = 0
 flow_cons_source: - y[0,1] + y[1,0] + y[1,2] + y[1,3] + y[1,5] + y[1,6]
   - y[2,1] - y[3,1] - y[5,1] - y[6,1] = 1
 flow_cons_target: y[0,7] + y[4,7] + y[6,7] - y[7,0] - y[7,4] - y[7,6] = 1
 primal_lower: 1.901606310520485 x[0,1] + 3.826768692239931 x[0,2]
   + 0.1985772983452732 x[0,3] + 1.689048466503993 x[0,4]
   + 3.706410497083159 x[0,5] + 0.9843094879350264 x[0,6]
   + 1.289848350932448 x[0,7] + 3.204511670430102 x[1,0]
   + 0.5208877744169962 x[1,2] + 3.593320399708177 x[1,3]
   + 0.1863445233964091 x[1,5] + 3.099601276718154 x[1,6]
   + 1.176009257520978 x[2,0] + 0.6426824106507053 x[2,1]
   + 1.824355324826532 x[2,3] + 3.769397685064372 x[2,4]
   + 3.894643875439194 x[2,5] + 0.5545596645059586 x[2,6]
   + 1.882473296510599 x[3,0] + 0.6735234042754039 x[3,1]
   + 3.525120832690867 x[3,2] + 4.020013441596007 x[3,4]
   + 0.7498516326539315 x[3,5] + 0.2738396382289135 x[3,6]
   + 2.808198470565262 x[4,0] + 1.158663877434198 x[4,2]
   + 0.9372026473919033 x[4,3] + 4.44770661851272 x[4,5]
   + 1.055967705205666 x[4,6] + 1.068811995456136 x[4,7]
   + 3.887396274101969 x[5,0] + 2.127959222503557 x[5,1]
   + 1.407939443040814 x[5,2] + 1.776944918809068 x[5,3]
   + 2.249476365970978 x[5,4] + 3.916125532479517 x[5,6]
   + 1.08725293836729 x[6,0] + 3.750148595550626 x[6,1]
   + 3.938030458850484 x[6,2] + 0.5348675947266021 x[6,3]
   + 3.175568457103552 x[6,4] + 2.032086151226005 x[6,5]
   + 0.4048019614922539 x[6,7] + 0.6512028084603606 x[7,0]
   + 0.073921208251663 x[7,4] + 3.458842029390833 x[7,6] + 48 u[0,1]
   + 5 u[0,2] + 75 u[0,3] + 16 u[0,4] + 77 u[0,5] + 14 u[0,6] + 70 u[0,7]
   + 28 u[1,0] + 6 u[1,2] + 87 u[1,3] + 56 u[1,5] + 8 u[1,6] + 29 u[2,0]
   + 69 u[2,1] + 29 u[2,3] + 13 u[2,4] + 14 u[2,5] + 61 u[2,6] + 94 u[3,0]
   + 83 u[3,1] + 86 u[3,2] + 20 u[3,4] + 85 u[3,5] + 95 u[3,6] + 41 u[4,0]
   + 81 u[4,2] + 59 u[4,3] + 32 u[4,5] + 54 u[4,6] + 96 u[4,7] + 2 u[5,0]
   + 12 u[5,1] + 68 u[5,2] + 22 u[5,3] + 9 u[5,4] + 6 u[5,6] + 97 u[6,0]
   + 73 u[6,1] + 21 u[6,2] + 35 u[6,3] + 60 u[6,4] + 86 u[6,5] + 23 u[6,7]
   + 42 u[7,0] + 96 u[7,4] + 79 u[7,6] <= 205
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
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[1,6]: - u[1,6] + r[1,6] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[2,6]: - u[2,6] + r[2,6] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[3,6]: - u[3,6] + r[3,6] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,6]: - u[4,6] + r[4,6] <= 0
 mccormick1[4,7]: - u[4,7] + r[4,7] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,6]: - u[5,6] + r[5,6] <= 0
 mccormick1[6,0]: - u[6,0] + r[6,0] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,2]: - u[6,2] + r[6,2] <= 0
 mccormick1[6,3]: - u[6,3] + r[6,3] <= 0
 mccormick1[6,4]: - u[6,4] + r[6,4] <= 0
 mccormick1[6,5]: - u[6,5] + r[6,5] <= 0
 mccormick1[6,7]: - u[6,7] + r[6,7] <= 0
 mccormick1[7,0]: - u[7,0] + r[7,0] <= 0
 mccormick1[7,4]: - u[7,4] + r[7,4] <= 0
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
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[2,6]: - y[2,6] + r[2,6] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[3,6]: - y[3,6] + r[3,6] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,6]: - y[4,6] + r[4,6] <= 0
 mccormick2[4,7]: - y[4,7] + r[4,7] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,6]: - y[5,6] + r[5,6] <= 0
 mccormick2[6,0]: - y[6,0] + r[6,0] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,2]: - y[6,2] + r[6,2] <= 0
 mccormick2[6,3]: - y[6,3] + r[6,3] <= 0
 mccormick2[6,4]: - y[6,4] + r[6,4] <= 0
 mccormick2[6,5]: - y[6,5] + r[6,5] <= 0
 mccormick2[6,7]: - y[6,7] + r[6,7] <= 0
 mccormick2[7,0]: - y[7,0] + r[7,0] <= 0
 mccormick2[7,4]: - y[7,4] + r[7,4] <= 0
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
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[2,6]: - y[2,6] - u[2,6] + r[2,6] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[3,6]: - y[3,6] - u[3,6] + r[3,6] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,6]: - y[4,6] - u[4,6] + r[4,6] >= -1
 mccormick3[4,7]: - y[4,7] - u[4,7] + r[4,7] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,6]: - y[5,6] - u[5,6] + r[5,6] >= -1
 mccormick3[6,0]: - y[6,0] - u[6,0] + r[6,0] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,2]: - y[6,2] - u[6,2] + r[6,2] >= -1
 mccormick3[6,3]: - y[6,3] - u[6,3] + r[6,3] >= -1
 mccormick3[6,4]: - y[6,4] - u[6,4] + r[6,4] >= -1
 mccormick3[6,5]: - y[6,5] - u[6,5] + r[6,5] >= -1
 mccormick3[6,7]: - y[6,7] - u[6,7] + r[6,7] >= -1
 mccormick3[7,0]: - y[7,0] - u[7,0] + r[7,0] >= -1
 mccormick3[7,4]: - y[7,4] - u[7,4] + r[7,4] >= -1
 mccormick3[7,6]: - y[7,6] - u[7,6] + r[7,6] >= -1
Bounds
Binaries
 y[0,1] y[0,2] y[0,3] y[0,4] y[0,5] y[0,6] y[0,7] y[1,0] y[1,2] y[1,3]
 y[1,5] y[1,6] y[2,0] y[2,1] y[2,3] y[2,4] y[2,5] y[2,6] y[3,0] y[3,1]
 y[3,2] y[3,4] y[3,5] y[3,6] y[4,0] y[4,2] y[4,3] y[4,5] y[4,6] y[4,7]
 y[5,0] y[5,1] y[5,2] y[5,3] y[5,4] y[5,6] y[6,0] y[6,1] y[6,2] y[6,3]
 y[6,4] y[6,5] y[6,7] y[7,0] y[7,4] y[7,6] x[0,1] x[0,2] x[0,3] x[0,4]
 x[0,5] x[0,6] x[0,7] x[1,0] x[1,2] x[1,3] x[1,5] x[1,6] x[2,0] x[2,1]
 x[2,3] x[2,4] x[2,5] x[2,6] x[3,0] x[3,1] x[3,2] x[3,4] x[3,5] x[3,6]
 x[4,0] x[4,2] x[4,3] x[4,5] x[4,6] x[4,7] x[5,0] x[5,1] x[5,2] x[5,3]
 x[5,4] x[5,6] x[6,0] x[6,1] x[6,2] x[6,3] x[6,4] x[6,5] x[6,7] x[7,0]
 x[7,4] x[7,6] u[0,1] u[0,2] u[0,3] u[0,4] u[0,5] u[0,6] u[0,7] u[1,0]
 u[1,2] u[1,3] u[1,5] u[1,6] u[2,0] u[2,1] u[2,3] u[2,4] u[2,5] u[2,6]
 u[3,0] u[3,1] u[3,2] u[3,4] u[3,5] u[3,6] u[4,0] u[4,2] u[4,3] u[4,5]
 u[4,6] u[4,7] u[5,0] u[5,1] u[5,2] u[5,3] u[5,4] u[5,6] u[6,0] u[6,1]
 u[6,2] u[6,3] u[6,4] u[6,5] u[6,7] u[7,0] u[7,4] u[7,6] r[0,1] r[0,2]
 r[0,3] r[0,4] r[0,5] r[0,6] r[0,7] r[1,0] r[1,2] r[1,3] r[1,5] r[1,6]
 r[2,0] r[2,1] r[2,3] r[2,4] r[2,5] r[2,6] r[3,0] r[3,1] r[3,2] r[3,4]
 r[3,5] r[3,6] r[4,0] r[4,2] r[4,3] r[4,5] r[4,6] r[4,7] r[5,0] r[5,1]
 r[5,2] r[5,3] r[5,4] r[5,6] r[6,0] r[6,1] r[6,2] r[6,3] r[6,4] r[6,5]
 r[6,7] r[7,0] r[7,4] r[7,6]
End
