-- IT Students vs Non-IT Students
SELECT
	CASE
		WHEN "IT Student" = 'Yes' Then 'IT Students'
		ELSE 'Non-IT Students'
	END As Type,
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.online_education),2) As Percentage,
	COUNT(*)
	FROM public.online_education
	GROUP BY Type;