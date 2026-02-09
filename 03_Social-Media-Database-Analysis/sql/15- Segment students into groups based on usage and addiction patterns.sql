-- Segment students into groups based on usage and addiction patterns (low usage/low addiction, high usage/high addiction) ?
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

CREATE OR REPLACE FUNCTION GetTotalNumOfStudent()
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
	DECLARE
		Total
		INTEGER;
	BEGIN
	SELECT 
		COUNT("Student_ID")
		INTO Total
		FROM public."Students Social Media Addiction";
	RETURN Total;
	END;
$$;


SELECT 
	GetDailyHoursUsageStatus("Avg_Daily_Usage_Hours"::float) As "Addiction Level",
	(COUNT("Student_ID") * 100 ) / GetTotalNumOfStudent() AS "Percentage Of Students"
	FROM
	public."Students Social Media Addiction"
	GROUP BY GetDailyHoursUsageStatus("Avg_Daily_Usage_Hours"::float)
	ORDER BY GetDailyHoursUsageStatus("Avg_Daily_Usage_Hours"::float)