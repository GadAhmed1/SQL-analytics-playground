-- Find the average transaction value 
SELECT
	ROUND(AVG("Total_Spent"),2)
	FROM public."Cafe"