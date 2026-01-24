-- Most Common Medical Conditions
SELECT
	medical_condition,
	COUNT(*) As Num,
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.healthcare),2) As Percentage
	FROM public.healthcare
	GROUP BY medical_condition
	ORDER BY Num DESC