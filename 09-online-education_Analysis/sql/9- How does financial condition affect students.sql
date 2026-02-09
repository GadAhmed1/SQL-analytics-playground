-- How does financial condition affect students
SELECT
	"Financial Condition",
	COUNT(*) As Num
	FROM public.online_education
	WHERE "Adaptivity Level" = 'High'
	GROUP BY "Financial Condition"