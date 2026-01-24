-- Admissions by Admission Type
SELECT
	admission_type,
	COUNT(*),
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.healthcare),2) As Percentage
	FROM public.healthcare
	GROUP BY admission_type;