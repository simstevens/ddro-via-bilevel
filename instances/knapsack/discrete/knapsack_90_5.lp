\ Model knapsack_90_5
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xc29ff4c0dcb79651
Minimize
  - 90 x[0] - 50 x[1] - 56 x[2] - 72 x[3] - 89 x[4] - 57 x[5] - 13 x[6]
   - 47 x[7] - 38 x[8] - 22 x[9] - 19 x[10] - 67 x[11] - 39 x[12]
   - 26 x[13] - 3 x[14] - 36 x[15] - 62 x[16] - 38 x[17] - 46 x[18]
   - 93 x[19] - 73 x[20] - 27 x[21] - 8 x[22] - 84 x[23] - 93 x[24]
   - 70 x[25] - 4 x[26] - 59 x[27] - 90 x[28] - 12 x[29] - 5 x[30]
   - 48 x[31] - 80 x[32] - 51 x[33] - 27 x[34] - 29 x[35] - 81 x[36]
   - 95 x[37] - 46 x[38] - 3 x[39] - 88 x[40] - 21 x[41] - x[42] - 23 x[43]
   - 70 x[44] - 31 x[45] - 72 x[46] - 24 x[47] - 56 x[48] - 37 x[49]
   - 55 x[50] - 54 x[51] - 15 x[52] - 69 x[53] - 68 x[54] - 98 x[55]
   - 50 x[56] - 68 x[57] - 16 x[58] - 11 x[59] - 12 x[60] - 66 x[61]
   - 41 x[62] - 9 x[63] - 78 x[64] - 93 x[65] - 5 x[66] - 9 x[67]
   - 88 x[68] - 65 x[69] - 21 x[70] - 27 x[71] - 97 x[72] - 93 x[73]
   - 66 x[74] - 90 x[75] - 38 x[76] - 81 x[77] - 92 x[78] - 67 x[79]
   - 87 x[80] - 86 x[81] - 81 x[82] - 78 x[83] - 49 x[84] - 52 x[85]
   - 90 x[86] - 67 x[87] - 8 x[88] - 34 x[89]
