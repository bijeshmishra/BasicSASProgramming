/* Assignment 13 */
DM 'LOG; CLEAR; ODSRESULTS; CLEAR;'; 
GOPTIONS RESET = ALL;
TITLE "Bijesh Mishra, Assignment 13 ";
DATA meso ; 
INPUT Month $  DAY    MAXTEMP    MINTEMP    MAXHUMID    MINHUMID    WINDDIR $   SPEEDAVG ;
LABEL Month = "Month"
      DAY   = "Day"
	  MAXTEMP = "Maximum Temperature"
	  MINTEMP = "Minimum Temperature"
	  MAXHUMID = "Maximum Humidity"
	  MINHUMID = "Minimum Humidity" 
	  WINDDIR = "Wind Direction"
      SPEEDAVG = "Wind Average Speed";
CARDS; *DATALINES;
	 Jan       1       36         32         99          72         NNW         8.3
	 Jan       2       45         27         98          61         SW          2.8
	 Jan       3       48         25         98          58         ESE         2.2
	 Jan       4       59         26         98          47         NNW         4.1
	 Jan       5       62         25         98          22         SSE         6.2
	 Jan       6       49         41         97          49         NNW         5.9
	 Jan       7       41         38         98          84         N           7.9
	 Jan       8       39         23         96          64         N           5.7
	 Jan       9       44         20         96          52         N           2.7
	 Jan      10       40         25         94          61         N           5.0
	 Jan      11       48         19         96          40         WSW         2.6
	 Jan      12       55         23         93          31         SW          4.6
	 Jan      13       61         23         97          28         SW          4.6
	 Jan      14       54         33         86          18         NW         11.0
	 Jan      15       43         32         63          29         NW         11.6
	 Jan      16       51         26         80          23         W           4.7
	 Jan      17       54         25         84          25         NW          6.0
	 Jan      18       60         23         90          29         NW          3.9
	 Jan      19       48         25         89          40         N           5.3
	 Jan      20       46         23         94          39         S           4.5
	 Jan      21       50         30         99          73         E           2.5
	 Jan      22       52         33         98          31         NE          9.2
	 Jan      23       49         32         90          51         SSE         8.6
	 Jan      24       51         44         99          76         SSE         6.5
	 Jan      25       46         33         99          74         WNW         7.8
	 Jan      26       34         30         82          73         NNE         7.3
	 Jan      27       36         21         89          52         NNW         7.7
	 Jan      28       45         17         94          48         SSE         5.3
	 Jan      29       59         33         85          39         SSE        10.0
	 Jan      30       64         40         98          43         NW         11.3
	 Jan      31       46         28         95          59         NNW        10.9
	 Feb       1       54         23         97          36         NNE         2.4
	 Feb       2       62         36         81          26         SE          6.7
	 Feb       3       63         34         79          37         SE          8.7
	 Feb       4       62         26         86          33         NNW        12.4
	 Feb       5       57         25         90          25         WSW         4.2
	 Feb       6       47         26         90          45         SE          8.0
	 Feb       7       33         26         95          73         E           8.2
	 Feb       8       32         17         97          89         NE           .
	 Feb       9       20         15         92          84         .             .
	 Feb      10       20         17         93          83         NNE          .
	 Feb      11       20         16         88          78         NNE        11.0
	 Feb      12       17         12         85          73         NNE        12.5
	 Feb      13       19          7         78          59         NNE        12.5
	 Feb      14       10          0         84          65         NNE        16.0
	 Feb      15        3         -9         82          62         NNW        10.3
	 Feb      16       13        -15         88          54         ESE         3.9
	 Feb      17       22          8         88          64         NNE         4.5
	 Feb      18       25         -1         90          58         NNW         4.9
	 Feb      19       37         -3         91          45         S           3.1
	 Feb      20       47         11         92          52         SE          6.4
	 Feb      21       56         27          93         49         SSE         9.1
	 Feb      22       65         24          96         25         SW          5.9
	 Feb      23       76         25          94         19         SSE         5.4
	 Feb      24       62         37          74         31         N          12.1
	 Feb      25       55         27          91         25         NE          9.1
	 Feb      26       56         35          96         49         SE          4.5
	 Feb      27       62         38         100         53         SSE         9.3
	 Feb      28       61         39          99         35         NNW        10.3
	 Mar       1       57         27          94         26         N           4.5
	 Mar       2       65         24          96         15         S           4.9
	 Mar       3       72         35          69         15         SSE         5.5
	 Mar       4       73         40          76         31         SE          8.9
	 Mar       5       59         36          97         55         NE          9.6
	 Mar       6       65         30          99         30         SSE         3.5
	 Mar       7       69         38          71         19         S           8.8
	 Mar       8       73         40          68         30         SSE         9.6
	 Mar       9       76         54          74         37         S          12.9
	 Mar      10       82         63          74         33         S          14.0
	 Mar      11       67         46          94         70         NNE         8.8
	 Mar      12       69         50          98         72         ENE         7.3
	 Mar      13       67         51         100         77         ESE        10.8
	 Mar      14       69         50          96         18         ESE        11.0
	 Mar      15       67         42          92         39         W           8.8
	 Mar      16       81         37          98         29         ESE         7.8
	 Mar      17       66         38          96         80         NW         12.7
	 Mar      18       48         39          87         59         NNW        12.7
	 Mar      19       61         34          97         39         N           5.6
	 Mar      20       68         29          98         25         SE          6.1
	 Mar      21       69         47          72         35         SSE        12.0
	 Mar      22       .          51          96         63         SE         11.7
	 Mar      23       58         46          96         57         W          10.7
	 Mar      24       59         41          91         53         WNW         6.0
	 Mar      25       61         .           96         45         WNW         4.8
	 Mar      26       78         37          98         25         SSE         8.6
	 Mar      27       72         44          90         36         NNW         8.3
	 Mar      28       68         37          98         21         WNW         3.5
	 Mar      29       79         48          58         20         S          13.4
	 Mar      30       .          .           59         20         N          11.5
	 Mar      31       63         38          74         17         NNE         7.8
	 Apr       1       65         29          97         18         ESE         4.9
	 Apr       2       72         39          56         18         S           9.3
	 Apr       3       78         48          64         29         S           8.4
	 Apr       4       77         51          91         43         S           7.9
	 Apr       5       82         56          87         38         S          11.3
	 Apr       6       81         61          85         48         SSE        13.3
	 Apr       7       72         49          72         46         WNW        11.9
	 Apr       8       78         46          72         21         W           9.3
	 Apr       9       77         48          92         52         NNW         8.9
	 Apr      10       68         40          93         29         NW          7.9
	 Apr      11       85         38          97         20         SW          7.1
	 Apr      12       66         51          56         33         NNE        12.7
	 Apr      13       69         43         94          23         NE         10.9
	 Apr      14       62         47         96          40         ENE         5.7
	 Apr      15       56         48         97          47         NE          6.6
	 Apr      16       53         45         96          85         NNW         8.2
	 Apr      17       54         38         92          54         NW          6.9
	 Apr      18       63         39         96          29         WNW         4.0
	 Apr      19       76         34         98          18         WSW         5.4
	 Apr      20       51         29         95          32         N          11.7
	 Apr      21       59         29         97          25         N           5.0
	 Apr      22       62         37         83          29         SE          8.0
	 Apr      23       68         50         97          66         SE          8.5
	 Apr      24       70         48         98          39         NNW         6.7
	 Apr      25       79         47         97          40         SSE        10.2
	 Apr      26       83         65         76          41         S          12.9
	 Apr      27       77         66         96          65         SSE         8.7
	 Apr      28       74         60         97          77         SE          6.9
	 Apr      29       78         52         97          33         NNE         8.7
	 Apr      30       81         48         98          23         SE          2.6
