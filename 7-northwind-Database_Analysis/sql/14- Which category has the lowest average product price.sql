-- Which category has the lowest average product price ?
SELECT
	-- orders.order_id,
	products.category_id,
	ROUND(AVG(products.unit_price)::"numeric",2) as AvgProduct,
	categories.category_name
	FROM public.orders
	INNER JOIN public.order_details ON orders.order_id = order_details.order_id
	INNER JOIN public.products ON order_details.product_id = products.product_id
	INNER JOIN public.categories ON categories.category_id = products.category_id
	GROUP BY products.category_id,categories.category_name
	ORDER BY AvgProduct ASC
	