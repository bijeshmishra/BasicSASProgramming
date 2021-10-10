/* Assignment 4 */ 
DM 'LOG; CLEAR; ODSRESULTS; CLEAR; ';
TITLE; FOOTNOTE;
TITLE "Assignment 4, Problem 1, Bijesh Mishra";
/* Data Year 2020 */
DATA y20;
INPUT Team $ 1-25 FG 26-30 FGA 31-35 P3 36-40 FT 41-45;
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

/* Create Year and Conference Variables */
DATA y20;
SET y20;
year = 2020;
IF team = "Dallas Mavericks" THEN conf = "west";
IF team = "Milwaukee Bucks" THEN conf = "east";
IF team = "Portland Trail Blazers" THEN conf = "west";
IF team = "Houston Rockets"	THEN conf = "west";		 
IF team = "Los Angeles Clippers" THEN conf = "west";
IF team = "New Orleans Pelicans" THEN conf = "west";
IF team = "Phoneix Suns" THEN conf = "west";		 
IF team = "Washington Wizards" THEN conf = "east";	 
IF team = "Memphis Grizzlies" THEN conf = "west"; 
IF team = "Boston Celtics" THEN conf = "east";		 
IF team = "Miami Heat" THEN conf = "east";
IF team = "Denver Nuggets" THEN conf = "west";		 
IF team = "Toronto Raptors"	THEN conf = "east";		 
IF team = "San Antonio Spurs" THEN conf = "west";	 
IF team = "Philadelphia 76ers" THEN conf = "east";		 
IF team = "Los Angeles Lakers" THEN conf = "west";	 
IF team = "Brooklyn Nets" THEN conf = "east";
IF team = "Utah Jazz" THEN conf = "west";			 
IF team = "Indiana Pacers" THEN conf = "east";
IF team = "Oklahoma City Thunder" THEN conf = "west";	 
IF team = "Sacremento Kings" THEN conf = "west";		 
IF team = "Orlando Magic" THEN conf = "east";			 
IF team = "Atlanta Hawks" THEN conf = "east";			 
IF team = "Minnesota Timberwolves" THEN conf = "west";	 
IF team = "Detroit Pistons"	THEN conf = "east";		 
IF team = "New York Knicks"	THEN conf = "east";		 
IF team = "Cleveland Cavaliers" THEN conf = "east";
IF team = "Chicago Bulls" THEN conf = "east";	 
IF team = "Golden State Warriors" THEN conf = "west";
IF team = "Charlotte Hornets" THEN conf = "east"; 

/* Create Year and Conference Variables */
DATA y21;
SET y21;
year = 2021;
IF team = "Dallas Mavericks" THEN conf = "west";
IF team = "Milwaukee Bucks" THEN conf = "east";
IF team = "Portland Trail Blazers" THEN conf = "west";
IF team = "Houston Rockets"	THEN conf = "west";		 
IF team = "Los Angeles Clippers" THEN conf = "west";
IF team = "New Orleans Pelicans" THEN conf = "west";
IF team = "Phoneix Suns" THEN conf = "west";		 
IF team = "Washington Wizards" THEN conf = "east";	 
IF team = "Memphis Grizzlies" THEN conf = "west"; 
IF team = "Boston Celtics" THEN conf = "east";		 
IF team = "Miami Heat" THEN conf = "east";
IF team = "Denver Nuggets" THEN conf = "west";		 
IF team = "Toronto Raptors"	THEN conf = "east";		 
IF team = "San Antonio Spurs" THEN conf = "west";	 
IF team = "Philadelphia 76ers" THEN conf = "east";		 
IF team = "Los Angeles Lakers" THEN conf = "west";	 
IF team = "Brooklyn Nets" THEN conf = "east";
IF team = "Utah Jazz" THEN conf = "west";			 
IF team = "Indiana Pacers" THEN conf = "east";
IF team = "Oklahoma City Thunder" THEN conf = "west";	 
IF team = "Sacremento Kings" THEN conf = "west";		 
IF team = "Orlando Magic" THEN conf = "east";			 
IF team = "Atlanta Hawks" THEN conf = "east";			 
IF team = "Minnesota Timberwolves" THEN conf = "west";	 
IF team = "Detroit Pistons"	THEN conf = "east";		 
IF team = "New York Knicks"	THEN conf = "east";		 
IF team = "Cleveland Cavaliers" THEN conf = "east";
IF team = "Chicago Bulls" THEN conf = "east";	 
IF team = "Golden State Warriors" THEN conf = "west";
IF team = "Charlotte Hornets" THEN conf = "east";

/* Merge Dataset */
DATA combo;
SET Y20 Y21;
RUN; QUIT;

/* Assignment 4, Problem 1(A) */
PROC SORT DATA = combo; BY year;
PROC GCHART DATA = combo;
TITLE "Assignment 4, Problem 1(A), Bijesh Mishra";
VBAR p3/ AXIS = 0 TO 9 MIDPOINTS = (2400 2500 2600 2700 2800 2900 3000 3100 3200);
BY year;
RUN; QUIT;

DM 'LOG; CLEAR; ODSRESULTS; CLEAR; ';
/* Assignment 4, Problem 1(B) */
TITLE "Assignment 4, Problem 1(B), Bijesh Mishra";
PROC GCHART DATA = combo;
VBAR p3/ MIDPOINTS = (700 800 900 1000 1100 1200) GROUP = Year AXIS = (1 TO 12);
RUN; QUIT;

/* Assignment 4, Problem 1(C) */
TITLE "Assignment 4, Problem 1(C), Bijesh Mishra";
PROC GCHART DATA = combo;
VBAR year / SUMVAR = P3 TYPE = MEAN MIDPOINTS = (2020 2021);
RUN; QUIT;

/* Assignment 4, Problem 2(A) */
TITLE "Assignment 4, Problem 2(A), Bijesh Mishra";
PROC TTEST DATA = combo ALPHA = 0.04 PLOTS = (HISTOGRAM INTERVAL BOXPLOT);
CLASS conf;
VAR ft;
BY year;
RUN; QUIT;

/* Assignment 4, Problem 2(B) */
TITLE "Assignment 4, Problem 2(B), Bijesh Mishra";
PROC TTEST DATA = combo ALPHA = 0.01 PLOTS (ONLY) = (BOXPLOT INTERVAL PROFILES);
PAIRED fg*ft;
WHERE year = 2020 and conf = 'west';
RUN; QUIT;
