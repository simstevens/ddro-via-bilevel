\ Model knapsack_70_5
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9699bb600e1f4c54
Minimize
  - 10 x[0] - 79 x[1] - 88 x[2] - 32 x[3] - 90 x[4] - 17 x[5] - 62 x[6]
   - 64 x[7] - 75 x[8] - 51 x[9] - 51 x[10] - 7 x[11] - 51 x[12] - 70 x[13]
   - 91 x[14] - 88 x[15] - 78 x[16] - 30 x[17] - 19 x[18] - 18 x[19]
   - 86 x[20] - 87 x[21] - 56 x[22] - 28 x[23] - 69 x[24] - 51 x[25]
   - 56 x[26] - 32 x[27] - 22 x[28] - 89 x[29] - 81 x[30] - 44 x[31]
   - 92 x[32] - 7 x[33] - 12 x[34] - 17 x[35] - 33 x[36] - 87 x[37]
   - 15 x[38] - 92 x[39] - 36 x[40] - 10 x[41] - 34 x[42] - 35 x[43]
   - 83 x[44] - 55 x[45] - 41 x[46] - 53 x[47] - 57 x[48] - 34 x[49]
   - 75 x[50] - 11 x[51] - 51 x[52] - 97 x[53] - 68 x[54] - 70 x[55]
   - 11 x[56] - 68 x[57] - 4 x[58] - 3 x[59] - 4 x[60] - 74 x[61]
   - 30 x[62] - 78 x[63] - 31 x[64] - 53 x[65] - 85 x[66] - 38 x[67]
   - 45 x[68] - 58 x[69]
