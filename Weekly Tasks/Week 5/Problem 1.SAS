/* Assignment 5 Problem 1*/
DM 'LOG; CLEAR; ODSRESULTS; CLEAR;'; 
TITLE "Bijesh Mishra, Assignment 5, Problem 1 ";
data stn; 
input Stations $ RspMin @@ ; 
datalines; 
s1 15 s2 13 s3 17 s4 10
s1 17 s2 9  s3 21 s4 8
s1 22 s2 14 s3 15 s4 11
s1 19 s2 11 s3 23 s4 11
s1 25 s2 15 s3 18 s4 12
;

TITLE "Bijesh Mishra, Assignment 5, Problem 1(a) ";
/* Kurskal-Wallis or Wilcoxon Rank Sum Test*/
PROC NPAR1WAY DATA = stn WILCOXON ALPHA = 0.05 PLOTS = NONE;
CLASS Stations;
VAR rspmin;
RUN; QUIT;
 
TITLE "Bijesh Mishra, Assignment 5, Problem 1(b) ";
PROC GLM DATA = stn ALPHA = 0.05 PLOTS (ONLY) = (BOXPLOT);
CLASS stations;
MODEL rspmin = stations ;
MEANS stations / CLM LSD PLOTS = NONE;
RUN; QUIT;