Subject To
 primal_upper: 41 x[0] + 26 x[1] + 36 x[2] + 33 x[3] + 90 x[4] + 23 x[5]
   + 83 x[6] + 5 x[7] + 83 x[8] + 100 x[9] + 33 x[10] + 73 x[11] + 94 x[12]
   + 78 x[13] + 42 x[14] + 10 x[15] + 83 x[16] + 38 x[17] + 55 x[18]
   + 68 x[19] + 27 x[20] + 93 x[21] + 10 x[22] + 24 x[23] + 18 x[24]
   + 26 x[25] + 12 x[26] + 81 x[27] + 35 x[28] + 61 x[29] + 83 x[30]
   + 61 x[31] + 49 x[32] + 31 x[33] + 86 x[34] + 99 x[35] + 38 x[36]
   + 38 x[37] + 14 x[38] + 96 x[39] + 53 x[40] + 39 x[41] + 56 x[42]
   + 63 x[43] + 45 x[44] + 60 x[45] + 15 x[46] + 39 x[47] + 77 x[48]
   + 90 x[49] + 96 x[50] + 26 x[51] + 3 x[52] + 94 x[53] + 58 x[54]
   + 97 x[55] + 59 x[56] + 56 x[57] + 26 x[58] + 72 x[59] + 98 x[60]
   + 28 x[61] + 41 x[62] + 28 x[63] + x[64] + 78 x[65] + 62 x[66]
   + 60 x[67] + 70 x[68] + 15 x[69] + 15 x[70] + 47 x[71] + 48 x[72]
   + 25 x[73] + 57 x[74] + 98 x[75] + 20 x[76] + 73 x[77] + 46 x[78]
   + 64 x[79] + 79 x[80] + 39 x[81] + 12 x[82] + 19 x[83] + 3 x[84]
   + 11 x[85] + 5 x[86] + 78 x[87] + 72 x[88] + 13 x[89] + 4.1 r[0]
   + 2.6 r[1] + 3.6 r[2] + 3.3 r[3] + 9 r[4] + 2.3 r[5] + 8.3 r[6]
   + 0.5 r[7] + 8.3 r[8] + 10 r[9] + 3.3 r[10] + 7.3 r[11] + 9.4 r[12]
   + 7.8 r[13] + 4.2 r[14] + r[15] + 8.3 r[16] + 3.8 r[17] + 5.5 r[18]
   + 6.8 r[19] + 2.7 r[20] + 9.3 r[21] + r[22] + 2.4 r[23] + 1.8 r[24]
   + 2.6 r[25] + 1.2 r[26] + 8.1 r[27] + 3.5 r[28] + 6.1 r[29] + 8.3 r[30]
   + 6.1 r[31] + 4.9 r[32] + 3.1 r[33] + 8.6 r[34] + 9.9 r[35] + 3.8 r[36]
   + 3.8 r[37] + 1.4 r[38] + 9.6 r[39] + 5.3 r[40] + 3.9 r[41] + 5.6 r[42]
   + 6.3 r[43] + 4.5 r[44] + 6 r[45] + 1.5 r[46] + 3.9 r[47] + 7.7 r[48]
   + 9 r[49] + 9.6 r[50] + 2.6 r[51] + 0.3 r[52] + 9.4 r[53] + 5.8 r[54]
   + 9.7 r[55] + 5.9 r[56] + 5.6 r[57] + 2.6 r[58] + 7.2 r[59] + 9.8 r[60]
   + 2.8 r[61] + 4.1 r[62] + 2.8 r[63] + 0.1 r[64] + 7.8 r[65] + 6.2 r[66]
   + 6 r[67] + 7 r[68] + 1.5 r[69] + 1.5 r[70] + 4.7 r[71] + 4.8 r[72]
   + 2.5 r[73] + 5.7 r[74] + 9.8 r[75] + 2 r[76] + 7.3 r[77] + 4.6 r[78]
   + 6.4 r[79] + 7.9 r[80] + 3.9 r[81] + 1.2 r[82] + 1.9 r[83] + 0.3 r[84]
   + 1.1 r[85] + 0.5 r[86] + 7.8 r[87] + 7.2 r[88] + 1.3 r[89] <= 429
 primal_lower: 1.104367430764872 x[0] + 0.944253128123414 x[1]
   + 1.192560944588496 x[2] + 2.319859540280461 x[3]
   + 0.7656765964594783 x[4] + 2.327837165416273 x[5]
   + 0.2010245742206889 x[6] + 3.495790625143264 x[7]
   + 2.622492357866997 x[8] + 2.064028756063954 x[9]
   + 0.0153245609425038 x[10] + 1.17126997121062 x[11]
   + 2.824184275041716 x[12] + 3.894519926445667 x[13]
   + 2.961626893801642 x[14] + 3.835439203849819 x[15]
   + 4.419885574933229 x[16] + 1.828501033681047 x[17]
   + 3.377136970910622 x[18] + 4.692903182461647 x[19]
   + 2.032527381232013 x[20] + 1.592367023314114 x[21]
   + 4.529038107443967 x[22] + 4.335700177136115 x[23]
   + 2.311403362730252 x[24] + 3.284505199352169 x[25]
   + 4.29895367689108 x[26] + 2.698388775181241 x[27]
   + 4.209613002814177 x[28] + 0.7501377065241704 x[29]
   + 0.7698323901337873 x[30] + 4.618283437193672 x[31]
   + 2.642180351443165 x[32] + 3.905886554775309 x[33]
   + 0.2468257091872993 x[34] + 2.445103876293299 x[35]
   + 0.3391787215860087 x[36] + 3.782928226070456 x[37]
   + 4.407179054586641 x[38] + 0.00715923686442799 x[39]
   + 1.323840414971481 x[40] + 3.22212604780797 x[41]
   + 4.04095587702322 x[42] + 2.938989095963386 x[43]
   + 4.460749911264644 x[44] + 2.491628426425993 x[45]
   + 2.335900493531941 x[46] + 1.964791142711454 x[47]
   + 0.6773273791595388 x[48] + 0.6257820911648529 x[49]
   + 3.656503623814038 x[50] + 3.46870054929076 x[51]
   + 0.5888574534781871 x[52] + 0.7388112579129575 x[53]
   + 4.682302398418175 x[54] + 0.060996470028115 x[55]
   + 0.5967284267555781 x[56] + 3.974680192484806 x[57]
   + 3.347314187137253 x[58] + 4.259016495519286 x[59]
   + 3.341784762269699 x[60] + 3.060654395081486 x[61]
   + 2.805865934075591 x[62] + 2.427938518498421 x[63]
   + 4.712139352575543 x[64] + 3.062644287648847 x[65]
   + 2.431962597922201 x[66] + 1.513927885807979 x[67]
   + 1.684820636092967 x[68] + 1.113121195280391 x[69]
   + 1.030164619427644 x[70] + 0.1475717956807992 x[71]
   + 2.777119428978469 x[72] + 4.045404264688502 x[73]
   + 4.452231419611023 x[74] + 3.551840885276467 x[75]
   + 0.6990044342602202 x[76] + 1.940912298403043 x[77]
   + 3.562412748976556 x[78] + 0.0107164813926108 x[79]
   + 2.496826413993581 x[80] + 3.036207795801242 x[81]
   + 4.068129607172806 x[82] + 0.8245820753711107 x[83]
   + 1.666508736489989 x[84] + 1.047120459779928 x[85]
   + 1.572668268590853 x[86] + 0.3671160309534267 x[87]
   + 4.616984267366709 x[88] + 0.9246579751861799 x[89] + 45 u[0] + 9 u[1]
   + 15 u[2] + 92 u[3] + 21 u[4] + 79 u[5] + 46 u[6] + 17 u[7] + 74 u[8]
   + 99 u[9] + u[10] + 88 u[11] + 33 u[12] + u[13] + 46 u[14] + 90 u[15]
   + 30 u[16] + u[17] + 2 u[18] + 99 u[19] + 14 u[20] + 17 u[21] + 57 u[22]
   + 12 u[23] + 74 u[24] + 5 u[25] + 43 u[26] + 37 u[27] + 67 u[28]
   + 24 u[29] + 51 u[30] + 77 u[31] + 5 u[32] + 14 u[33] + 53 u[34]
   + 42 u[35] + 13 u[36] + 94 u[37] + 13 u[38] + 100 u[39] + 100 u[40]
   + 71 u[41] + 31 u[42] + 47 u[43] + 52 u[44] + 20 u[45] + 43 u[46]
   + 91 u[47] + 76 u[48] + 41 u[49] + 4 u[50] + u[51] + 42 u[52] + 81 u[53]
   + 78 u[54] + 49 u[55] + 62 u[56] + 4 u[57] + 49 u[58] + 7 u[59]
   + 82 u[60] + 80 u[61] + 21 u[62] + 72 u[63] + 89 u[64] + 85 u[65]
   + 70 u[66] + 72 u[67] + 73 u[68] + 87 u[69] + 99 u[70] + 71 u[71]
   + 15 u[72] + 4 u[73] + 85 u[74] + 70 u[75] + 88 u[76] + 44 u[77]
   + 46 u[78] + 28 u[79] + 99 u[80] + 83 u[81] + 48 u[82] + 39 u[83]
   + 79 u[84] + 27 u[85] + 73 u[86] + 37 u[87] + 43 u[88] + 16 u[89]
   <= 20972
 mccormick1[0]: - u[0] + r[0] <= 0
 mccormick1[1]: - u[1] + r[1] <= 0
 mccormick1[2]: - u[2] + r[2] <= 0
 mccormick1[3]: - u[3] + r[3] <= 0
 mccormick1[4]: - u[4] + r[4] <= 0
 mccormick1[5]: - u[5] + r[5] <= 0
 mccormick1[6]: - u[6] + r[6] <= 0
 mccormick1[7]: - u[7] + r[7] <= 0
 mccormick1[8]: - u[8] + r[8] <= 0
 mccormick1[9]: - u[9] + r[9] <= 0
 mccormick1[10]: - u[10] + r[10] <= 0
 mccormick1[11]: - u[11] + r[11] <= 0
 mccormick1[12]: - u[12] + r[12] <= 0
 mccormick1[13]: - u[13] + r[13] <= 0
 mccormick1[14]: - u[14] + r[14] <= 0
 mccormick1[15]: - u[15] + r[15] <= 0
 mccormick1[16]: - u[16] + r[16] <= 0
 mccormick1[17]: - u[17] + r[17] <= 0
 mccormick1[18]: - u[18] + r[18] <= 0
 mccormick1[19]: - u[19] + r[19] <= 0
 mccormick1[20]: - u[20] + r[20] <= 0
 mccormick1[21]: - u[21] + r[21] <= 0
 mccormick1[22]: - u[22] + r[22] <= 0
 mccormick1[23]: - u[23] + r[23] <= 0
 mccormick1[24]: - u[24] + r[24] <= 0
 mccormick1[25]: - u[25] + r[25] <= 0
 mccormick1[26]: - u[26] + r[26] <= 0
 mccormick1[27]: - u[27] + r[27] <= 0
 mccormick1[28]: - u[28] + r[28] <= 0
 mccormick1[29]: - u[29] + r[29] <= 0
 mccormick1[30]: - u[30] + r[30] <= 0
 mccormick1[31]: - u[31] + r[31] <= 0
 mccormick1[32]: - u[32] + r[32] <= 0
 mccormick1[33]: - u[33] + r[33] <= 0
 mccormick1[34]: - u[34] + r[34] <= 0
 mccormick1[35]: - u[35] + r[35] <= 0
 mccormick1[36]: - u[36] + r[36] <= 0
 mccormick1[37]: - u[37] + r[37] <= 0
 mccormick1[38]: - u[38] + r[38] <= 0
 mccormick1[39]: - u[39] + r[39] <= 0
 mccormick1[40]: - u[40] + r[40] <= 0
 mccormick1[41]: - u[41] + r[41] <= 0
 mccormick1[42]: - u[42] + r[42] <= 0
 mccormick1[43]: - u[43] + r[43] <= 0
 mccormick1[44]: - u[44] + r[44] <= 0
 mccormick1[45]: - u[45] + r[45] <= 0
 mccormick1[46]: - u[46] + r[46] <= 0
 mccormick1[47]: - u[47] + r[47] <= 0
 mccormick1[48]: - u[48] + r[48] <= 0
 mccormick1[49]: - u[49] + r[49] <= 0
 mccormick1[50]: - u[50] + r[50] <= 0
 mccormick1[51]: - u[51] + r[51] <= 0
 mccormick1[52]: - u[52] + r[52] <= 0
 mccormick1[53]: - u[53] + r[53] <= 0
 mccormick1[54]: - u[54] + r[54] <= 0
 mccormick1[55]: - u[55] + r[55] <= 0
 mccormick1[56]: - u[56] + r[56] <= 0
 mccormick1[57]: - u[57] + r[57] <= 0
 mccormick1[58]: - u[58] + r[58] <= 0
 mccormick1[59]: - u[59] + r[59] <= 0
 mccormick1[60]: - u[60] + r[60] <= 0
 mccormick1[61]: - u[61] + r[61] <= 0
 mccormick1[62]: - u[62] + r[62] <= 0
 mccormick1[63]: - u[63] + r[63] <= 0
 mccormick1[64]: - u[64] + r[64] <= 0
 mccormick1[65]: - u[65] + r[65] <= 0
 mccormick1[66]: - u[66] + r[66] <= 0
 mccormick1[67]: - u[67] + r[67] <= 0
 mccormick1[68]: - u[68] + r[68] <= 0
 mccormick1[69]: - u[69] + r[69] <= 0
 mccormick1[70]: - u[70] + r[70] <= 0
 mccormick1[71]: - u[71] + r[71] <= 0
 mccormick1[72]: - u[72] + r[72] <= 0
 mccormick1[73]: - u[73] + r[73] <= 0
 mccormick1[74]: - u[74] + r[74] <= 0
 mccormick1[75]: - u[75] + r[75] <= 0
 mccormick1[76]: - u[76] + r[76] <= 0
 mccormick1[77]: - u[77] + r[77] <= 0
 mccormick1[78]: - u[78] + r[78] <= 0
 mccormick1[79]: - u[79] + r[79] <= 0
 mccormick1[80]: - u[80] + r[80] <= 0
 mccormick1[81]: - u[81] + r[81] <= 0
 mccormick1[82]: - u[82] + r[82] <= 0
 mccormick1[83]: - u[83] + r[83] <= 0
 mccormick1[84]: - u[84] + r[84] <= 0
 mccormick1[85]: - u[85] + r[85] <= 0
 mccormick1[86]: - u[86] + r[86] <= 0
 mccormick1[87]: - u[87] + r[87] <= 0
 mccormick1[88]: - u[88] + r[88] <= 0
 mccormick1[89]: - u[89] + r[89] <= 0
 mccormick2[0]: - x[0] + r[0] <= 0
 mccormick2[1]: - x[1] + r[1] <= 0
 mccormick2[2]: - x[2] + r[2] <= 0
 mccormick2[3]: - x[3] + r[3] <= 0
 mccormick2[4]: - x[4] + r[4] <= 0
 mccormick2[5]: - x[5] + r[5] <= 0
 mccormick2[6]: - x[6] + r[6] <= 0
 mccormick2[7]: - x[7] + r[7] <= 0
 mccormick2[8]: - x[8] + r[8] <= 0
 mccormick2[9]: - x[9] + r[9] <= 0
 mccormick2[10]: - x[10] + r[10] <= 0
 mccormick2[11]: - x[11] + r[11] <= 0
 mccormick2[12]: - x[12] + r[12] <= 0
 mccormick2[13]: - x[13] + r[13] <= 0
 mccormick2[14]: - x[14] + r[14] <= 0
 mccormick2[15]: - x[15] + r[15] <= 0
 mccormick2[16]: - x[16] + r[16] <= 0
 mccormick2[17]: - x[17] + r[17] <= 0
 mccormick2[18]: - x[18] + r[18] <= 0
 mccormick2[19]: - x[19] + r[19] <= 0
 mccormick2[20]: - x[20] + r[20] <= 0
 mccormick2[21]: - x[21] + r[21] <= 0
 mccormick2[22]: - x[22] + r[22] <= 0
 mccormick2[23]: - x[23] + r[23] <= 0
 mccormick2[24]: - x[24] + r[24] <= 0
 mccormick2[25]: - x[25] + r[25] <= 0
 mccormick2[26]: - x[26] + r[26] <= 0
 mccormick2[27]: - x[27] + r[27] <= 0
 mccormick2[28]: - x[28] + r[28] <= 0
 mccormick2[29]: - x[29] + r[29] <= 0
 mccormick2[30]: - x[30] + r[30] <= 0
 mccormick2[31]: - x[31] + r[31] <= 0
 mccormick2[32]: - x[32] + r[32] <= 0
 mccormick2[33]: - x[33] + r[33] <= 0
 mccormick2[34]: - x[34] + r[34] <= 0
 mccormick2[35]: - x[35] + r[35] <= 0
 mccormick2[36]: - x[36] + r[36] <= 0
 mccormick2[37]: - x[37] + r[37] <= 0
 mccormick2[38]: - x[38] + r[38] <= 0
 mccormick2[39]: - x[39] + r[39] <= 0
 mccormick2[40]: - x[40] + r[40] <= 0
 mccormick2[41]: - x[41] + r[41] <= 0
 mccormick2[42]: - x[42] + r[42] <= 0
 mccormick2[43]: - x[43] + r[43] <= 0
 mccormick2[44]: - x[44] + r[44] <= 0
 mccormick2[45]: - x[45] + r[45] <= 0
 mccormick2[46]: - x[46] + r[46] <= 0
 mccormick2[47]: - x[47] + r[47] <= 0
 mccormick2[48]: - x[48] + r[48] <= 0
 mccormick2[49]: - x[49] + r[49] <= 0
 mccormick2[50]: - x[50] + r[50] <= 0
 mccormick2[51]: - x[51] + r[51] <= 0
 mccormick2[52]: - x[52] + r[52] <= 0
 mccormick2[53]: - x[53] + r[53] <= 0
 mccormick2[54]: - x[54] + r[54] <= 0
 mccormick2[55]: - x[55] + r[55] <= 0
 mccormick2[56]: - x[56] + r[56] <= 0
 mccormick2[57]: - x[57] + r[57] <= 0
 mccormick2[58]: - x[58] + r[58] <= 0
 mccormick2[59]: - x[59] + r[59] <= 0
 mccormick2[60]: - x[60] + r[60] <= 0
 mccormick2[61]: - x[61] + r[61] <= 0
 mccormick2[62]: - x[62] + r[62] <= 0
 mccormick2[63]: - x[63] + r[63] <= 0
 mccormick2[64]: - x[64] + r[64] <= 0
 mccormick2[65]: - x[65] + r[65] <= 0
 mccormick2[66]: - x[66] + r[66] <= 0
 mccormick2[67]: - x[67] + r[67] <= 0
 mccormick2[68]: - x[68] + r[68] <= 0
 mccormick2[69]: - x[69] + r[69] <= 0
 mccormick2[70]: - x[70] + r[70] <= 0
 mccormick2[71]: - x[71] + r[71] <= 0
 mccormick2[72]: - x[72] + r[72] <= 0
 mccormick2[73]: - x[73] + r[73] <= 0
 mccormick2[74]: - x[74] + r[74] <= 0
 mccormick2[75]: - x[75] + r[75] <= 0
 mccormick2[76]: - x[76] + r[76] <= 0
 mccormick2[77]: - x[77] + r[77] <= 0
 mccormick2[78]: - x[78] + r[78] <= 0
 mccormick2[79]: - x[79] + r[79] <= 0
 mccormick2[80]: - x[80] + r[80] <= 0
 mccormick2[81]: - x[81] + r[81] <= 0
 mccormick2[82]: - x[82] + r[82] <= 0
 mccormick2[83]: - x[83] + r[83] <= 0
 mccormick2[84]: - x[84] + r[84] <= 0
 mccormick2[85]: - x[85] + r[85] <= 0
 mccormick2[86]: - x[86] + r[86] <= 0
 mccormick2[87]: - x[87] + r[87] <= 0
 mccormick2[88]: - x[88] + r[88] <= 0
 mccormick2[89]: - x[89] + r[89] <= 0
 mccormick3[0]: x[0] + u[0] - r[0] <= 1
 mccormick3[1]: x[1] + u[1] - r[1] <= 1
 mccormick3[2]: x[2] + u[2] - r[2] <= 1
 mccormick3[3]: x[3] + u[3] - r[3] <= 1
 mccormick3[4]: x[4] + u[4] - r[4] <= 1
 mccormick3[5]: x[5] + u[5] - r[5] <= 1
 mccormick3[6]: x[6] + u[6] - r[6] <= 1
 mccormick3[7]: x[7] + u[7] - r[7] <= 1
 mccormick3[8]: x[8] + u[8] - r[8] <= 1
 mccormick3[9]: x[9] + u[9] - r[9] <= 1
 mccormick3[10]: x[10] + u[10] - r[10] <= 1
 mccormick3[11]: x[11] + u[11] - r[11] <= 1
 mccormick3[12]: x[12] + u[12] - r[12] <= 1
 mccormick3[13]: x[13] + u[13] - r[13] <= 1
 mccormick3[14]: x[14] + u[14] - r[14] <= 1
 mccormick3[15]: x[15] + u[15] - r[15] <= 1
 mccormick3[16]: x[16] + u[16] - r[16] <= 1
 mccormick3[17]: x[17] + u[17] - r[17] <= 1
 mccormick3[18]: x[18] + u[18] - r[18] <= 1
 mccormick3[19]: x[19] + u[19] - r[19] <= 1
 mccormick3[20]: x[20] + u[20] - r[20] <= 1
 mccormick3[21]: x[21] + u[21] - r[21] <= 1
 mccormick3[22]: x[22] + u[22] - r[22] <= 1
 mccormick3[23]: x[23] + u[23] - r[23] <= 1
 mccormick3[24]: x[24] + u[24] - r[24] <= 1
 mccormick3[25]: x[25] + u[25] - r[25] <= 1
 mccormick3[26]: x[26] + u[26] - r[26] <= 1
 mccormick3[27]: x[27] + u[27] - r[27] <= 1
 mccormick3[28]: x[28] + u[28] - r[28] <= 1
 mccormick3[29]: x[29] + u[29] - r[29] <= 1
 mccormick3[30]: x[30] + u[30] - r[30] <= 1
 mccormick3[31]: x[31] + u[31] - r[31] <= 1
 mccormick3[32]: x[32] + u[32] - r[32] <= 1
 mccormick3[33]: x[33] + u[33] - r[33] <= 1
 mccormick3[34]: x[34] + u[34] - r[34] <= 1
 mccormick3[35]: x[35] + u[35] - r[35] <= 1
 mccormick3[36]: x[36] + u[36] - r[36] <= 1
 mccormick3[37]: x[37] + u[37] - r[37] <= 1
 mccormick3[38]: x[38] + u[38] - r[38] <= 1
 mccormick3[39]: x[39] + u[39] - r[39] <= 1
 mccormick3[40]: x[40] + u[40] - r[40] <= 1
 mccormick3[41]: x[41] + u[41] - r[41] <= 1
 mccormick3[42]: x[42] + u[42] - r[42] <= 1
 mccormick3[43]: x[43] + u[43] - r[43] <= 1
 mccormick3[44]: x[44] + u[44] - r[44] <= 1
 mccormick3[45]: x[45] + u[45] - r[45] <= 1
 mccormick3[46]: x[46] + u[46] - r[46] <= 1
 mccormick3[47]: x[47] + u[47] - r[47] <= 1
 mccormick3[48]: x[48] + u[48] - r[48] <= 1
 mccormick3[49]: x[49] + u[49] - r[49] <= 1
 mccormick3[50]: x[50] + u[50] - r[50] <= 1
 mccormick3[51]: x[51] + u[51] - r[51] <= 1
 mccormick3[52]: x[52] + u[52] - r[52] <= 1
 mccormick3[53]: x[53] + u[53] - r[53] <= 1
 mccormick3[54]: x[54] + u[54] - r[54] <= 1
 mccormick3[55]: x[55] + u[55] - r[55] <= 1
 mccormick3[56]: x[56] + u[56] - r[56] <= 1
 mccormick3[57]: x[57] + u[57] - r[57] <= 1
 mccormick3[58]: x[58] + u[58] - r[58] <= 1
 mccormick3[59]: x[59] + u[59] - r[59] <= 1
 mccormick3[60]: x[60] + u[60] - r[60] <= 1
 mccormick3[61]: x[61] + u[61] - r[61] <= 1
 mccormick3[62]: x[62] + u[62] - r[62] <= 1
 mccormick3[63]: x[63] + u[63] - r[63] <= 1
 mccormick3[64]: x[64] + u[64] - r[64] <= 1
 mccormick3[65]: x[65] + u[65] - r[65] <= 1
 mccormick3[66]: x[66] + u[66] - r[66] <= 1
 mccormick3[67]: x[67] + u[67] - r[67] <= 1
 mccormick3[68]: x[68] + u[68] - r[68] <= 1
 mccormick3[69]: x[69] + u[69] - r[69] <= 1
 mccormick3[70]: x[70] + u[70] - r[70] <= 1
 mccormick3[71]: x[71] + u[71] - r[71] <= 1
 mccormick3[72]: x[72] + u[72] - r[72] <= 1
 mccormick3[73]: x[73] + u[73] - r[73] <= 1
 mccormick3[74]: x[74] + u[74] - r[74] <= 1
 mccormick3[75]: x[75] + u[75] - r[75] <= 1
 mccormick3[76]: x[76] + u[76] - r[76] <= 1
 mccormick3[77]: x[77] + u[77] - r[77] <= 1
 mccormick3[78]: x[78] + u[78] - r[78] <= 1
 mccormick3[79]: x[79] + u[79] - r[79] <= 1
 mccormick3[80]: x[80] + u[80] - r[80] <= 1
 mccormick3[81]: x[81] + u[81] - r[81] <= 1
 mccormick3[82]: x[82] + u[82] - r[82] <= 1
 mccormick3[83]: x[83] + u[83] - r[83] <= 1
 mccormick3[84]: x[84] + u[84] - r[84] <= 1
 mccormick3[85]: x[85] + u[85] - r[85] <= 1
 mccormick3[86]: x[86] + u[86] - r[86] <= 1
 mccormick3[87]: x[87] + u[87] - r[87] <= 1
 mccormick3[88]: x[88] + u[88] - r[88] <= 1
 mccormick3[89]: x[89] + u[89] - r[89] <= 1
