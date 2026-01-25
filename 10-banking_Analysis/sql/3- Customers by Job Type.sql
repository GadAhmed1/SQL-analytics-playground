-- Customers by Job Type
SELECT
	job,
	COUNT(*) As Num
	FROM public.banking
	GROUP BY job;