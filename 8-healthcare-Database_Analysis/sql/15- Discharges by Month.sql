-- Discharges by Month
SELECT
	CONCAT(EXTRACT(YEAR FROM discharge_date),'-',EXTRACT(MONTH FROM discharge_date)) As Date,
	COUNT(*)
	FROM public.healthcare
	GROUP BY Date