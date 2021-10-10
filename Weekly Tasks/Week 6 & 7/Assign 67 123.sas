/* Assign 6 & 7 */
DM ' LOG; CLEAR; ODSRESULTS; CLEAR;';
TITLE; FOOTNOTE;
DATA arch;
INFILE 'C:\Users\bmishra\Dropbox\OSU\PhD\Fall 2021\STAT5193 SAS R\Data\architecture.txt' DLM ="" FIRSTOBS = 2;
INPUT SUBJ BLDG SAT BTY FNC INT DIG CST FSH;
LABEL SUBJ = " Individuals "
	  BLDG = " Building Structures "
      SAT  = " Overall "
      BTY  = " Beauty "
      FNC  = " Function "
      INT  = " Intimacy "
      DIG  = " Dignity "
      CST  = " Cost "
      FSH  = " Fashion ";
TITLE "Bijesh Mishra, Assignment 6 & 7, Problem 1";
PROC SORT DATA = arch; BY BLDG;
PROC FREQ DATA = arch;
TABLES CST / PLOTS = FREQPLOT NOCOL;
BY BLDG;
TITLE "Bijesh Mishra, Assignment 6 & 7, Problem 2";
RUN; QUIT;

PROC FREQ DATA = arch;
TABLES BLDG*CST / PLOTS = FREQPLOT NOPERCENT NOCOL CHISQ ALPHA = 0.05;
TITLE "Bijesh Mishra, Assignment 6 & 7, Problem 3";
RUN; QUIT;
