-- Which product category generates the highest sales
SELECT
	"Category",
	SUM("Sales"::"numeric") As "Total Sales"
	FROM public."superStore"
	GROUP BY "Category"
	ORDER BY "Total Sales" DESC