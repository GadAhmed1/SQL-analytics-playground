-- Average Class Duration 
SELECT
	"Education Level",
		ROUND(	AVG(
    CASE
        WHEN "Class Duration" = '1-3' THEN 2
        WHEN "Class Duration" = '3-6' THEN 3
        ELSE 0
    END
	),2) As DurationAvg
	FROM public.online_education
	GROUP BY "Education Level"
	ORDER BY DurationAvg
	;