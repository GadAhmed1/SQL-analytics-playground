-- What is the average delivery time in days for orders ?
SELECT
	ROUND(AVG(shipped_date - order_date),0) 
	FROM public.orders