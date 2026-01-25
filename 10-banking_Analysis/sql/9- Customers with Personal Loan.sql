-- Customers with Personal Loan
SELECT
	COUNT(loan)
	FROM public.banking
	WHERE loan = 'yes'

	