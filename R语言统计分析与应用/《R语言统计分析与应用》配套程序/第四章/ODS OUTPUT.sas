ods listing close;
ods output summary=sum;
proc means data=score;
var math;
run;
ods listing;
