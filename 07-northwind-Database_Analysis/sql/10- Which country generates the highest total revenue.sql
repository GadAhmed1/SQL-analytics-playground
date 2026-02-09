-- Which country generates the highest total revenue ?
SELECT
	orders.ship_country As Country,
	ROUND(SUM((unit_price * quantity) * (1 - discount))::"numeric",2) As Total_revenue
	FROM public.orders
	INNER JOIN public.order_details ON orders.order_id = order_details.order_id
	GROUP BY Country
	ORDER BY Total_revenue DESC