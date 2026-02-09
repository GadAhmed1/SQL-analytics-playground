-- What is the total sales and total profit of the superstore
SELECT
	ROUND(SUM("Sales"::"numeric"),2) As "Total Sales",
	ROUND(SUM("Profit"::"numeric"),2) As "Total Profit"
	FROM public."superStore"