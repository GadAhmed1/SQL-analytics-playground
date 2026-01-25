-- Customers with Default
SELECT
	COUNT("default")
	FROM public.banking
	WHERE "default" = 'yes';