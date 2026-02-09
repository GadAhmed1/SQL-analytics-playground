-- Patients by Gender
SELECT
	gender,
	COUNT(*) As "Number",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.healthcare),2) As Percentage
	FROM public.healthcare
	GROUP BY gender