Bounds
Binaries
 x[0] x[1] x[2] x[3] x[4] x[5] x[6] x[7] x[8] x[9] x[10] x[11] x[12] x[13]
 x[14] x[15] x[16] x[17] x[18] x[19] x[20] x[21] x[22] x[23] x[24] x[25]
 x[26] x[27] x[28] x[29] x[30] x[31] x[32] x[33] x[34] x[35] x[36] x[37]
 x[38] x[39] x[40] x[41] x[42] x[43] x[44] x[45] x[46] x[47] x[48] x[49]
 x[50] x[51] x[52] x[53] x[54] x[55] x[56] x[57] x[58] x[59] x[60] x[61]
 x[62] x[63] x[64] x[65] x[66] x[67] x[68] x[69] x[70] x[71] x[72] x[73]
 x[74] x[75] x[76] x[77] x[78] x[79] x[80] x[81] x[82] x[83] x[84] x[85]
 x[86] x[87] x[88] x[89] u[0] u[1] u[2] u[3] u[4] u[5] u[6] u[7] u[8] u[9]
 u[10] u[11] u[12] u[13] u[14] u[15] u[16] u[17] u[18] u[19] u[20] u[21]
 u[22] u[23] u[24] u[25] u[26] u[27] u[28] u[29] u[30] u[31] u[32] u[33]
 u[34] u[35] u[36] u[37] u[38] u[39] u[40] u[41] u[42] u[43] u[44] u[45]
 u[46] u[47] u[48] u[49] u[50] u[51] u[52] u[53] u[54] u[55] u[56] u[57]
 u[58] u[59] u[60] u[61] u[62] u[63] u[64] u[65] u[66] u[67] u[68] u[69]
 u[70] u[71] u[72] u[73] u[74] u[75] u[76] u[77] u[78] u[79] u[80] u[81]
 u[82] u[83] u[84] u[85] u[86] u[87] u[88] u[89] r[0] r[1] r[2] r[3] r[4]
 r[5] r[6] r[7] r[8] r[9] r[10] r[11] r[12] r[13] r[14] r[15] r[16] r[17]
 r[18] r[19] r[20] r[21] r[22] r[23] r[24] r[25] r[26] r[27] r[28] r[29]
 r[30] r[31] r[32] r[33] r[34] r[35] r[36] r[37] r[38] r[39] r[40] r[41]
 r[42] r[43] r[44] r[45] r[46] r[47] r[48] r[49] r[50] r[51] r[52] r[53]
 r[54] r[55] r[56] r[57] r[58] r[59] r[60] r[61] r[62] r[63] r[64] r[65]
 r[66] r[67] r[68] r[69] r[70] r[71] r[72] r[73] r[74] r[75] r[76] r[77]
 r[78] r[79] r[80] r[81] r[82] r[83] r[84] r[85] r[86] r[87] r[88] r[89]
End
