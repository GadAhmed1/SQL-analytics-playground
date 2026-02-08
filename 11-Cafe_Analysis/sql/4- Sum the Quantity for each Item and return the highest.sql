-- Sum the Quantity for each Item and return the highest
SELECT
	"Item",
	SUM("Total_Spent") As Total
	FROM public."Cafe"
	GROUP BY "Item"
	ORDER BY Total DESC;