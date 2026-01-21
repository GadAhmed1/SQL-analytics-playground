-- Who are the top 5 customers by total spending ?
SELECt
	orders.customer_id,
	customers.company_name,
	ROUND(SUM((order_details.unit_price * order_details.quantity) * (1 - order_details.discount) )::"numeric",2) As "Total_Price"
	FROM public.orders
	INNER JOIN public.customers ON orders.customer_id = customers.customer_id
	INNER JOIN public.order_details ON order_details.order_id = orders.order_id
	GROUP BY orders.customer_id,customers.company_name
	ORDER BY "Total_Price"
	LIMIT 5;