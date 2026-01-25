-- What is the average class duration for each device type 
SELECT
	"Device",
		ROUND(	AVG(
    CASE
        WHEN "Class Duration" = '1-3' THEN 2
        WHEN "Class Duration" = '3-6' THEN 3
        ELSE 0
    END
	),2) As DurationAvg
	FROM public.online_education
	GROUP BY "Device"
	ORDER BY DurationAvg
	;

