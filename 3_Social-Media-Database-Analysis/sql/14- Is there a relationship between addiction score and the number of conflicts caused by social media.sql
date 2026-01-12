-- Is there a relationship between addiction score and the number of conflicts caused by social media ?
CREATE OR REPLACE FUNCTION GetDailyHoursUsageStatus(HourNum float)
RETURNS varchar
LANGUAGE plpgsql
AS $$
	DECLARE
		Status
		varchar;
	BEGIN
		SELECT 
			CASE
				WHEN HourNum < MAX("Addicted_Score"::float) * 0.25 THEN '0 low'
				WHEN HourNum < MAX("Addicted_Score"::float) * 0.5 THEN '1 medium'
				WHEN HourNum < MAX("Addicted_Score"::float) * 0.75 THEN '2 high'
				WHEN HourNum <= MAX("Addicted_Score"::float) * 1 THEN '3 very high'
				ELSE '4 EXTREME'
			END
			INTO Status 
			from public."Students Social Media Addiction";
	RETURN Status;
	END;
$$;


SELECT 
	GetDailyHoursUsageStatus("Addicted_Score"::float),
	ROUND(AVG("Conflicts_Over_Social_Media"),3) As "Avg Confilicts Numbers"
	from public."Students Social Media Addiction"
	GROUP BY GetDailyHoursUsageStatus("Addicted_Score"::float)
	ORDER BY GetDailyHoursUsageStatus("Addicted_Score"::float);