/* Assignment 11 */
DM 'LOG; CLEAR; ODSRESULTS; CLEAR;'; 
/* Assignment 11, Problem 1 */
/* Export Permanent dataset to Assignment 11 */
LIBNAME Assgn11 " C:\Users\bmishra\Dropbox\OSU\PhD\Fall 2021\STAT5193 SAS R\SAS\Assignments\Assignment 11";
TITLE "Bijesh Mishra, Assignment 11, Problem 1 ";
DATA Assgn11.A11;
SET Assgn11.MESONET1_4;
ARRAY b{4} MaxTemp MinTemp SODSOIL BARESOIL;
ARRAY c{4} MaxTempC MinTempC SODSOILC BARESOILC;
Do i = 1 TO 4;
c{i} = (b {i} - 32)* (5/9);
END; 
DROP MaxTemp MinTemp SODSOIL BARESOIL;
LABEL Month = "Month"
      DAY   = "Day"
	  MAXTEMP = "Maximum Temperature (F)"
	  MINTEMP = "Minimum Temperature (F)"
	  MAXHUMID = "Maximum Humidity"
	  MINHUMID = "Minimum Humidity" 
	  WINDDIR = "Wind Direction"
      SPEEDAVG = "Wind Average Speed"
      RAIN_IN = "Rain (Inch/Day)"
	  STNPRESSUR = " Hg Pressure (Inch)"
	  SOLAR_MJ_M2 = " Solar Radiation (Mj/MSq)"
	  SODSOIL = " Avg Soil Temp.(F)/Day"
	  BARESOIL = " Avg BareSoil Temp.(F)/Day"
	  MAXTEMPC = "Maximum Temperature (C)"
	  MINTEMPC = "Minimum Temperature (C)"
	  SODSOILC = " Avg Soil Temp.(C)/Day"
	  BARESOILC = " Avg BareSoil Temp.(C)/Day";
RUN; QUIT;
PROC PRINT DATA = Assgn11.A11 LABEL NOOBS;
ID month Day;
RUN; QUIT;

/* Assignment 11, Problem 2 */
TITLE "Bijesh Mishra, Assignment 11, Problem 2";
DATA A11Q2;
seed = 1234;
DO i = 1 TO 15; * Size 15;
DO J = 1 TO 10; * Sample 10;
CALL RANUNI (seed, x);
y = x*10 + 10;
OUTPUT;
END; END;
RUN; QUIT;

PROC MEANS DATA = A11Q2;
CLASS J; * Sample;
VAR y;
RUN; QUIT;

/* Assignment 11, Problem 3 */
TITLE "Bijesh Mishra, Assignment 11, Problem 3";
DATA A11Q3;
DO I = 1 TO 100;
X = 150 + SQRT(8)* RANNOR(1234); * X ~ N(150,8);
OUTPUT;
END;
RUN; QUIT;

PROC GCHART DATA = A11Q3;
VBAR X / LEVELS = 10 MIDPOINTS = 140 142 144 146 148 150 152 154 156 158;
RUN; QUIT;
