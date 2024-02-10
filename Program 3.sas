LIBNAME PG1 base '/home/u63537195/EPG1V2/data';

ods graphics on;
ods noproctitle;

proc freq data=pg1.np_species order=freq;
	tables Category / nocum plots = freqplot();
	where Species_ID like 'EVER%' and Category ^= 'Vascular Plant';
	title "Categories of Reported Species";
	title2 "In the Everglades";
run;