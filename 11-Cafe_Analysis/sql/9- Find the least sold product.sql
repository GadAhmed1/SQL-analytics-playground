 -- Find the least sold product 
 SELECT
 	"Item",
	SUM("Total_Spent") As "Total_Spent" 
	FROM public."Cafe"
	GROUP BY "Item"  
	ORDER BY "Total_Spent" ASC
	LIMIT 5;