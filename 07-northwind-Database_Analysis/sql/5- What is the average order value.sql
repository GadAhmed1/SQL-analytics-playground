-- What is the average order value ?
SELECT
	ROUND(AVG((unit_price * quantity) * (1 - discount))::"numeric",2)
	FROM public.order_details