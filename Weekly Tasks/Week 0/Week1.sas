DM 'LOG; CLEAR; ODSRESULTS; CLEAR; ';
TITLE; TITLE2;
FOOTNOTE; FOOTNOTE2; 
DATA one;
INPUT Name $ Fine;
DATALINES;
Lynn 50
Evan 75
Thomas 24
Welsey 44
Marie 30
;
PROC PRINT DATA = one;
TITLE 'Objective 1.1: Outstanding Parking Fine';
PROC MEANS DATA = one;
VAR fine;
RUN;
QUIT;
