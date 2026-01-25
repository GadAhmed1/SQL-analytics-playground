-- Customers by Last Contact Day/Month
SELECT
	ROUND(AVG(duration::"numeric"),2)
	FROM public.banking