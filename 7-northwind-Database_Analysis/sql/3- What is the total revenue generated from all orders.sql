-- What is the total revenue generated from all orders ?
SELECT
	ROUND(SUM((unit_price * quantity) * (1 - discount))::"numeric",2)
	FROM public.order_details;

