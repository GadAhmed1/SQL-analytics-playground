-- How does the addiction score differ across academic levels (High School, Undergraduate, Graduate)?
SELECT 
	"Academic_Level",
	ROUND(AVG("Addicted_Score"::"numeric"),2) AS "Avg addiction score"
	from public."Students Social Media Addiction"
	GROUP BY "Academic_Level" 
	;