Subject To
 primal_upper: 92 x[0] + 56 x[1] + 34 x[2] + 55 x[3] + 68 x[4] + 86 x[5]
   + 77 x[6] + 52 x[7] + 65 x[8] + 6 x[9] + 60 x[10] + 35 x[11] + 28 x[12]
   + 24 x[13] + 21 x[14] + 49 x[15] + 9 x[16] + 72 x[17] + 49 x[18]
   + 14 x[19] + 73 x[20] + 76 x[21] + 12 x[22] + 71 x[23] + 89 x[24]
   + 32 x[25] + 14 x[26] + 92 x[27] + 46 x[28] + 31 x[29] + 18 x[30]
   + 76 x[31] + 60 x[32] + 97 x[33] + 60 x[34] + 13 x[35] + 92 x[36]
   + 33 x[37] + 32 x[38] + 83 x[39] + 59 x[40] + 66 x[41] + 10 x[42]
   + 70 x[43] + 79 x[44] + 59 x[45] + 98 x[46] + 78 x[47] + 27 x[48]
   + 40 x[49] + 31 x[50] + 96 x[51] + 53 x[52] + 92 x[53] + 45 x[54]
   + 52 x[55] + 45 x[56] + 31 x[57] + 64 x[58] + 34 x[59] + 17 x[60]
   + 15 x[61] + 48 x[62] + 67 x[63] + 92 x[64] + 100 x[65] + x[66]
   + 55 x[67] + 44 x[68] + 30 x[69] + 9.2 r[0] + 5.6 r[1] + 3.4 r[2]
   + 5.5 r[3] + 6.8 r[4] + 8.6 r[5] + 7.7 r[6] + 5.2 r[7] + 6.5 r[8]
   + 0.6 r[9] + 6 r[10] + 3.5 r[11] + 2.8 r[12] + 2.4 r[13] + 2.1 r[14]
   + 4.9 r[15] + 0.9 r[16] + 7.2 r[17] + 4.9 r[18] + 1.4 r[19] + 7.3 r[20]
   + 7.6 r[21] + 1.2 r[22] + 7.1 r[23] + 8.9 r[24] + 3.2 r[25] + 1.4 r[26]
   + 9.2 r[27] + 4.6 r[28] + 3.1 r[29] + 1.8 r[30] + 7.6 r[31] + 6 r[32]
   + 9.7 r[33] + 6 r[34] + 1.3 r[35] + 9.2 r[36] + 3.3 r[37] + 3.2 r[38]
   + 8.3 r[39] + 5.9 r[40] + 6.6 r[41] + r[42] + 7 r[43] + 7.9 r[44]
   + 5.9 r[45] + 9.8 r[46] + 7.8 r[47] + 2.7 r[48] + 4 r[49] + 3.1 r[50]
   + 9.6 r[51] + 5.3 r[52] + 9.2 r[53] + 4.5 r[54] + 5.2 r[55] + 4.5 r[56]
   + 3.1 r[57] + 6.4 r[58] + 3.4 r[59] + 1.7 r[60] + 1.5 r[61] + 4.8 r[62]
   + 6.7 r[63] + 9.2 r[64] + 10 r[65] + 0.1 r[66] + 5.5 r[67] + 4.4 r[68]
   + 3 r[69] <= 347
 primal_lower: 0.1214468006617682 x[0] + 2.258627289540602 x[1]
   + 1.828936747466694 x[2] + 0.2863644352759202 x[3]
   + 0.5917045390106165 x[4] + 0.7523784192714665 x[5]
   + 1.682966408297183 x[6] + 2.576344978577178 x[7]
   + 2.946693070828197 x[8] + 1.55515827342191 x[9]
   + 2.225261780106862 x[10] + 1.293730011754827 x[11]
   + 4.189329207752234 x[12] + 2.454621750755384 x[13]
   + 2.95810998500467 x[14] + 0.2651120004369206 x[15]
   + 0.2420656269679411 x[16] + 0.6852660823812796 x[17]
   + 4.46837293307833 x[18] + 0.9769926569307809 x[19]
   + 0.78593329106793 x[20] + 2.538896243933555 x[21]
   + 1.870257124479555 x[22] + 2.2099251710842 x[23]
   + 3.921289242933955 x[24] + 4.652685082237602 x[25]
   + 2.251354838460151 x[26] + 2.889649219834079 x[27]
   + 0.6173653797748563 x[28] + 2.34025338397556 x[29]
   + 0.3421963520940049 x[30] + 0.4787467657119542 x[31]
   + 4.201389297614881 x[32] + 2.312388142691746 x[33]
   + 2.525287553281768 x[34] + 4.276885825517746 x[35]
   + 0.2240318073371673 x[36] + 4.691992911169888 x[37]
   + 0.4153414131453869 x[38] + 2.212418129046331 x[39]
   + 1.608055723029227 x[40] + 3.437846126878928 x[41]
   + 1.11091726317064 x[42] + 0.3913733796046968 x[43]
   + 0.2157553314590251 x[44] + 4.641489333238309 x[45]
   + 3.786621640256784 x[46] + 0.1652485239792594 x[47]
   + 3.013114182750483 x[48] + 3.587208140107113 x[49]
   + 2.030900603156442 x[50] + 1.635317581426829 x[51]
   + 2.710644762672608 x[52] + 1.352067080707009 x[53]
   + 3.774476749415057 x[54] + 0.6720876425007177 x[55]
   + 2.75448158788341 x[56] + 3.103303337586957 x[57]
   + 2.176593850319883 x[58] + 3.505947287055806 x[59]
   + 3.15672165038599 x[60] + 0.7064139697322186 x[61]
   + 1.80436152962236 x[62] + 0.747481094387458 x[63]
   + 0.7596855226762278 x[64] + 2.159432769805556 x[65]
   + 2.928449281218848 x[66] + 1.723011395428931 x[67]
   + 1.604403717694983 x[68] + 1.167257565165335 x[69] + 88 u[0] + 57 u[1]
   + 23 u[2] + 44 u[3] + 5 u[4] + 98 u[5] + 78 u[6] + 72 u[7] + 18 u[8]
   + 99 u[9] + 96 u[10] + 60 u[11] + 37 u[12] + 25 u[13] + 37 u[14]
   + 9 u[15] + 26 u[16] + 29 u[17] + 66 u[18] + 83 u[19] + 2 u[20]
   + 68 u[21] + 33 u[22] + 47 u[23] + 53 u[24] + 85 u[25] + 71 u[26]
   + 24 u[27] + 38 u[28] + 8 u[29] + 42 u[30] + 64 u[31] + 100 u[32]
   + 90 u[33] + 73 u[34] + 70 u[35] + 53 u[36] + 81 u[37] + 25 u[38]
   + 3 u[39] + 68 u[40] + 6 u[41] + 7 u[42] + 62 u[43] + 52 u[44]
   + 59 u[45] + 90 u[46] + 70 u[47] + 40 u[48] + 89 u[49] + 23 u[50]
   + 17 u[51] + 26 u[52] + 85 u[53] + 85 u[54] + 68 u[55] + 14 u[56]
   + 35 u[57] + 53 u[58] + 7 u[59] + 17 u[60] + 19 u[61] + 88 u[62]
   + 99 u[63] + 40 u[64] + 33 u[65] + 17 u[66] + 63 u[67] + 93 u[68]
   + 2 u[69] <= 21223
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
Bounds
Binaries
 x[0] x[1] x[2] x[3] x[4] x[5] x[6] x[7] x[8] x[9] x[10] x[11] x[12] x[13]
 x[14] x[15] x[16] x[17] x[18] x[19] x[20] x[21] x[22] x[23] x[24] x[25]
 x[26] x[27] x[28] x[29] x[30] x[31] x[32] x[33] x[34] x[35] x[36] x[37]
 x[38] x[39] x[40] x[41] x[42] x[43] x[44] x[45] x[46] x[47] x[48] x[49]
 x[50] x[51] x[52] x[53] x[54] x[55] x[56] x[57] x[58] x[59] x[60] x[61]
 x[62] x[63] x[64] x[65] x[66] x[67] x[68] x[69] u[0] u[1] u[2] u[3] u[4]
 u[5] u[6] u[7] u[8] u[9] u[10] u[11] u[12] u[13] u[14] u[15] u[16] u[17]
 u[18] u[19] u[20] u[21] u[22] u[23] u[24] u[25] u[26] u[27] u[28] u[29]
 u[30] u[31] u[32] u[33] u[34] u[35] u[36] u[37] u[38] u[39] u[40] u[41]
 u[42] u[43] u[44] u[45] u[46] u[47] u[48] u[49] u[50] u[51] u[52] u[53]
 u[54] u[55] u[56] u[57] u[58] u[59] u[60] u[61] u[62] u[63] u[64] u[65]
 u[66] u[67] u[68] u[69] r[0] r[1] r[2] r[3] r[4] r[5] r[6] r[7] r[8] r[9]
 r[10] r[11] r[12] r[13] r[14] r[15] r[16] r[17] r[18] r[19] r[20] r[21]
 r[22] r[23] r[24] r[25] r[26] r[27] r[28] r[29] r[30] r[31] r[32] r[33]
 r[34] r[35] r[36] r[37] r[38] r[39] r[40] r[41] r[42] r[43] r[44] r[45]
 r[46] r[47] r[48] r[49] r[50] r[51] r[52] r[53] r[54] r[55] r[56] r[57]
 r[58] r[59] r[60] r[61] r[62] r[63] r[64] r[65] r[66] r[67] r[68] r[69]
End
