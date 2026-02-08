-- Get the day with the highest total sales 
SELECT
	EXTRACT(DAY FROM "Transaction_Date") As Day,
	SUM("Total_Spent") As Total
	FROM public."Cafe"
	GROUP BY Day
	ORDER BY Total DESC