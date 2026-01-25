-- Students by Gender
SELECT
	"Gender",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM online_education),2) As Percentage,
	COUNT(*) As Number
	FROM public.online_education
	GROUP BY "Gender"