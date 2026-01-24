-- What is the monthly revenue trend ?
SELECT
	EXTRACT(YEAR FROM orders.order_date) As Year,
	EXTRACT(MONTH FROM orders.order_date) As Month,
	ROUND(SUM((order_details.unit_price * order_details.quantity) * (1 - discount))::"numeric",2) As Revenue
	FROM public.orders
	INNER JOIN order_details on orders.order_id = order_details.order_id
	GROUP BY Year,Month
	ORDER BY Revenue DESC
	;