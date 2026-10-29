
/* DAY 1 - BASE SAS BASICS */
data class;
input Name $ Age Gender $ Marks;
datalines;
Ravi 24 M 85
Sai 26 M 90
Priya 23 F 92
Anil 28 M 78
;
run;

proc print data=class;
run;

/* Filter */
proc print data=class;
where Marks > 85;
title "Marks > 85 Students";
run;

/* Sorting */
proc sort data=class out=class_sorted;
by descending Marks;
run;

proc print data=class_sorted;
run;

/* Means */
proc means data=class mean max min;
var Age Marks;
run;

/* TASK 1.2 - Practice */
data patients;
input USUBJID $ Age Sex $ Weight;
datalines;
P001 25 M 68
P002 30 F 55
P003 22 M 75
P004 35 F 60
P005 28 M 80
;
run;

/* Q1: Only Female patients print chey */
proc print data=patients;
where Sex = "F";
title "Q1 - Female Patients Only";
run;

/* Q2: Weight > 65 unna vallani sort chey descending lo */
proc sort data=patients out=heavy_patients;
by descending Weight;
where Weight > 65;
run;

proc print data=heavy_patients;
title "Q2 - Weight > 65 Sorted";
run;
