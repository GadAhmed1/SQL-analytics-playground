-- What is the most used social media platform?
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
	"Most_Used_Platform",
	ROUND((COUNT("Student_ID") * 100.0) / GetTotalNumOfStudent(),2)
	FROM public."Students Social Media Addiction"
	GROUP BY "Most_Used_Platform"
	ORDER BY COUNT("Student_ID") DESC
	LIMIT 1;