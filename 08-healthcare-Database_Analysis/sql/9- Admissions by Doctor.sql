-- Admissions by Doctor
SELECT
	doctor,
	COUNT(*)
	FROM public.healthcare
	GROUP BY doctor