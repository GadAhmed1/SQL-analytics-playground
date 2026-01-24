-- Total Billing Amount ?
SELECT
	ROUND(SUM(billing_amount),2) As "Total Billing"
	FROM public.healthcare