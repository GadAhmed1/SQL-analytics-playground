-- Students by Education Level
SELECT
	"Education Level",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.online_education),2) As Percentage,
	COUNT(*) As Number
	FROM public.online_education
	GROUP BY "Education Level";
	
