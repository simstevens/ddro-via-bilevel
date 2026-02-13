\ Model knapsack_50_7
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x76745c3152afbb1c
Minimize
  - 0.08 x[0] - 0.13 x[1] - 0.02 x[2] - 0.66 x[3] - 0.8 x[4] - 0.83 x[5]
   - 0.24 x[6] - 0.3 x[7] - 0.93 x[8] - 0.21 x[9] - 0.69 x[10] - 0.45 x[11]
   - 0.69 x[12] - 0.4 x[13] - 0.69 x[14] - 0.7 x[15] - 0.4 x[16]
   - 0.08 x[17] - 0.13 x[18] - 0.72 x[19] - 0.68 x[20] - 0.77 x[21]
   - 0.7 x[22] - 0.02 x[23] - 0.95 x[24] - 0.73 x[25] - 0.82 x[26]
   - 0.94 x[27] - 0.92 x[28] - 0.51 x[29] - 0.15 x[30] - 0.82 x[31]
   - 0.74 x[32] - 0.05 x[33] - 0.06 x[34] - 0.07 x[35] - 0.75 x[36]
   - 0.41 x[37] - 0.85 x[38] - 0.62 x[39] - 0.1 x[40] - 0.76 x[41]
   - 0.16 x[42] - 0.41 x[43] - 0.45 x[44] - 0.77 x[45] - 0.47 x[46]
   - 0.39 x[47] - 0.11 x[48] - 0.88 x[49] + 0.01 y[0] + 0.01 y[1]
   + 0.07 y[3] + 0.14 y[4] + 0.16 y[5] + 0.05 y[6] + 0.04 y[7] + 0.12 y[8]
   + 0.02 y[9] + 0.12 y[10] + 0.05 y[11] + 0.13 y[12] + 0.05 y[13]
   + 0.1 y[14] + 0.09 y[15] + 0.04 y[16] + 0.01 y[17] + 0.03 y[18]
   + 0.12 y[19] + 0.1 y[20] + 0.09 y[21] + 0.08 y[22] + 0.14 y[24]
   + 0.11 y[25] + 0.12 y[26] + 0.13 y[27] + 0.13 y[28] + 0.1 y[29]
   + 0.02 y[30] + 0.08 y[31] + 0.1 y[32] + 0.01 y[33] + 0.01 y[34]
   + 0.01 y[35] + 0.08 y[36] + 0.07 y[37] + 0.12 y[38] + 0.08 y[39]
   + 0.01 y[40] + 0.08 y[41] + 0.03 y[42] + 0.07 y[43] + 0.05 y[44]
   + 0.08 y[45] + 0.09 y[46] + 0.05 y[47] + 0.01 y[48] + 0.15 y[49]
