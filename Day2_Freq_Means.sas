/* DAY 2 - CLINICAL USE CASE */
data demo;
input USUBJID $ Age Sex $ Race $ Weight;
datalines;
101 24 M ASIAN 68
102 35 F WHITE 55
103 29 M BLACK 75
104 42 F ASIAN 60
105 31 M WHITE 80
106 27 F BLACK 58
107 38 M ASIAN 72
108 33 F WHITE 62
;
run;

/* Q1: Gender & Race count - TLF lo Table 1 kosam */
proc freq data=demo;
tables Sex Race Sex*Race / nocum nopercent;
title "Q1 - Demographics Frequency";
run;

/* Q2: Age, Weight summary - Mean, Min, Max */
proc means data=demo n mean median min max std;
var Age Weight;
title "Q2 - Age Weight Summary";
run;

/* Q3: Gender wise Age summary - Important! */
proc means data=demo mean min max;
class Sex; /* Class valla Male Female separate ga vastadi */
var Age Weight;
title "Q3 - Gender wise Summary";
run;

/* Q4: Sort by Age descending */
proc sort data=demo out=demo_age_sorted;
by descending Age;
run;

proc print data=demo_age_sorted;
title "Q4 - Age wise Sorted (Oldest First)";
run;
