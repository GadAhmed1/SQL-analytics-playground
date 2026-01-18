-- Which sub-category causes the highest losses?
SELECT
	"Sub-Category",
	SUM("Profit"::"numeric") As "Total Profit"
	FROM public."superStore"
	GROUP BY "Sub-Category"
	ORDER BY "Total Profit" ASC