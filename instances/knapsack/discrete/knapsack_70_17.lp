\ Model knapsack_70_17
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x9699bb600e1f4c54
Minimize
  - 28 x[0] - 56 x[1] - 66 x[2] - 74 x[3] - 3 x[4] - 95 x[5] - 71 x[6]
   - 17 x[7] - 68 x[8] - 40 x[9] - 41 x[10] - 45 x[11] - 61 x[12]
   - 52 x[13] - 21 x[14] - 94 x[15] - 48 x[16] - 72 x[17] - 16 x[18]
   - 43 x[19] - 11 x[20] - 49 x[21] - 62 x[22] - 66 x[23] - 3 x[24]
   - 92 x[25] - 66 x[26] - 85 x[27] - 4 x[28] - 50 x[29] - 71 x[30]
   - 98 x[31] - 86 x[32] - 45 x[33] - 37 x[34] - 99 x[35] - 23 x[36]
   - 33 x[37] - 36 x[38] - 61 x[39] - 38 x[40] - 23 x[41] - 27 x[42]
   - 61 x[43] - 12 x[44] - 69 x[45] - 26 x[46] - 86 x[47] - 14 x[48]
   - 39 x[49] - 45 x[50] - 96 x[51] - 25 x[52] - 3 x[53] - 86 x[54]
   - 100 x[55] - 88 x[56] - 66 x[57] - 34 x[58] - 21 x[59] - 30 x[60]
   - 96 x[61] - 71 x[62] - 15 x[63] - 32 x[64] - 27 x[65] - 83 x[66]
   - 59 x[67] - 54 x[68] - 63 x[69]
