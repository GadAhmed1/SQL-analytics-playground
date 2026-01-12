-- Is there a relationship between daily usage hours and mental health score?
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
				WHEN HourNum < MAX("Avg_Daily_Usage_Hours"::float) * 0.25 THEN '0 low'
				WHEN HourNum < MAX("Avg_Daily_Usage_Hours"::float) * 0.5 THEN '1 medium'
				WHEN HourNum < MAX("Avg_Daily_Usage_Hours"::float) * 0.75 THEN '2 high'
				WHEN HourNum <= MAX("Avg_Daily_Usage_Hours"::float) * 1 THEN '3 very high'
				ELSE '4 EXTREME'
			END
			INTO Status 
			from public."Students Social Media Addiction";
	RETURN Status;
	END;
$$;


SELECT 
	GetDailyHoursUsageStatus("Avg_Daily_Usage_Hours"::float) AS usage_status,
	ROUND(AVG("Mental_Health_Score"),2) As "Avg Mental Health"
	from public."Students Social Media Addiction"
	GROUP BY GetDailyHoursUsageStatus("Avg_Daily_Usage_Hours"::float)
	ORDER BY GetDailyHoursUsageStatus("Avg_Daily_Usage_Hours"::float) ASC
