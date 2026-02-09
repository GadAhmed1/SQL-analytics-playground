-- What is the average discount applied per category?
SELECT
	"Category",
	ROUND(AVG("Discount"::"numeric"),2) As "Avg Discount"
	FROM public."superStore"
	GROUP BY "Category"
	ORDER BY "Avg Discount" DESC