-- How many unique customers have placed at least one order ?
SELECT
	count(*)
	FROM (
	SELECT
	customer_id	
	FROM public.orders
	GROUP BY customer_id
	);