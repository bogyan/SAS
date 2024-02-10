ods graphics on;

proc freq data=pg1.np_codelookup order=freq;
	tables Type*Region / nocol crosslist plots = 
	freqplot(groupby=row scale=grouppercent orient = horizontal);
	where Type in('National Park', 'National Monument', 'National Historic Site');
	title 'Selected Park Types by Region';
run;
