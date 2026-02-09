-- Students by Load-Shedding Frequency EN: How many students experience 
SELECT
	"Load-shedding",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.online_education),2) As Percentage,
	COUNT(*) As Number
	FROM public.online_education
	GROUP BY "Load-shedding";
	
