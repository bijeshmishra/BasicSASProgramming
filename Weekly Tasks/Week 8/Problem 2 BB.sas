/* Assignment 8 */ 
DM 'LOG; CLEAR; ODSRESULTS; CLEAR; ';
TITLE; FOOTNOTE;
TITLE "Assignment 8, Problem 2, Bijesh Mishra";
/* Data Year 2020 */
DATA y20;
INPUT Team $ 1-25 FG 26-30 FGA 31-35 P3 36-40 FT 41-45;
Year = 2020;
DATALINES;
Dallas Mavericks         3124 6772 1136 1392
Milwaukee Bucks			 3160 6638 1007 1336
Portland Trail Blazers	 3122 6749 952  1312
Houston Rockets			 2936 6512 1126 1484
Los Angeles Clippers	 2992 6425 895  1498
New Orleans Pelicans	 3065 6598 982  1229
Phoneix Suns			 3006 6429 831  1451
Washington Wizards		 2990 6544 864  1394
Memphis Grizzlies		 3106 6634 798  1212
Boston Celtics			 2971 6448 905  1336
Miami Heat				 2880 6160 979  1440
Denver Nuggets			 3069 6488 801  1185
Toronto Raptors			 2897 6331 995  1329
San Antonio Spurs		 2995 6350 760  1348
Philadelphia 76ers		 3000 6417 848  1236
Los Angeles Lakers		 3006 6269 782  1260
Brooklyn Nets			 2908 6498 941  1291
Utah Jazz				 2886 6130 963  1278
Indiana Pacers			 3075 6457 743  1096
Oklahoma City Thunder	 2879 6156 770  1422
Sacremento Kings		 2943 6364 914  1127
Orlando Magic			 2871 6468 807  1282
Atlanta Hawks			 2723 6067 805  1237
Minnesota Timberwolves	 2586 5865 853  1223
Detroit Pistons			 2595 5658 791  1097
New York Knicks			 2638 5896 631  1076
Cleveland Cavaliers		 2619 5715 727  983
Chicago Bulls			 2573 5762 793  1006
Golden State Warriors	 2510 5730 678  1214
Charlotte Hornets		 2425 5586 785  1052
;

/* Data Year 2021 */
DATA y21;
INPUT Team $ 1-25 FG 26-30 FGA 31-35 P3 36-40 FT 41-45;
Year = 2021;
DATALINES;
Milwaukee Bucks          3221 6610 1038 1169
Brooklyn Nets			 3106 6289 1020 1305
Washington Wizards		 3108 6547 733  1449
Utah Jazz				 2971 6344 1205 1235
Portland Trail Blazers	 2973 6558 1132 1282
Indiana Pacers			 3115 6567 889  1183
Phoneix Suns			 3118 6357 940  1124
Denver Nuggets			 3114 6422 927  1129
New Orleans Pelicans	 3060 6412 762  1369
Los Angeles Clippers     3009 6242 1027 1164
Sacremento Kings         3067 6382 874  1181
Golden State Warriors    2973 6347 1048 1193
Atlanta Hawks            2937 6281 895  1417
Philadelphia 76ers       2981 6257 811  1409
Memphis Grizzlies        3085 6608 803  1184
Boston Celtics           2985 6401 979  1160
Dallas Mavericks         2958 6287 994  1186
Minnesota Timberwolves   2932 6546 944  1265
Toronto Raptors          2859 6383 1041 1252
San Antonio Spurs        3014 6518 716  1254
Chicago Bulls            3035 6380 904  995
Los Angeles Lakers       2925 6197 796  1241
Charlotte Hornets        2875 6324 985  1146
Houston Rockets          2826 6372 992  1189
Miami Heat               2824 6029 932  1201
New York Knicks          2839 6225 847  1181
Detroit Pistons          2783 6162 832  1278
Oklahoma City Thunder    2795 6338 857  1113
Orlando Magic            2754 6423 784  1196
Cleveland Cavaliers      2778 6175 720  1200
;

DATA hw8;
INPUT fg Year;
DATALINES;
7000 2021
7100 2021
;
RUN; QUIT;

/* Merge Dataset */
DATA combo; SET HW8 y20 y21;
Points = 2*(fg - p3) + 3*p3 +ft;
RUN; QUIT;

/* Assignment 8, Problem 2 */
TITLE "Assignment 8, Problem 2, Bijesh Mishra";
PROC REG DATA = combo SIMPLE;
MODEL Points = fg / CLI CLM CLB ALPHA = 0.02;
WHERE year = 2021;
ID fg;
Q4B: TEST fg = 0;
RUN; QUIT;

/* Export Data To Assignment 13 */
LIBNAME A13 "C:\Users\bmishra\Dropbox\OSU\PhD\Fall 2021\STAT5193 SAS R\SAS\Assignments\Assignment 13";
DATA A13.BBCombo;
SET combo;
RUN; QUIT;
