/* Assignment 14 */
DM 'LOG; CLEAR; ODSRESULTS; CLEAR;';
TITLE "Assignment 14, Bijesh Mishra";
FOOTNOTE "Prepared by: Bijesh Mishra";
FOOTNOTE2 "Due Date: October 8, 2021 11:59 PM";

TITLE "Bijesh Mishra, Assignment 14, Problem 1 ";
DATA Work.Arch;
FILENAME arch "C:\Users\bmishra\Dropbox\OSU\PhD\Fall 2021\STAT5193 SAS R\SAS\Data\architecture.txt";
INFILE Arch FIRSTOBS = 2;
INPUT SUBJ BLDG SAT BTY FNC INT DIG CST FSH;
LABEL SUBJ = " Individuals "
      BLDG = " Building Structures "
      SAT = " Overall "
      BTY = " Beauty "
      FNC = " Function "
      INT = " Intimacy "
      DIG = " Dignity "
      CST = " Cost "
      FSH = " Fashion ";
*PROC PRINT DATA = ARCH (OBS = 10) LABEL; 
RUN; QUIT;

TITLE "Bijesh Mishra, Assignment 14, Problem 1(a)";
PROC FORMAT;
VALUE FBTY  1 = 'Ugly'
	  	    5 = 'Neutral'
			9 = 'Beautiful';
VALUE FFNC  1 = 'Useless'
	  	    5 = 'Neutral'
			9 = 'Useful';
VALUE FINT  1 = 'Strange'
	  	    5 = 'Neutral'
			9 = 'Friendly';
VALUE FDIG  1 = 'Humble'
	  	    5 = 'Neutral'
			9 = 'Dignified';
VALUE FCST  1 = 'Cheap'
	  	    5 = 'Neutral'
			9 = 'Expensive';
VALUE FFSH  1 = 'Classic'
	  	    5 = 'Neutral'
			9 = 'Modern';
VALUE FSAT  1 = 'Bad'
	  	    5 = 'Neutral'
			9 = 'Good';
RUN; QUIT;

TITLE "Bijesh Mishra, Assignment 14, Problem 1(b)";
TITLE2 "Function of Building (Percentage)";
PROC GCHART DATA = arch;
PIE fnc/ TYPE = PERCENT VALUE = OUTSIDE;
FORMAT fnc Ffnc.;
RUN; QUIT;

TITLE "Bijesh Mishra, Assignment 14, Problem 1(c)";
TITLE2 "Dignity of Building (Frequency)";
PROC GCHART DATA = arch;
VBAR3D Dig/ TYPE = Freq MIDPOINTS = 1 2 3 4 5 6 7 8 9;
FORMAT Dig Fdig.;
RUN; QUIT;

LIBNAME A14 "C:\Users\bmishra\Dropbox\OSU\PhD\Fall 2021\STAT5193 SAS R\SAS\Assignments\Assignment 13";
DATA BBC; SET A14.COMBO;
*PROC PRINT DATA = BBC (OBS = 10) LABEL; 
RUN; QUIT;

GOPTIONS RESET = ALL;
GOPTIONS FTEXT = "ZAPF" HTEXT = 1.2;
TITLE "Bijesh Mishra, Assignment 14, Problem 2";
TITLE2 "Points Scored: Free Throw Vs Three Point Field Goals";
PROC G3D DATA = Bbc;
SCATTER Ft*fg = P3/GRID SHAPE = "BALLOON" COLOR = "ORANGE";
RUN; QUIT;

GOPTIONS RESET = ALL;
DATA HW14q3;
DO t = -1 TO 1 BY 0.1;
DO c = -1 TO 1 BY 0.01;
Y = 162.84 - 55.83*c + 75.50*t + 27.39*c*c - 10.61*t*t + 11.50*c*t;
OUTPUT;
END;END;
RUN;

TITLE "Bijesh Mishra, Assignment 14, Problem 3(a)";
TITLE2 "Predicted 3D Surface";
FOOTNOTE "Prepared by: Bijesh Mishra";
FOOTNOTE2 "Due Date: October 8, 2021 11:59 PM";
PROC G3D DATA = HW14q3 ;
PLOT c*t = Y;
RUN; QUIT;
TITLE "Bijesh Mishra, Assignment 14, Problem 3(b)";
TITLE2 "contour Plot";
FOOTNOTE "Prepared by: Bijesh Mishra";
FOOTNOTE2 "Due Date: October 8, 2021 11:59 PM";
PROC GCONTOUR DATA = HW14q3 ;
PLOT c*t = Y/ AUTOLABEL NOLEGEND
              LEVELS = 50 84 117 151 185 219 253 286;
RUN; QUIT;
