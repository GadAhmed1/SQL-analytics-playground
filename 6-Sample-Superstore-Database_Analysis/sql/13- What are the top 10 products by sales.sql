-- What are the top 10 products by sales ?
SELECT
	"Product ID",
	SUM("Sales"::"numeric") As Total
	FROM public."superStore"
	GROUP BY "Product ID"
	ORDER BY Total DESC
	LIMIT 10;