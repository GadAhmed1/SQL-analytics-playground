-- Which employee handled the highest number of orders ?
SELECT
	orders.employee_id,
	CONCAT(employees.title_of_courtesy,employees.first_name) As "Employee_Name",
	COUNT(*) As "Number_Of_Orders"
	FROM public.orders
	INNER JOIN public.employees ON employees.employee_id = orders.employee_id
	GROUP BY orders.employee_id , "Employee_Name"
	ORDER BY "Number_Of_Orders" DESC
	;