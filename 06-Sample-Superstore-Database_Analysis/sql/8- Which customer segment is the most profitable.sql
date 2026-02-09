-- Which customer segment is the most profitable ?
SELECT
	"Segment",
	ROUND(SUM("Profit"::"numeric"),2) As "Total Profit",
	CONCAT(ROUND((ROUND(SUM("Profit"::"numeric"),2) * 100.0) / (SELECT SUM("Profit"::"numeric") FROM public."superStore"),2),' %')
	FROM public."superStore"
	GROUP BY "Segment"
	ORDER BY "Total Profit" DESC