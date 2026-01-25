-- Customers by Education Level
SELECT
	education,
	COUNT(*)
	FROM public.banking
	GROUP BY education