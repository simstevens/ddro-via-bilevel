\ Model nohadani_8_18
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x229cff0c87735314
Minimize
  22.56102834535696 y[0,2] + 54.81788029466298 y[0,3]
   + 37.8549864614954 y[0,4] + 8.246211251235321 y[0,5]
   + 44.41846462902562 y[0,7] + 48.91829923454004 y[1,2]
   + 11.18033988749895 y[1,3] + 46.2709412050371 y[1,4]
   + 54.91812087098393 y[1,5] + 26.90724809414742 y[1,6]
   + 18.35755975068582 y[1,7] + 22.56102834535696 y[2,0]
   + 48.91829923454004 y[2,1] + 44.2944691807002 y[2,3]
   + 44.27188724235731 y[2,4] + 15.65247584249853 y[2,5]
   + 32.2490309931942 y[2,7] + 54.81788029466298 y[3,0]
   + 11.18033988749895 y[3,1] + 44.2944691807002 y[3,2]
   + 35.12833614050059 y[3,4] + 47.4236228055175 y[3,5]
   + 36.89173349139343 y[3,6] + 12.08304597359457 y[3,7]
   + 37.8549864614954 y[4,0] + 46.2709412050371 y[4,1]
   + 44.27188724235731 y[4,2] + 35.12833614050059 y[4,3] + 35 y[4,5]
   + 33.1058907144937 y[4,7] + 8.246211251235321 y[5,0]
   + 54.91812087098393 y[5,1] + 15.65247584249853 y[5,2]
   + 47.4236228055175 y[5,3] + 35 y[5,4] + 36.61966684720111 y[5,7]
   + 26.90724809414742 y[6,1] + 36.89173349139343 y[6,3]
   + 37.10795063055895 y[6,7] + 44.41846462902562 y[7,0]
   + 18.35755975068582 y[7,1] + 32.2490309931942 y[7,2]
   + 12.08304597359457 y[7,3] + 33.1058907144937 y[7,4]
   + 36.61966684720111 y[7,5] + 37.10795063055895 y[7,6] + x[0,2] + x[0,3]
   + x[0,4] + x[0,5] + x[0,7] + x[1,2] + x[1,3] + x[1,4] + x[1,5] + x[1,6]
   + x[1,7] + x[2,0] + x[2,1] + x[2,3] + x[2,4] + x[2,5] + x[2,7] + x[3,0]
   + x[3,1] + x[3,2] + x[3,4] + x[3,5] + x[3,6] + x[3,7] + x[4,0] + x[4,1]
   + x[4,2] + x[4,3] + x[4,5] + x[4,7] + x[5,0] + x[5,1] + x[5,2] + x[5,3]
   + x[5,4] + x[5,7] + x[6,1] + x[6,3] + x[6,7] + x[7,0] + x[7,1] + x[7,2]
   + x[7,3] + x[7,4] + x[7,5] + x[7,6] + 2.256102834535695 r[0,2]
   + 5.481788029466299 r[0,3] + 3.78549864614954 r[0,4]
   + 0.8246211251235321 r[0,5] + 4.441846462902562 r[0,7]
   + 4.891829923454004 r[1,2] + 1.118033988749895 r[1,3]
   + 4.62709412050371 r[1,4] + 5.491812087098393 r[1,5]
   + 2.690724809414742 r[1,6] + 1.835755975068582 r[1,7]
   + 2.256102834535695 r[2,0] + 4.891829923454004 r[2,1]
   + 4.42944691807002 r[2,3] + 4.427188724235731 r[2,4]
   + 1.565247584249853 r[2,5] + 3.22490309931942 r[2,7]
   + 5.481788029466299 r[3,0] + 1.118033988749895 r[3,1]
   + 4.42944691807002 r[3,2] + 3.512833614050059 r[3,4]
   + 4.742362280551751 r[3,5] + 3.689173349139343 r[3,6]
   + 1.208304597359457 r[3,7] + 3.78549864614954 r[4,0]
   + 4.62709412050371 r[4,1] + 4.427188724235731 r[4,2]
   + 3.512833614050059 r[4,3] + 3.5 r[4,5] + 3.31058907144937 r[4,7]
   + 0.8246211251235321 r[5,0] + 5.491812087098393 r[5,1]
   + 1.565247584249853 r[5,2] + 4.742362280551751 r[5,3] + 3.5 r[5,4]
   + 3.661966684720111 r[5,7] + 2.690724809414742 r[6,1]
   + 3.689173349139343 r[6,3] + 3.710795063055895 r[6,7]
   + 4.441846462902562 r[7,0] + 1.835755975068582 r[7,1]
   + 3.22490309931942 r[7,2] + 1.208304597359457 r[7,3]
   + 3.31058907144937 r[7,4] + 3.661966684720111 r[7,5]
   + 3.710795063055895 r[7,6]
