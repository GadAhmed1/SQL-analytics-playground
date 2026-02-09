-- What percentage of students report that social media affects their academic performance?
CREATE OR REPLACE FUNCTION GetAffectsPerformance()
RETURNS float
LANGUAGE plpgsql
AS $$
	DECLARE
		TotalNum
		INTEGER;
	BEGIN
		SELECT 
			count("Affects_Academic_Performance")
		INTO
			TotalNum
		FROM public."Students Social Media Addiction"
		WHERE "Affects_Academic_Performance" = 'Yes';
		return TotalNum;
	END;
$$;
SELECT
	((GetAffectsPerformance() / count("Student_ID")) * 100) As "percentage of students"
	FROM public."Students Social Media Addiction";