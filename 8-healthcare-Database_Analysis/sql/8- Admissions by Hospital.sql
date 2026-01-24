-- Admissions by Hospital
SELECT
	hospital,
	COUNT(*)
	FROM public.healthcare
	GROUP BY hospital