Subject To
 primal_upper: 51 x[0] + 60 x[1] + 42 x[2] + 23 x[3] + 8 x[4] + 29 x[5]
   + 61 x[6] + 99 x[7] + 37 x[8] + 86 x[9] + 67 x[10] + 75 x[11] + 36 x[12]
   + 8 x[13] + 4 x[14] + 12 x[15] + 37 x[16] + 60 x[17] + 97 x[18]
   + 78 x[19] + 49 x[20] + 67 x[21] + 92 x[22] + 94 x[23] + 52 x[24]
   + 8 x[25] + 38 x[26] + 59 x[27] + 85 x[28] + 27 x[29] + 9 x[30]
   + 59 x[31] + 59 x[32] + x[33] + 100 x[34] + 93 x[35] + 20 x[36]
   + 12 x[37] + 84 x[38] + 30 x[39] + 95 x[40] + 89 x[41] + 42 x[42]
   + 81 x[43] + 11 x[44] + 82 x[45] + 93 x[46] + 21 x[47] + 87 x[48]
   + 56 x[49] + 2 x[50] + 52 x[51] + 5 x[52] + 40 x[53] + 48 x[54]
   + 63 x[55] + 5 x[56] + 2 x[57] + 32 x[58] + 18 x[59] + 24 x[60]
   + 10 x[61] + 35 x[62] + 70 x[63] + 35 x[64] + 72 x[65] + 52 x[66]
   + 46 x[67] + 44 x[68] + 45 x[69] + 5.1 r[0] + 6 r[1] + 4.2 r[2]
   + 2.3 r[3] + 0.8 r[4] + 2.9 r[5] + 6.1 r[6] + 9.9 r[7] + 3.7 r[8]
   + 8.6 r[9] + 6.7 r[10] + 7.5 r[11] + 3.6 r[12] + 0.8 r[13] + 0.4 r[14]
   + 1.2 r[15] + 3.7 r[16] + 6 r[17] + 9.7 r[18] + 7.8 r[19] + 4.9 r[20]
   + 6.7 r[21] + 9.2 r[22] + 9.4 r[23] + 5.2 r[24] + 0.8 r[25] + 3.8 r[26]
   + 5.9 r[27] + 8.5 r[28] + 2.7 r[29] + 0.9 r[30] + 5.9 r[31] + 5.9 r[32]
   + 0.1 r[33] + 10 r[34] + 9.3 r[35] + 2 r[36] + 1.2 r[37] + 8.4 r[38]
   + 3 r[39] + 9.5 r[40] + 8.9 r[41] + 4.2 r[42] + 8.1 r[43] + 1.1 r[44]
   + 8.2 r[45] + 9.3 r[46] + 2.1 r[47] + 8.7 r[48] + 5.6 r[49] + 0.2 r[50]
   + 5.2 r[51] + 0.5 r[52] + 4 r[53] + 4.8 r[54] + 6.3 r[55] + 0.5 r[56]
   + 0.2 r[57] + 3.2 r[58] + 1.8 r[59] + 2.4 r[60] + r[61] + 3.5 r[62]
   + 7 r[63] + 3.5 r[64] + 7.2 r[65] + 5.2 r[66] + 4.6 r[67] + 4.4 r[68]
   + 4.5 r[69] <= 320
 primal_lower: 1.757917703059101 x[0] + 4.556111740947229 x[1]
   + 4.609726071670178 x[2] + 4.361412681741395 x[3]
   + 0.8548261388919534 x[4] + 2.133164015253969 x[5]
   + 1.175548731980373 x[6] + 3.326279824154966 x[7]
   + 5.046312190032944 x[8] + 3.066720754167385 x[9]
   + 1.54834665160949 x[10] + 0.6439848651686366 x[11]
   + 1.513186656269685 x[12] + 0.3671564890897397 x[13]
   + 0.967128732530271 x[14] + 0.7927188399199394 x[15]
   + 3.147079533519523 x[16] + 0.2174226404568725 x[17]
   + 1.552141102805335 x[18] + 3.953009414414312 x[19]
   + 4.417805590001608 x[20] + 1.622440684752279 x[21]
   + 4.779706972814081 x[22] + 3.180148330487423 x[23]
   + 1.730394525912016 x[24] + 1.821612506353337 x[25]
   + 3.394796466718878 x[26] + 4.804628615270938 x[27]
   + 2.877206561051647 x[28] + 4.906961165914469 x[29]
   + 1.058540864286198 x[30] + 4.621896574942558 x[31]
   + 2.961846158153528 x[32] + 5.09471744756785 x[33]
   + 3.387168626845634 x[34] + 3.041141018280811 x[35]
   + 2.264343107610436 x[36] + 4.969281889958923 x[37]
   + 4.491158095550551 x[38] + 1.53992098765808 x[39]
   + 0.679558322830885 x[40] + 0.4959332803343526 x[41]
   + 1.189778798090473 x[42] + 3.828153579806691 x[43]
   + 4.241369076280594 x[44] + 2.106910782119158 x[45]
   + 2.894914417424013 x[46] + 1.325697535753405 x[47]
   + 0.1143483050626864 x[48] + 2.382338539431512 x[49]
   + 4.867968919340136 x[50] + 3.610133792295272 x[51]
   + 1.589909321843898 x[52] + 0.6157195271742736 x[53]
   + 3.787626309531756 x[54] + 4.8870654952137 x[55]
   + 5.092828879042377 x[56] + 1.072927281738909 x[57]
   + 3.285480776633005 x[58] + 1.805803738841084 x[59]
   + 5.128000243106117 x[60] + 2.563525672837373 x[61]
   + 2.311269673612969 x[62] + 5.033496993162405 x[63]
   + 4.292379919281837 x[64] + 1.828581988192104 x[65]
   + 3.582671745684074 x[66] + 1.308869839630757 x[67]
   + 2.5691981523588 x[68] + 4.78230619868235 x[69] + 58 u[0] + 55 u[1]
   + 65 u[2] + 38 u[3] + 15 u[4] + 68 u[5] + 72 u[6] + 82 u[7] + 24 u[8]
   + 77 u[9] + 82 u[10] + 58 u[11] + 23 u[12] + 79 u[13] + 47 u[14]
   + 31 u[15] + 48 u[16] + 15 u[17] + 64 u[18] + 65 u[19] + 52 u[20]
   + 10 u[21] + 79 u[22] + 21 u[23] + 3 u[24] + 55 u[25] + 73 u[26]
   + 94 u[27] + 44 u[28] + 70 u[29] + 64 u[30] + 50 u[31] + 70 u[32]
   + 64 u[33] + 27 u[34] + 48 u[35] + 15 u[36] + 47 u[37] + 63 u[38]
   + 33 u[39] + 46 u[40] + 92 u[41] + 77 u[42] + 84 u[43] + 94 u[44]
   + 45 u[45] + 92 u[46] + 84 u[47] + 94 u[48] + 27 u[49] + 65 u[50]
   + 51 u[51] + 40 u[52] + 99 u[53] + 7 u[54] + 54 u[55] + 68 u[56]
   + 17 u[57] + 83 u[58] + 45 u[59] + 87 u[60] + 65 u[61] + 42 u[62]
   + 41 u[63] + 6 u[64] + 47 u[65] + 19 u[66] + 93 u[67] + 31 u[68]
   + 60 u[69] <= 77643
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
