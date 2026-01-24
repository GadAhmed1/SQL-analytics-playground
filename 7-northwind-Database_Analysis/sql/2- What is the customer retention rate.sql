-- What is the customer retention rate (customers who ordered more than once) ?

SELECT
	ROUND((SUM(COUNT_Rate) * 100.0) / (SELECT COUNT(*) FROM public.orders),2) As retention_rate
	FROM 
	(
		SELECT
			COUNT(*) As COUNT_Rate
			FROM public.orders
			GROUP BY customer_id
			HAVING COUNT(*) > 1
	);

