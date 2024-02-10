proc sort data = pg2.np_2016 out = np2016;
by ParkCode;
run;

proc sort data = pg2.np_codelookup out = lookup;
by ParkCode;
run;

data ParkStats(keep = ParkCode ParkName Year Month DayVisits) ParkOther (keep = ParkCode ParkName);
merge np2016(in = in2016) lookup;
by ParkCode;
if in2016 = 1 then output ParkStats;
else output ParkOther;
run;