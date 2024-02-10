data parkTypeTraffic;
	title 'Accumulating Traffic Totals for Park Types';
	set pg2.np_yearlytraffic;
	where ParkType='National Monument' or ParkType='National Park';

	if ParkType='National Monument' then
		do;
			MonumentTraffic + Count;
		end;
	else if ParkType='National Park' then
		do;
			ParkTraffic + Count;
		end;
	format MonumentTraffic ParkTraffic comma15.;
run;

proc print parkTypeTraffic;
	var ParkType ParkName Location Count MonumentTraffic;
run;

title;
