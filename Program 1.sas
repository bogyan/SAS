%LET ParkCode=ZION;
%LET SpeciesCat=Bird;

proc freq data='/home/u63537195/EPG1V2/data/np_species';
	tables Abundance Conservation_Status;
	where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
run;

proc print data='/home/u63537195/EPG1V2/data/np_species';
	var Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
run;