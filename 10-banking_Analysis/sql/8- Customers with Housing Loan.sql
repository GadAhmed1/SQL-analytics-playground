-- Customers with Housing Loan
SELECT
	COUNT(housing)
	FROM public.banking
	WHERE housing = 'yes'