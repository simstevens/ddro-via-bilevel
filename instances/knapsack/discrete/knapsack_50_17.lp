\ Model knapsack_50_17
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xe2d4f45d0ac270ee
Minimize
  - 47 x[0] - 20 x[1] - 97 x[2] - 85 x[3] - 67 x[4] - 62 x[5] - 7 x[6]
   - 49 x[7] - 48 x[8] - 56 x[9] - 12 x[10] - 68 x[11] - 100 x[12]
   - 71 x[13] - 88 x[14] - 57 x[15] - 19 x[16] - 39 x[17] - 48 x[18]
   - 23 x[19] - 59 x[20] - 8 x[21] - 33 x[22] - 5 x[23] - 38 x[24]
   - 64 x[25] - 89 x[26] - 65 x[27] - 23 x[28] - 2 x[29] - 98 x[30]
   - 85 x[31] - 37 x[32] - 68 x[33] - x[34] - 10 x[35] - 78 x[36]
   - 16 x[37] - 16 x[38] - 81 x[39] - 69 x[40] - 51 x[41] - 87 x[42]
   - 8 x[43] - 56 x[44] - 100 x[45] - 18 x[46] - 98 x[47] - 14 x[48]
   - 27 x[49]
Subject To
 primal_upper: 73 x[0] + 69 x[1] + 27 x[2] + 4 x[3] + 85 x[4] + 59 x[5]
   + 50 x[6] + 65 x[7] + 62 x[8] + 11 x[9] + 81 x[10] + 88 x[11] + 81 x[12]
   + 33 x[13] + 34 x[14] + 46 x[15] + 34 x[16] + 5 x[17] + 26 x[18]
   + 3 x[19] + 30 x[20] + 29 x[21] + 5 x[22] + 60 x[23] + 54 x[24]
   + 29 x[25] + 19 x[26] + 45 x[27] + 91 x[28] + 44 x[29] + 75 x[30]
   + 17 x[31] + 37 x[32] + 90 x[33] + 61 x[34] + 46 x[35] + 13 x[36]
   + 50 x[37] + 45 x[38] + 44 x[39] + 16 x[40] + 7 x[41] + 11 x[42]
   + 51 x[43] + 84 x[44] + 12 x[45] + 15 x[46] + 59 x[47] + 32 x[48]
   + 45 x[49] + 7.3 r[0] + 6.9 r[1] + 2.7 r[2] + 0.4 r[3] + 8.5 r[4]
   + 5.9 r[5] + 5 r[6] + 6.5 r[7] + 6.2 r[8] + 1.1 r[9] + 8.1 r[10]
   + 8.8 r[11] + 8.1 r[12] + 3.3 r[13] + 3.4 r[14] + 4.6 r[15] + 3.4 r[16]
   + 0.5 r[17] + 2.6 r[18] + 0.3 r[19] + 3 r[20] + 2.9 r[21] + 0.5 r[22]
   + 6 r[23] + 5.4 r[24] + 2.9 r[25] + 1.9 r[26] + 4.5 r[27] + 9.1 r[28]
   + 4.4 r[29] + 7.5 r[30] + 1.7 r[31] + 3.7 r[32] + 9 r[33] + 6.1 r[34]
   + 4.6 r[35] + 1.3 r[36] + 5 r[37] + 4.5 r[38] + 4.4 r[39] + 1.6 r[40]
   + 0.7 r[41] + 1.1 r[42] + 5.1 r[43] + 8.4 r[44] + 1.2 r[45] + 1.5 r[46]
   + 5.9 r[47] + 3.2 r[48] + 4.5 r[49] <= 204
 primal_lower: 2.984947380597787 x[0] + 1.635111721614623 x[1]
   + 2.485787094932948 x[2] + 2.01714822845791 x[3]
   + 0.3523387977156024 x[4] + 2.928160762402036 x[5]
   + 1.332628460571647 x[6] + 0.7656888462365367 x[7]
   + 2.135020756983475 x[8] + 3.679082410606695 x[9]
   + 3.308536581238871 x[10] + 2.09472133998617 x[11]
   + 0.3963829659153754 x[12] + 2.849310275789394 x[13]
   + 3.948976607921508 x[14] + 1.567882878100624 x[15]
   + 0.2198961464315069 x[16] + 3.424867711095223 x[17]
   + 0.8917632458559579 x[18] + 2.561887797456349 x[19]
   + 3.847862916635402 x[20] + 3.002961905366579 x[21]
   + 1.426771966755818 x[22] + 3.851832243306626 x[23]
   + 3.871485124209392 x[24] + 3.238948103425897 x[25]
   + 3.897095894852725 x[26] + 1.324630918596276 x[27]
   + 2.1065382187463 x[28] + 1.912657631122557 x[29]
   + 2.808760801284278 x[30] + 0.3049382855603073 x[31]
   + 1.914561608157248 x[32] + 1.478121541405698 x[33]
   + 2.152869058439054 x[34] + 1.748508271884587 x[35]
   + 0.3882791517639536 x[36] + 0.0134036483746696 x[37]
   + 1.021861042192505 x[38] + 2.079207502226259 x[39]
   + 2.300270853025579 x[40] + 2.099784538214076 x[41]
   + 0.2060355050386899 x[42] + 3.696169302982554 x[43]
   + 0.9881685583220422 x[44] + 0.2400925301808094 x[45]
   + 2.108708036964023 x[46] + 4.170096895612102 x[47]
   + 1.717910405060122 x[48] + 3.834851542713987 x[49] + 13 u[0] + 46 u[1]
   + 96 u[2] + 85 u[3] + 18 u[4] + 11 u[5] + 35 u[6] + 77 u[7] + 39 u[8]
   + 8 u[9] + 17 u[10] + 29 u[11] + 90 u[12] + 26 u[13] + 42 u[14]
   + 26 u[15] + 91 u[16] + 42 u[17] + 23 u[18] + 24 u[19] + 99 u[20]
   + 13 u[21] + 74 u[22] + 8 u[23] + 38 u[24] + 58 u[25] + 40 u[26]
   + 89 u[27] + 91 u[28] + 69 u[29] + 27 u[30] + 69 u[31] + u[32]
   + 19 u[33] + 54 u[34] + 31 u[35] + 34 u[36] + 46 u[37] + 14 u[38]
   + 72 u[39] + 73 u[40] + 43 u[41] + 68 u[42] + 15 u[43] + u[44]
   + 12 u[45] + 39 u[46] + 95 u[47] + 17 u[48] + 74 u[49] <= 24473
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
Bounds
Binaries
 x[0] x[1] x[2] x[3] x[4] x[5] x[6] x[7] x[8] x[9] x[10] x[11] x[12] x[13]
 x[14] x[15] x[16] x[17] x[18] x[19] x[20] x[21] x[22] x[23] x[24] x[25]
 x[26] x[27] x[28] x[29] x[30] x[31] x[32] x[33] x[34] x[35] x[36] x[37]
 x[38] x[39] x[40] x[41] x[42] x[43] x[44] x[45] x[46] x[47] x[48] x[49]
 u[0] u[1] u[2] u[3] u[4] u[5] u[6] u[7] u[8] u[9] u[10] u[11] u[12] u[13]
 u[14] u[15] u[16] u[17] u[18] u[19] u[20] u[21] u[22] u[23] u[24] u[25]
 u[26] u[27] u[28] u[29] u[30] u[31] u[32] u[33] u[34] u[35] u[36] u[37]
 u[38] u[39] u[40] u[41] u[42] u[43] u[44] u[45] u[46] u[47] u[48] u[49]
 r[0] r[1] r[2] r[3] r[4] r[5] r[6] r[7] r[8] r[9] r[10] r[11] r[12] r[13]
 r[14] r[15] r[16] r[17] r[18] r[19] r[20] r[21] r[22] r[23] r[24] r[25]
 r[26] r[27] r[28] r[29] r[30] r[31] r[32] r[33] r[34] r[35] r[36] r[37]
 r[38] r[39] r[40] r[41] r[42] r[43] r[44] r[45] r[46] r[47] r[48] r[49]
End
