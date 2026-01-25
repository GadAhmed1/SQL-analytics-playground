-- Customers by Contact Communication Type
SELECT
	contact,
	COUNT(*)
	FROM public.banking
	GROUP BY contact
	