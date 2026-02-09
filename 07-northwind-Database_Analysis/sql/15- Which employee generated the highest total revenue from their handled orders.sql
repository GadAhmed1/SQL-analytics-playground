-- Which employee generated the highest total revenue from their handled orders?
SELECT
	employees.employee_id,
	CONCAT(employees.first_name ,' ',employees.last_name) As EmpName,
	ROUND(SUM((unit_price * quantity) * (1 - discount))::"numeric",2) As Total_revenue
	FROM public.orders
	INNER JOIN public.employees ON employees.employee_id = orders.employee_id
	INNER JOIN public.order_details ON orders.order_id = order_details.order_id
	GROUP BY EmpName ,employees.employee_id
	ORDER BY Total_revenue DESC