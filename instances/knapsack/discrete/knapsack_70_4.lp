\ Model knapsack_70_4
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9699bb600e1f4c54
Minimize
  - 47 x[0] - 88 x[1] - 9 x[2] - 93 x[3] - 35 x[4] - 26 x[5] - 51 x[6]
   - 33 x[7] - 72 x[8] - 32 x[9] - 72 x[10] - 40 x[11] - 80 x[12]
   - 99 x[13] - 76 x[14] - 45 x[15] - 95 x[16] - 87 x[17] - 88 x[18]
   - 11 x[19] - 23 x[20] - 96 x[21] - x[22] - 25 x[23] - 50 x[24]
   - 48 x[25] - 25 x[26] - 77 x[27] - 91 x[28] - 74 x[29] - 6 x[30] - x[31]
   - x[32] - 40 x[33] - 21 x[34] - 58 x[35] - 54 x[36] - 88 x[37]
   - 80 x[38] - 61 x[39] - 49 x[40] - 51 x[41] - 19 x[42] - 12 x[43]
   - 72 x[44] - 48 x[45] - 86 x[46] - 18 x[47] - 78 x[48] - 31 x[49]
   - 92 x[50] - 40 x[51] - 36 x[52] - 10 x[53] - 13 x[54] - 67 x[55]
   - 48 x[56] - 85 x[57] - 33 x[58] - 56 x[59] - 73 x[60] - 87 x[61]
   - 91 x[62] - 47 x[63] - 12 x[64] - 30 x[65] - 42 x[66] - 87 x[67]
   - 22 x[68] - 43 x[69]
