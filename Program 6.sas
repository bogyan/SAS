proc sort data= sashelp.shoes out=sas_ordered;
	by Region Product;
run;

data profitsummary;
	set sas_ordered;
	by Region Product;
	Profit = Sales - Returns;
	if first.Region=1 or first.Product=1 then
		TotalProfit=0;
	TotalProfit + Profit;
	keep Region Product TotalProfit;
    format TotalProfit dollar12.;
run;