-- Get the average price per unit for each product 
SELECT
	"Item",
	ROUND(AVG("Price_Per_Unit"),2) As Avrage
	FROM public."Cafe"
	GROUP BY "Item"
	ORDER BY Avrage DESC