Subject To
 primal_upper: 93 x[0] + x[1] + 87 x[2] + 4 x[3] + 65 x[4] + 91 x[5]
   + 26 x[6] + 73 x[7] + 54 x[8] + 47 x[9] + 21 x[10] + 44 x[11] + 37 x[12]
   + 13 x[13] + 22 x[14] + 14 x[15] + 98 x[16] + 57 x[17] + 62 x[18]
   + 75 x[19] + 50 x[20] + 13 x[21] + 57 x[22] + 92 x[23] + 58 x[24]
   + 97 x[25] + 59 x[26] + 45 x[27] + 63 x[28] + 28 x[29] + 27 x[30]
   + 57 x[31] + 89 x[32] + 82 x[33] + 41 x[34] + 10 x[35] + 21 x[36]
   + 70 x[37] + x[38] + 44 x[39] + 80 x[40] + 83 x[41] + 75 x[42]
   + 91 x[43] + 80 x[44] + 12 x[45] + 87 x[46] + 51 x[47] + 8 x[48]
   + 69 x[49] + 72 x[50] + 53 x[51] + 74 x[52] + 53 x[53] + 30 x[54]
   + 45 x[55] + 86 x[56] + 12 x[57] + 37 x[58] + 71 x[59] + 26 x[60]
   + 12 x[61] + 61 x[62] + 64 x[63] + 33 x[64] + 13 x[65] + 22 x[66]
   + 84 x[67] + 21 x[68] + 51 x[69] + 9.3 r[0] + 0.1 r[1] + 8.7 r[2]
   + 0.4 r[3] + 6.5 r[4] + 9.1 r[5] + 2.6 r[6] + 7.3 r[7] + 5.4 r[8]
   + 4.7 r[9] + 2.1 r[10] + 4.4 r[11] + 3.7 r[12] + 1.3 r[13] + 2.2 r[14]
   + 1.4 r[15] + 9.8 r[16] + 5.7 r[17] + 6.2 r[18] + 7.5 r[19] + 5 r[20]
   + 1.3 r[21] + 5.7 r[22] + 9.2 r[23] + 5.8 r[24] + 9.7 r[25] + 5.9 r[26]
   + 4.5 r[27] + 6.3 r[28] + 2.8 r[29] + 2.7 r[30] + 5.7 r[31] + 8.9 r[32]
   + 8.2 r[33] + 4.1 r[34] + r[35] + 2.1 r[36] + 7 r[37] + 0.1 r[38]
   + 4.4 r[39] + 8 r[40] + 8.3 r[41] + 7.5 r[42] + 9.1 r[43] + 8 r[44]
   + 1.2 r[45] + 8.7 r[46] + 5.1 r[47] + 0.8 r[48] + 6.9 r[49] + 7.2 r[50]
   + 5.3 r[51] + 7.4 r[52] + 5.3 r[53] + 3 r[54] + 4.5 r[55] + 8.6 r[56]
   + 1.2 r[57] + 3.7 r[58] + 7.1 r[59] + 2.6 r[60] + 1.2 r[61] + 6.1 r[62]
   + 6.4 r[63] + 3.3 r[64] + 1.3 r[65] + 2.2 r[66] + 8.4 r[67] + 2.1 r[68]
   + 5.1 r[69] <= 337
 primal_lower: 1.312085124150732 x[0] + 1.649145615726863 x[1]
   + 0.0310228138000384 x[2] + 0.6462204842703841 x[3]
   + 0.2550970966827072 x[4] + 3.918332824268974 x[5]
   + 4.541990480221438 x[6] + 1.207679331838619 x[7]
   + 2.967192628295369 x[8] + 2.652502730383327 x[9]
   + 3.39347810578087 x[10] + 2.20000010538384 x[11]
   + 3.739953515544551 x[12] + 3.745193349236724 x[13]
   + 2.201023349402979 x[14] + 4.39974624723429 x[15]
   + 0.9933361211560052 x[16] + 3.935107363220448 x[17]
   + 0.8015335710078393 x[18] + 1.402672554214681 x[19]
   + 0.3126194459775206 x[20] + 3.503090691431131 x[21]
   + 1.036798992520315 x[22] + 0.1750812489839269 x[23]
   + 3.082575063716793 x[24] + 3.02068116256109 x[25]
   + 2.726143135292983 x[26] + 2.515879328143948 x[27]
   + 2.115291389289072 x[28] + 2.371565658059032 x[29]
   + 0.0176297683783383 x[30] + 0.1738952331755202 x[31]
   + 4.154439292386709 x[32] + 0.2625799015443414 x[33]
   + 1.347139973079792 x[34] + 3.562781406939413 x[35]
   + 3.826425967460521 x[36] + 1.737655657456556 x[37]
   + 3.540227562261879 x[38] + 0.0583236365227728 x[39]
   + 3.290640841592665 x[40] + 1.461578668261119 x[41]
   + 3.71384871506237 x[42] + 0.306732532916252 x[43]
   + 2.8610270926444 x[44] + 0.1670400515078876 x[45]
   + 3.344836582904515 x[46] + 3.358622485883255 x[47]
   + 4.081214864262453 x[48] + 2.01678507671124 x[49]
   + 3.311886735948501 x[50] + 3.096994994950723 x[51]
   + 1.41468424421916 x[52] + 1.002099988177375 x[53]
   + 1.2157879021152 x[54] + 0.7231178939237256 x[55]
   + 4.14383759395434 x[56] + 3.168849484534965 x[57]
   + 0.6231754592006548 x[58] + 0.7539571297292139 x[59]
   + 3.089652064394619 x[60] + 4.344641586543172 x[61]
   + 4.037991053396136 x[62] + 0.9913810966004287 x[63]
   + 3.44753446255197 x[64] + 1.156419621744212 x[65]
   + 0.3303728631503867 x[66] + 4.414173964861025 x[67]
   + 0.3733030529992226 x[68] + 3.963633701489193 x[69] + 20 u[0] + 72 u[1]
   + 78 u[2] + 95 u[3] + 48 u[4] + 10 u[5] + 45 u[6] + 80 u[7] + 5 u[8]
   + 38 u[9] + 48 u[10] + 43 u[11] + 48 u[12] + 84 u[13] + 37 u[14]
   + 65 u[15] + 61 u[16] + 68 u[17] + 97 u[18] + 98 u[19] + 25 u[20]
   + 72 u[21] + 72 u[22] + 83 u[23] + 9 u[24] + 32 u[25] + 66 u[26]
   + 72 u[27] + 2 u[28] + 7 u[29] + 22 u[30] + 96 u[31] + 60 u[32]
   + 73 u[33] + 16 u[34] + 13 u[35] + 56 u[36] + 9 u[37] + 68 u[38]
   + 39 u[39] + 43 u[40] + 38 u[41] + 18 u[42] + 78 u[43] + 79 u[44]
   + 63 u[45] + 70 u[46] + 2 u[47] + 43 u[48] + 4 u[49] + 35 u[50]
   + 64 u[51] + 17 u[52] + 24 u[53] + 9 u[54] + 40 u[55] + 57 u[56]
   + 11 u[57] + 12 u[58] + 58 u[59] + 89 u[60] + 63 u[61] + 28 u[62]
   + 59 u[63] + 80 u[64] + 56 u[65] + 53 u[66] + 39 u[67] + 92 u[68]
   + 30 u[69] <= 30522
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
