-- Which are the top 5 countries by average social media addiction score ? 
SELECT 
	"Country",
	AVG("Addicted_Score"::float) As "Avg Addiction Score"
	from public."Students Social Media Addiction"
	GROUP BY "Country"
	ORDER BY AVG("Addicted_Score"::float) DESC
	;