;
LIBNAME A13 " C:\Users\bmishra\Dropbox\OSU\PhD\Fall 2021\STAT5193 SAS R\SAS\Assignments\Assignment 13";
DATA work.BBC; * NBA Basketball data as BBC ;
SET A13.combo;
RUN; QUIT;
* input Month $  DAY    MAXTEMP    MINTEMP    MAXHUMID    MINHUMID    WINDDIR $   SPEEDAVG ;
TITLE "Bijesh Mishra, Assignment 13 Q1";
DATA meso;
set meso;
DOY = _N_;
LABEL DOY = "Day of the Year";
*PROC PRINT DATA = meso (OBS = 5)LABEL;
*ID doy month day;
*RUN; *QUIT;

GOPTIONS RESET = ALL;
TITLE "Bijesh Mishra, Assignment 13 Q2";
AXIS1 LABEL = (A = 90); * Rotate Axix by 90 Degree; 
PROC GPLOT DATA = meso;
PLOT (MaxTemp MinTemp) * DOY /VAXIS = AXIS1;
SYMBOL INTERPOL = JOIN;
RUN; QUIT; 

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q3";
AXIS2 LABEL = ("Temperature"); * Can I also rotate 90 Degree? ; 
SYMBOL1 INTERPOL = join COLOR = Green L = 1 W = 1.9;
SYMBOL2 I = JOIN CV = Red LINE = 3 WIDTH = 1.9;
LEGEND1 POSITION = (BOTTOM LEFT OUTSIDE) LABEL = NONE DOWN = 2 MODE = SHARE;
LEGEND2 POSITION = (BOTTOM LEFT OUTSIDE) LABEL = NONE;
PROC GPLOT DATA = meso;
PLOT (MaxTemp MinTemp) * DOY / OVERLAY LEGEND = LEGEND1 VAXIS = AXIS2 ;
RUN; QUIT;

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q4(a)";
PROC GCHART DATA = meso;
HBAR Month/ TYPE = MEAN SUMVAR = MaxTemp;
PATTERN COLOR = GREEN VALUE = EMPTY;
RUN; QUIT; 

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q4(b)";
PROC GCHART DATA = meso;
HBAR Month/ TYPE = MEAN SUMVAR = MaxTemp NOSTAT AUTOREF;
PATTERN COLOR = CYAN VALUE = SOLID;
RUN; QUIT; 

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q4(c)";
PROC GCHART DATA = meso;
HBAR Month/ TYPE = MEAN SUMVAR = MaxTemp NOSTAT AUTOREF CLIPREF;
PATTERN COLOR = CYAN VALUE = SOLID;
RUN; QUIT; 

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q5(a)";
PROC GCHART DATA = bbc;
VBAR Team/TYPE = MEAN SUMVAR = fg GROUP = Year PATTERNID = MIDPOINT;
WHERE Team = "Oklahoma City Thuhnder" OR 
	  Team = "Miami Heat" OR 
      Team = "Dallas Mavericks" OR
	  Team = "Denver Nuggets";
