-- Revenue by Insurance Provider
SELECT
	insurance_provider,
	ROUND(SUM(billing_amount),2) As Revenue
	FROM public.healthcare
	GROUP BY insurance_provider