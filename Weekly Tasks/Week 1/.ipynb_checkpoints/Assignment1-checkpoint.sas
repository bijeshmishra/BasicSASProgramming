DM 'LOG; CLEAR; ODSRESULTS; CLEAR;';

TITLE "Assignment 1, Problem 1, Bijesh Mishra";
TITLE2 "Q: Enter data. ";
FOOTNOTE "STAT 5193: SAS & R";
DATA assign1;
INPUT Group Dosage $ Response @@;
DATALINES;
1 low 6.9
1 low 8.3
1 medium 23.5
1 medium 19.2
1 high 21.0
1 high 24.0
2 low 10.7
2 low 5.3
2 medium 8.9
2 medium 11.2
2 high 15.6
2 high 18.3
;
PROC PRINT DATA = assign1;
RUN; QUIT;

PROC SORT DATA = assign1;
BY group DESCENDING response;
PROC PRINT DATA = assign1 NOOBS;
VAR group response dosage;
TITLE "Assignment 1, Problem 2, Bijesh Mishra";
TITLE2 "Q: Sort data: descending response, ascending group, noobs,";
FOOTNOTE "STAT 5193: SAS & R";
RUN; QUIT;

PROC PRINT DATA = assign1;
VAR group response;
BY group;
TITLE "Assignment 1, Problem 3, Bijesh Mishra";
TITLE2 "Q: Use asorted data, print by group, supress dose level.";
FOOTNOTE "STAT 5193: SAS & R";
RUN; QUIT;

PROC SORT DATA = assign1;
BY dosage group;
PROC PRINT DATA = assign1;
VAR Dosage group response;
TITLE "Assignment 1, Problem 4, Bijesh Mishra";
TITLE2 "Q: Sort data by dosage level and group.";
FOOTNOTE "STAT 5193: SAS & R";
RUN; QUIT;
