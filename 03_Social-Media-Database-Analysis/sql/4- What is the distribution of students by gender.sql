-- What is the distribution of students by gender?
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
	"Gender",
	ROUND((COUNT("Student_ID") * 100.0) / GetTotalNumOfStudent(),2) As "Percentage"
	FROM public."Students Social Media Addiction"
	GROUP BY "Gender"
	ORDER BY COUNT("Student_ID") DESC;