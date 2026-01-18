-- Which sub-category generates the highest profit?
SELECT
	"Sub-Category",
	SUM("Profit"::"numeric") As "Total Profit"
	FROM public."superStore"
	GROUP BY "Sub-Category"
	ORDER BY "Total Profit" DESC