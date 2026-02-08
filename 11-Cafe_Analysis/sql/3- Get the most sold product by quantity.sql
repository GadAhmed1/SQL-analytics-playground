-- Get the most sold product by quantity 
SELECT
	"Item",
	COUNT(*) As Count
	FROM public."Cafe"
	GROUP BY "Item"
	ORDER BY Count DESC
	LIMIT 1;
	
	