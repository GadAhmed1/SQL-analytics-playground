-- Top Medications Prescribed
SELECT
	medication,
	COUNT(*) As M_num
	FROM public.healthcare
	GROUP BY medication
	ORDER BY M_num DESC