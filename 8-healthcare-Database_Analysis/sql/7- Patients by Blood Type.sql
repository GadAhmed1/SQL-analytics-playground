-- Patients by Blood Type
SELECT
	blood_type,
	COUNT(*),
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.healthcare),2) As Percentage
	FROM public.healthcare
	GROUP BY blood_type