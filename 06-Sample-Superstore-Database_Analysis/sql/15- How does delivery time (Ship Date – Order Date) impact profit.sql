-- How does delivery time (Ship Date – Order Date) impact profit ?
CREATE OR REPLACE FUNCTION Date_Status(DayNum INTEGER)
RETURNS VARCHAR 
LANGUAGE Plpgsql
As $$
	DECLARE
		status
		VARCHAR;
	BEGIN
		SELECT
			CASE
		        WHEN daynum = 0 THEN 'no days'
		        WHEN daynum > 0 AND daynum <= 2 THEN 'short'
		        WHEN daynum > 2 AND daynum <= 4 THEN 'medium'
		        WHEN daynum > 4 AND daynum <= 6 THEN 'long'
		        WHEN daynum > 6 THEN 'very long'
				ELSE 'NULL'
			END
				INTO status;
		RETURN status;
	END
$$;


SELECT ABS("Order Date"::DATE - "Ship Date"::DATE) FROM  public."superStore"

SELECT 
	Date_Status(ABS("Order Date"::DATE - "Ship Date"::DATE)) As date_status,
	ROUND(AVG("Profit"::"numeric"),2) As "Avg Profit",
	ROUND(SUM("Profit"::"numeric"),2) As "SUM Profit"
	FROM public."superStore"
	GROUP BY date_status
	;