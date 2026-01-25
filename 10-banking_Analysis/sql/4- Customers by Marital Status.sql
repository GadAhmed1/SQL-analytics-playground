-- Customers by Marital Status
SELECT
	marital,
	COUNT(*)
	FROM public.banking
	GROUP BY marital