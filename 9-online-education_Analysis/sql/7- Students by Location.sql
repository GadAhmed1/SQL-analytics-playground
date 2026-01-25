-- Students by Location
SELECT 
	"Location",
	COUNT("Adaptivity Level") As Num
	FROM public.online_education
	WHERE "Adaptivity Level" = 'High'
	GROUP BY "Location"
	ORDER BY Num DESC