Subject To
 flow_cons_inner_nodes[1]: - y[1,2] - y[1,3] - y[1,4] - y[1,5] - y[1,6]
   - y[1,7] + y[2,1] + y[3,1] + y[4,1] + y[5,1] + y[6,1] + y[7,1] = 0
 flow_cons_inner_nodes[2]: y[0,2] + y[1,2] - y[2,0] - y[2,1] - y[2,3]
   - y[2,4] - y[2,5] - y[2,7] + y[3,2] + y[4,2] + y[5,2] + y[7,2] = 0
 flow_cons_inner_nodes[3]: y[0,3] + y[1,3] + y[2,3] - y[3,0] - y[3,1]
   - y[3,2] - y[3,4] - y[3,5] - y[3,6] - y[3,7] + y[4,3] + y[5,3] + y[6,3]
   + y[7,3] = 0
 flow_cons_inner_nodes[4]: y[0,4] + y[1,4] + y[2,4] + y[3,4] - y[4,0]
   - y[4,1] - y[4,2] - y[4,3] - y[4,5] - y[4,7] + y[5,4] + y[7,4] = 0
 flow_cons_inner_nodes[5]: y[0,5] + y[1,5] + y[2,5] + y[3,5] + y[4,5]
   - y[5,0] - y[5,1] - y[5,2] - y[5,3] - y[5,4] - y[5,7] + y[7,5] = 0
 flow_cons_inner_nodes[7]: y[0,7] + y[1,7] + y[2,7] + y[3,7] + y[4,7]
   + y[5,7] + y[6,7] - y[7,0] - y[7,1] - y[7,2] - y[7,3] - y[7,4] - y[7,5]
   - y[7,6] = 0
 flow_cons_source: y[0,2] + y[0,3] + y[0,4] + y[0,5] + y[0,7] - y[2,0]
   - y[3,0] - y[4,0] - y[5,0] - y[7,0] = 1
 flow_cons_target: y[1,6] + y[3,6] - y[6,1] - y[6,3] - y[6,7] + y[7,6] = 1
 primal_lower: 0.8260793327183136 x[0,2] + 4.623245012410198 x[0,3]
   + 3.688147290572754 x[0,4] + 1.566639378858091 x[0,5]
   + 3.236714073436468 x[0,7] + 1.622990802685489 x[1,2]
   + 2.834012043239739 x[1,3] + 4.357452271538509 x[1,4]
   + 1.341593687088124 x[1,5] + 0.5285211110667971 x[1,6]
   + 4.256326562541249 x[1,7] + 1.675148928186903 x[2,0]
   + 2.331821698725761 x[2,1] + 1.556337145099358 x[2,3]
   + 3.37120095930372 x[2,4] + 3.815920796037915 x[2,5]
   + 3.923744977222386 x[2,7] + 4.627547283554224 x[3,0]
   + 4.638883902759578 x[3,1] + 0.6096625943032863 x[3,2]
   + 0.8839609315854906 x[3,4] + 1.741855569581474 x[3,5]
   + 4.528157231834265 x[3,6] + 0.0824957476102985 x[3,7]
   + 1.951247647028246 x[4,0] + 1.240350038635516 x[4,1]
   + 0.7575353932413537 x[4,2] + 0.8436120782701557 x[4,3]
   + 4.620553171176782 x[4,5] + 1.469552222866511 x[4,7]
   + 2.04773326237701 x[5,0] + 4.643700182219085 x[5,1]
   + 1.199039857277899 x[5,2] + 4.737224056808947 x[5,3]
   + 2.280548412253049 x[5,4] + 1.907257191407239 x[5,7]
   + 2.101867039637269 x[6,1] + 2.155573082905714 x[6,3] + 0.0721596 x[6,7]
   + 4.518576170632109 x[7,0] + 4.269365932417355 x[7,1]
   + 4.126221438455451 x[7,2] + 3.448191337404735 x[7,3]
   + 1.924527573596825 x[7,4] + 2.443898438993241 x[7,5]
   + 3.07655844931866 x[7,6] + 89 u[0,2] + 62 u[0,3] + 84 u[0,4]
   + 85 u[0,5] + 2 u[0,7] + 63 u[1,2] + 7 u[1,3] + 25 u[1,4] + 23 u[1,5]
   + 96 u[1,6] + 93 u[1,7] + 21 u[2,0] + 98 u[2,1] + 22 u[2,3] + 42 u[2,4]
   + 66 u[2,5] + 83 u[2,7] + 62 u[3,0] + 15 u[3,1] + 12 u[3,2] + 51 u[3,4]
   + 97 u[3,5] + 54 u[3,6] + 24 u[3,7] + 58 u[4,0] + 22 u[4,1] + 36 u[4,2]
   + 69 u[4,3] + 43 u[4,5] + 17 u[4,7] + 83 u[5,0] + 53 u[5,1] + 73 u[5,2]
   + 31 u[5,3] + 26 u[5,4] + 79 u[5,7] + 58 u[6,1] + 6 u[6,3] + 90 u[6,7]
   + 60 u[7,0] + 81 u[7,1] + 83 u[7,2] + 20 u[7,3] + 47 u[7,4] + 37 u[7,5]
   + 64 u[7,6] <= 219
 mccormick1[0,2]: - u[0,2] + r[0,2] <= 0
 mccormick1[0,3]: - u[0,3] + r[0,3] <= 0
 mccormick1[0,4]: - u[0,4] + r[0,4] <= 0
 mccormick1[0,5]: - u[0,5] + r[0,5] <= 0
 mccormick1[0,7]: - u[0,7] + r[0,7] <= 0
 mccormick1[1,2]: - u[1,2] + r[1,2] <= 0
 mccormick1[1,3]: - u[1,3] + r[1,3] <= 0
 mccormick1[1,4]: - u[1,4] + r[1,4] <= 0
 mccormick1[1,5]: - u[1,5] + r[1,5] <= 0
 mccormick1[1,6]: - u[1,6] + r[1,6] <= 0
 mccormick1[1,7]: - u[1,7] + r[1,7] <= 0
 mccormick1[2,0]: - u[2,0] + r[2,0] <= 0
 mccormick1[2,1]: - u[2,1] + r[2,1] <= 0
 mccormick1[2,3]: - u[2,3] + r[2,3] <= 0
 mccormick1[2,4]: - u[2,4] + r[2,4] <= 0
 mccormick1[2,5]: - u[2,5] + r[2,5] <= 0
 mccormick1[2,7]: - u[2,7] + r[2,7] <= 0
 mccormick1[3,0]: - u[3,0] + r[3,0] <= 0
 mccormick1[3,1]: - u[3,1] + r[3,1] <= 0
 mccormick1[3,2]: - u[3,2] + r[3,2] <= 0
 mccormick1[3,4]: - u[3,4] + r[3,4] <= 0
 mccormick1[3,5]: - u[3,5] + r[3,5] <= 0
 mccormick1[3,6]: - u[3,6] + r[3,6] <= 0
 mccormick1[3,7]: - u[3,7] + r[3,7] <= 0
 mccormick1[4,0]: - u[4,0] + r[4,0] <= 0
 mccormick1[4,1]: - u[4,1] + r[4,1] <= 0
 mccormick1[4,2]: - u[4,2] + r[4,2] <= 0
 mccormick1[4,3]: - u[4,3] + r[4,3] <= 0
 mccormick1[4,5]: - u[4,5] + r[4,5] <= 0
 mccormick1[4,7]: - u[4,7] + r[4,7] <= 0
 mccormick1[5,0]: - u[5,0] + r[5,0] <= 0
 mccormick1[5,1]: - u[5,1] + r[5,1] <= 0
 mccormick1[5,2]: - u[5,2] + r[5,2] <= 0
 mccormick1[5,3]: - u[5,3] + r[5,3] <= 0
 mccormick1[5,4]: - u[5,4] + r[5,4] <= 0
 mccormick1[5,7]: - u[5,7] + r[5,7] <= 0
 mccormick1[6,1]: - u[6,1] + r[6,1] <= 0
 mccormick1[6,3]: - u[6,3] + r[6,3] <= 0
 mccormick1[6,7]: - u[6,7] + r[6,7] <= 0
 mccormick1[7,0]: - u[7,0] + r[7,0] <= 0
 mccormick1[7,1]: - u[7,1] + r[7,1] <= 0
 mccormick1[7,2]: - u[7,2] + r[7,2] <= 0
 mccormick1[7,3]: - u[7,3] + r[7,3] <= 0
 mccormick1[7,4]: - u[7,4] + r[7,4] <= 0
 mccormick1[7,5]: - u[7,5] + r[7,5] <= 0
 mccormick1[7,6]: - u[7,6] + r[7,6] <= 0
 mccormick2[0,2]: - y[0,2] + r[0,2] <= 0
 mccormick2[0,3]: - y[0,3] + r[0,3] <= 0
 mccormick2[0,4]: - y[0,4] + r[0,4] <= 0
 mccormick2[0,5]: - y[0,5] + r[0,5] <= 0
 mccormick2[0,7]: - y[0,7] + r[0,7] <= 0
 mccormick2[1,2]: - y[1,2] + r[1,2] <= 0
 mccormick2[1,3]: - y[1,3] + r[1,3] <= 0
 mccormick2[1,4]: - y[1,4] + r[1,4] <= 0
 mccormick2[1,5]: - y[1,5] + r[1,5] <= 0
 mccormick2[1,6]: - y[1,6] + r[1,6] <= 0
 mccormick2[1,7]: - y[1,7] + r[1,7] <= 0
 mccormick2[2,0]: - y[2,0] + r[2,0] <= 0
 mccormick2[2,1]: - y[2,1] + r[2,1] <= 0
 mccormick2[2,3]: - y[2,3] + r[2,3] <= 0
 mccormick2[2,4]: - y[2,4] + r[2,4] <= 0
 mccormick2[2,5]: - y[2,5] + r[2,5] <= 0
 mccormick2[2,7]: - y[2,7] + r[2,7] <= 0
 mccormick2[3,0]: - y[3,0] + r[3,0] <= 0
 mccormick2[3,1]: - y[3,1] + r[3,1] <= 0
 mccormick2[3,2]: - y[3,2] + r[3,2] <= 0
 mccormick2[3,4]: - y[3,4] + r[3,4] <= 0
 mccormick2[3,5]: - y[3,5] + r[3,5] <= 0
 mccormick2[3,6]: - y[3,6] + r[3,6] <= 0
 mccormick2[3,7]: - y[3,7] + r[3,7] <= 0
 mccormick2[4,0]: - y[4,0] + r[4,0] <= 0
 mccormick2[4,1]: - y[4,1] + r[4,1] <= 0
 mccormick2[4,2]: - y[4,2] + r[4,2] <= 0
 mccormick2[4,3]: - y[4,3] + r[4,3] <= 0
 mccormick2[4,5]: - y[4,5] + r[4,5] <= 0
 mccormick2[4,7]: - y[4,7] + r[4,7] <= 0
 mccormick2[5,0]: - y[5,0] + r[5,0] <= 0
 mccormick2[5,1]: - y[5,1] + r[5,1] <= 0
 mccormick2[5,2]: - y[5,2] + r[5,2] <= 0
 mccormick2[5,3]: - y[5,3] + r[5,3] <= 0
 mccormick2[5,4]: - y[5,4] + r[5,4] <= 0
 mccormick2[5,7]: - y[5,7] + r[5,7] <= 0
 mccormick2[6,1]: - y[6,1] + r[6,1] <= 0
 mccormick2[6,3]: - y[6,3] + r[6,3] <= 0
 mccormick2[6,7]: - y[6,7] + r[6,7] <= 0
 mccormick2[7,0]: - y[7,0] + r[7,0] <= 0
 mccormick2[7,1]: - y[7,1] + r[7,1] <= 0
 mccormick2[7,2]: - y[7,2] + r[7,2] <= 0
 mccormick2[7,3]: - y[7,3] + r[7,3] <= 0
 mccormick2[7,4]: - y[7,4] + r[7,4] <= 0
 mccormick2[7,5]: - y[7,5] + r[7,5] <= 0
 mccormick2[7,6]: - y[7,6] + r[7,6] <= 0
 mccormick3[0,2]: - y[0,2] - u[0,2] + r[0,2] >= -1
 mccormick3[0,3]: - y[0,3] - u[0,3] + r[0,3] >= -1
 mccormick3[0,4]: - y[0,4] - u[0,4] + r[0,4] >= -1
 mccormick3[0,5]: - y[0,5] - u[0,5] + r[0,5] >= -1
 mccormick3[0,7]: - y[0,7] - u[0,7] + r[0,7] >= -1
 mccormick3[1,2]: - y[1,2] - u[1,2] + r[1,2] >= -1
 mccormick3[1,3]: - y[1,3] - u[1,3] + r[1,3] >= -1
 mccormick3[1,4]: - y[1,4] - u[1,4] + r[1,4] >= -1
 mccormick3[1,5]: - y[1,5] - u[1,5] + r[1,5] >= -1
 mccormick3[1,6]: - y[1,6] - u[1,6] + r[1,6] >= -1
 mccormick3[1,7]: - y[1,7] - u[1,7] + r[1,7] >= -1
 mccormick3[2,0]: - y[2,0] - u[2,0] + r[2,0] >= -1
 mccormick3[2,1]: - y[2,1] - u[2,1] + r[2,1] >= -1
 mccormick3[2,3]: - y[2,3] - u[2,3] + r[2,3] >= -1
 mccormick3[2,4]: - y[2,4] - u[2,4] + r[2,4] >= -1
 mccormick3[2,5]: - y[2,5] - u[2,5] + r[2,5] >= -1
 mccormick3[2,7]: - y[2,7] - u[2,7] + r[2,7] >= -1
 mccormick3[3,0]: - y[3,0] - u[3,0] + r[3,0] >= -1
 mccormick3[3,1]: - y[3,1] - u[3,1] + r[3,1] >= -1
 mccormick3[3,2]: - y[3,2] - u[3,2] + r[3,2] >= -1
 mccormick3[3,4]: - y[3,4] - u[3,4] + r[3,4] >= -1
 mccormick3[3,5]: - y[3,5] - u[3,5] + r[3,5] >= -1
 mccormick3[3,6]: - y[3,6] - u[3,6] + r[3,6] >= -1
 mccormick3[3,7]: - y[3,7] - u[3,7] + r[3,7] >= -1
 mccormick3[4,0]: - y[4,0] - u[4,0] + r[4,0] >= -1
 mccormick3[4,1]: - y[4,1] - u[4,1] + r[4,1] >= -1
 mccormick3[4,2]: - y[4,2] - u[4,2] + r[4,2] >= -1
 mccormick3[4,3]: - y[4,3] - u[4,3] + r[4,3] >= -1
 mccormick3[4,5]: - y[4,5] - u[4,5] + r[4,5] >= -1
 mccormick3[4,7]: - y[4,7] - u[4,7] + r[4,7] >= -1
 mccormick3[5,0]: - y[5,0] - u[5,0] + r[5,0] >= -1
 mccormick3[5,1]: - y[5,1] - u[5,1] + r[5,1] >= -1
 mccormick3[5,2]: - y[5,2] - u[5,2] + r[5,2] >= -1
 mccormick3[5,3]: - y[5,3] - u[5,3] + r[5,3] >= -1
 mccormick3[5,4]: - y[5,4] - u[5,4] + r[5,4] >= -1
 mccormick3[5,7]: - y[5,7] - u[5,7] + r[5,7] >= -1
 mccormick3[6,1]: - y[6,1] - u[6,1] + r[6,1] >= -1
 mccormick3[6,3]: - y[6,3] - u[6,3] + r[6,3] >= -1
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
 y[0,2] y[0,3] y[0,4] y[0,5] y[0,7] y[1,2] y[1,3] y[1,4] y[1,5] y[1,6]
 y[1,7] y[2,0] y[2,1] y[2,3] y[2,4] y[2,5] y[2,7] y[3,0] y[3,1] y[3,2]
 y[3,4] y[3,5] y[3,6] y[3,7] y[4,0] y[4,1] y[4,2] y[4,3] y[4,5] y[4,7]
 y[5,0] y[5,1] y[5,2] y[5,3] y[5,4] y[5,7] y[6,1] y[6,3] y[6,7] y[7,0]
 y[7,1] y[7,2] y[7,3] y[7,4] y[7,5] y[7,6] x[0,2] x[0,3] x[0,4] x[0,5]
 x[0,7] x[1,2] x[1,3] x[1,4] x[1,5] x[1,6] x[1,7] x[2,0] x[2,1] x[2,3]
 x[2,4] x[2,5] x[2,7] x[3,0] x[3,1] x[3,2] x[3,4] x[3,5] x[3,6] x[3,7]
 x[4,0] x[4,1] x[4,2] x[4,3] x[4,5] x[4,7] x[5,0] x[5,1] x[5,2] x[5,3]
 x[5,4] x[5,7] x[6,1] x[6,3] x[6,7] x[7,0] x[7,1] x[7,2] x[7,3] x[7,4]
 x[7,5] x[7,6] u[0,2] u[0,3] u[0,4] u[0,5] u[0,7] u[1,2] u[1,3] u[1,4]
 u[1,5] u[1,6] u[1,7] u[2,0] u[2,1] u[2,3] u[2,4] u[2,5] u[2,7] u[3,0]
 u[3,1] u[3,2] u[3,4] u[3,5] u[3,6] u[3,7] u[4,0] u[4,1] u[4,2] u[4,3]
 u[4,5] u[4,7] u[5,0] u[5,1] u[5,2] u[5,3] u[5,4] u[5,7] u[6,1] u[6,3]
 u[6,7] u[7,0] u[7,1] u[7,2] u[7,3] u[7,4] u[7,5] u[7,6] r[0,2] r[0,3]
 r[0,4] r[0,5] r[0,7] r[1,2] r[1,3] r[1,4] r[1,5] r[1,6] r[1,7] r[2,0]
 r[2,1] r[2,3] r[2,4] r[2,5] r[2,7] r[3,0] r[3,1] r[3,2] r[3,4] r[3,5]
 r[3,6] r[3,7] r[4,0] r[4,1] r[4,2] r[4,3] r[4,5] r[4,7] r[5,0] r[5,1]
 r[5,2] r[5,3] r[5,4] r[5,7] r[6,1] r[6,3] r[6,7] r[7,0] r[7,1] r[7,2]
 r[7,3] r[7,4] r[7,5] r[7,6]
End
