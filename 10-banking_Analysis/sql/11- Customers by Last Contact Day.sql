-- Customers by Last Contact Day/Month
SELECT
	day,
	COUNT(*)
	FROM public.banking
	GROUP BY day
	ORDER BY day::"numeric" ASC