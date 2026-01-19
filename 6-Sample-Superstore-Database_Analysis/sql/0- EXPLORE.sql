SELECT * FROM public."superStore";
SELECT DISTINCT "Ship Mode" FROM public."superStore";
SELECT DISTINCT "Segment" FROM public."superStore";
SELECT 
	MAX("Discount"::"numeric"),
	MIN("Discount"::"numeric")
	FROM public."superStore"