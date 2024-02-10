LIBNAME PG1 base '/home/u63537195/EPG1V2/data';

data Storm_cat5;
	set pg1.storm_summary;
	keep Season Basin Name Type MaxWindMPH;
	where MaxWindMPH >=156 AND StartDate > '01JAN2001'd;
run;