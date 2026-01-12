-- What percentage of students use social media more than 5 hours per day and sleep less than 6 hours per night ?

CREATE OR REPLACE FUNCTION GetStudintNUM()
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
	DECLARE
		total
		INTEGER;
	BEGIN
		SELECT 
			COUNT("Student_ID") 
			INTO total
			from public."Students Social Media Addiction";
		RETURN total;
	END;
$$;


SELECT 
	ROUND(COUNT(*) * 100.0 / GetStudintNUM(),2) As "Percentage"
	FROM public."Students Social Media Addiction"
	WHERE "Avg_Daily_Usage_Hours"::float > 5 AND "Sleep_Hours_Per_Night" < 6;

	