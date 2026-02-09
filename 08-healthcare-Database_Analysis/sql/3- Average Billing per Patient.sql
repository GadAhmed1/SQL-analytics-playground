-- Average Billing per Patient
SELECT
	ROUND(AVG(billing_amount),2) As "Avg Billing"
	FROM public.healthcare