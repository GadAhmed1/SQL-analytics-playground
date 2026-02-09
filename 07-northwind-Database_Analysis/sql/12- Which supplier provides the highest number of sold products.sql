-- Which supplier provides the highest number of sold products ?
SELECT
	-- orders.order_id,
	products.supplier_id,
	suppliers.contact_name,
	COUNT(*) As Number_Sold_Product
	FROM public.orders
	INNER JOIN public.order_details ON order_details.order_id = orders.order_id
	INNER JOIN public.products ON products.product_id = order_details.product_id
	INNER JOIN public.suppliers ON products.supplier_id = suppliers.supplier_id
	GROUP BY suppliers.contact_name , products.supplier_id
	ORDER BY Number_Sold_Product DESC