PATTERN1 COLOR = Violet VALUE = SOLID;
PATTERN2 COLOR = Brown VALUE = SOLID;
PATTERN3 COLOR = Yellow VALUE = SOLID;
RUN; QUIT;

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q5(b)";
PROC GCHART DATA = bbc;
VBAR Year/ DISCRETE TYPE = MEAN SUMVAR = fg GROUP = Team PATTERNID = GROUP;
WHERE Team = "Oklahoma City Thuhnder" OR 
	  Team = "Miami Heat" OR 
      Team = "Dallas Mavericks" OR
	  Team = "Denver Nuggets";
PATTERN4 COLOR = Yellow VALUE = SOLID;
PATTERN5 COLOR = Red VALUE = SOLID;
PATTERN7 COLOR = Green VALUE = SOLID;
RUN; QUIT;

GOPTIONS RESET = ALL; * Reset All Goptions;
TITLE "Bijesh Mishra, Assignment 13 Q5(c)";
PROC GCHART DATA = bbc;
VBAR Year/ DISCRETE TYPE = MEAN SUMVAR = fg GROUP = Team PATTERNID = MIDPOINT;
WHERE Team = "Oklahoma City Thuhnder" OR 
	  Team = "Miami Heat" OR 
      Team = "Dallas Mavericks" OR
	  Team = "Denver Nuggets";
PATTERN7 COLOR = Black VALUE = SOLID;
PATTERN8 COLOR = Blue VALUE = SOLID;
RUN; QUIT;
