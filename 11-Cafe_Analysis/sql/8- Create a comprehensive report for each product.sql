-- Create a comprehensive report for each product 
SELECT
	"Item",
	COUNT(*) AS "Total quantity sold",
	SUM("Total_Spent") As "Total revenue",
	ROUND(AVG("Total_Spent"),2) As "Average price per unit"
	FROM public."Cafe"
	GROUP BY "Item"