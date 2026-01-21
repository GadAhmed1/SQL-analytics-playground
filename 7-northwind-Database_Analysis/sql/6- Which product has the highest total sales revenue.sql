-- Which product has the highest total sales revenue ?
SELECT
	order_details.product_id,
	products.product_name,
	ROUND(SUM((order_details.unit_price * order_details.quantity) * (1 - discount))::"numeric",2) As "Product_price"
	FROM public.order_details
	INNER JOIN public.products ON products.product_id = order_details.product_id
	GROUP BY order_details.product_id , products.product_name
	ORDER BY "Product_price" DESC
	;