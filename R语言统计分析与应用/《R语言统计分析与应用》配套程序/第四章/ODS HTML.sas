ods listing close;
ods html body='G:\text.htm';
proc means data=a;
run;
ods html close;
ods listing;
