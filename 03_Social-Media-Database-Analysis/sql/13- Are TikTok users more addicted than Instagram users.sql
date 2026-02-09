-- Are TikTok users more addicted than Instagram users ?
SELECT 
	"Most_Used_Platform",
	ROUND(AVG("Addicted_Score"::"numeric"),3)
	FROM public."Students Social Media Addiction"
	WHERE "Most_Used_Platform" = 'Instagram' OR "Most_Used_Platform" = 'TikTok'
	GROUP BY "Most_Used_Platform"
	ORDER BY AVG("Addicted_Score"::"numeric") DESC