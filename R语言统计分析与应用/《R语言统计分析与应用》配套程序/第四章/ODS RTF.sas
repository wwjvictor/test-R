ods listing close;
ods rtf file='G:\study.rtf' style=statdoc;
proc means data=score;
run;
ods rtf close;
ods listing;