Subject To
 primal_upper: 34 x[0] + 46 x[1] + 100 x[2] + 65 x[3] + 62 x[4] + 28 x[5]
   + 23 x[6] + 74 x[7] + 27 x[8] + 28 x[9] + 42 x[10] + 57 x[11] + 34 x[12]
   + 30 x[13] + 39 x[14] + 7 x[15] + 31 x[16] + 26 x[17] + 67 x[18]
   + 32 x[19] + 23 x[20] + 6 x[21] + 74 x[22] + 29 x[23] + 71 x[24]
   + 78 x[25] + 32 x[26] + 54 x[27] + 8 x[28] + 9 x[29] + 80 x[30]
   + 54 x[31] + 62 x[32] + 83 x[33] + 42 x[34] + 19 x[35] + 78 x[36]
   + 31 x[37] + 82 x[38] + 77 x[39] + 69 x[40] + 28 x[41] + 48 x[42]
   + 80 x[43] + 57 x[44] + 57 x[45] + 96 x[46] + 60 x[47] + 69 x[48]
   + 30 x[49] + 3.4 r[0] + 4.6 r[1] + 10 r[2] + 6.5 r[3] + 6.2 r[4]
   + 2.8 r[5] + 2.3 r[6] + 7.4 r[7] + 2.7 r[8] + 2.8 r[9] + 4.2 r[10]
   + 5.7 r[11] + 3.4 r[12] + 3 r[13] + 3.9 r[14] + 0.7 r[15] + 3.1 r[16]
   + 2.6 r[17] + 6.7 r[18] + 3.2 r[19] + 2.3 r[20] + 0.6 r[21] + 7.4 r[22]
   + 2.9 r[23] + 7.1 r[24] + 7.8 r[25] + 3.2 r[26] + 5.4 r[27] + 0.8 r[28]
   + 0.9 r[29] + 8 r[30] + 5.4 r[31] + 6.2 r[32] + 8.3 r[33] + 4.2 r[34]
   + 1.9 r[35] + 7.8 r[36] + 3.1 r[37] + 8.2 r[38] + 7.7 r[39] + 6.9 r[40]
   + 2.8 r[41] + 4.8 r[42] + 8 r[43] + 5.7 r[44] + 5.7 r[45] + 9.6 r[46]
   + 6 r[47] + 6.9 r[48] + 3 r[49] <= 221
 primal_lower_interdiction[0]: y[0] + u[0] <= 1
 primal_lower_interdiction[1]: y[1] + u[1] <= 1
 primal_lower_interdiction[2]: y[2] + u[2] <= 1
 primal_lower_interdiction[3]: y[3] + u[3] <= 1
 primal_lower_interdiction[4]: y[4] + u[4] <= 1
 primal_lower_interdiction[5]: y[5] + u[5] <= 1
 primal_lower_interdiction[6]: y[6] + u[6] <= 1
 primal_lower_interdiction[7]: y[7] + u[7] <= 1
 primal_lower_interdiction[8]: y[8] + u[8] <= 1
 primal_lower_interdiction[9]: y[9] + u[9] <= 1
 primal_lower_interdiction[10]: y[10] + u[10] <= 1
 primal_lower_interdiction[11]: y[11] + u[11] <= 1
 primal_lower_interdiction[12]: y[12] + u[12] <= 1
 primal_lower_interdiction[13]: y[13] + u[13] <= 1
 primal_lower_interdiction[14]: y[14] + u[14] <= 1
 primal_lower_interdiction[15]: y[15] + u[15] <= 1
 primal_lower_interdiction[16]: y[16] + u[16] <= 1
 primal_lower_interdiction[17]: y[17] + u[17] <= 1
 primal_lower_interdiction[18]: y[18] + u[18] <= 1
 primal_lower_interdiction[19]: y[19] + u[19] <= 1
 primal_lower_interdiction[20]: y[20] + u[20] <= 1
 primal_lower_interdiction[21]: y[21] + u[21] <= 1
 primal_lower_interdiction[22]: y[22] + u[22] <= 1
 primal_lower_interdiction[23]: y[23] + u[23] <= 1
 primal_lower_interdiction[24]: y[24] + u[24] <= 1
 primal_lower_interdiction[25]: y[25] + u[25] <= 1
 primal_lower_interdiction[26]: y[26] + u[26] <= 1
 primal_lower_interdiction[27]: y[27] + u[27] <= 1
 primal_lower_interdiction[28]: y[28] + u[28] <= 1
 primal_lower_interdiction[29]: y[29] + u[29] <= 1
 primal_lower_interdiction[30]: y[30] + u[30] <= 1
 primal_lower_interdiction[31]: y[31] + u[31] <= 1
 primal_lower_interdiction[32]: y[32] + u[32] <= 1
 primal_lower_interdiction[33]: y[33] + u[33] <= 1
 primal_lower_interdiction[34]: y[34] + u[34] <= 1
 primal_lower_interdiction[35]: y[35] + u[35] <= 1
 primal_lower_interdiction[36]: y[36] + u[36] <= 1
 primal_lower_interdiction[37]: y[37] + u[37] <= 1
 primal_lower_interdiction[38]: y[38] + u[38] <= 1
 primal_lower_interdiction[39]: y[39] + u[39] <= 1
 primal_lower_interdiction[40]: y[40] + u[40] <= 1
 primal_lower_interdiction[41]: y[41] + u[41] <= 1
 primal_lower_interdiction[42]: y[42] + u[42] <= 1
 primal_lower_interdiction[43]: y[43] + u[43] <= 1
 primal_lower_interdiction[44]: y[44] + u[44] <= 1
 primal_lower_interdiction[45]: y[45] + u[45] <= 1
 primal_lower_interdiction[46]: y[46] + u[46] <= 1
 primal_lower_interdiction[47]: y[47] + u[47] <= 1
 primal_lower_interdiction[48]: y[48] + u[48] <= 1
 primal_lower_interdiction[49]: y[49] + u[49] <= 1
 primal_lower_budget: u[0] + u[1] + u[2] + u[3] + u[4] + u[5] + u[6] + u[7]
   + u[8] + u[9] + u[10] + u[11] + u[12] + u[13] + u[14] + u[15] + u[16]
   + u[17] + u[18] + u[19] + u[20] + u[21] + u[22] + u[23] + u[24] + u[25]
   + u[26] + u[27] + u[28] + u[29] + u[30] + u[31] + u[32] + u[33] + u[34]
   + u[35] + u[36] + u[37] + u[38] + u[39] + u[40] + u[41] + u[42] + u[43]
   + u[44] + u[45] + u[46] + u[47] + u[48] + u[49] <= 1
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
 y[0] y[1] y[2] y[3] y[4] y[5] y[6] y[7] y[8] y[9] y[10] y[11] y[12] y[13]
 y[14] y[15] y[16] y[17] y[18] y[19] y[20] y[21] y[22] y[23] y[24] y[25]
 y[26] y[27] y[28] y[29] y[30] y[31] y[32] y[33] y[34] y[35] y[36] y[37]
 y[38] y[39] y[40] y[41] y[42] y[43] y[44] y[45] y[46] y[47] y[48] y[49]
 u[0] u[1] u[2] u[3] u[4] u[5] u[6] u[7] u[8] u[9] u[10] u[11] u[12] u[13]
 u[14] u[15] u[16] u[17] u[18] u[19] u[20] u[21] u[22] u[23] u[24] u[25]
 u[26] u[27] u[28] u[29] u[30] u[31] u[32] u[33] u[34] u[35] u[36] u[37]
 u[38] u[39] u[40] u[41] u[42] u[43] u[44] u[45] u[46] u[47] u[48] u[49]
 r[0] r[1] r[2] r[3] r[4] r[5] r[6] r[7] r[8] r[9] r[10] r[11] r[12] r[13]
 r[14] r[15] r[16] r[17] r[18] r[19] r[20] r[21] r[22] r[23] r[24] r[25]
 r[26] r[27] r[28] r[29] r[30] r[31] r[32] r[33] r[34] r[35] r[36] r[37]
 r[38] r[39] r[40] r[41] r[42] r[43] r[44] r[45] r[46] r[47] r[48] r[49]
End
