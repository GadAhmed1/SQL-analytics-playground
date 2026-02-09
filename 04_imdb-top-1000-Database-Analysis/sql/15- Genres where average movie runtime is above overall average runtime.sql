-- Genres where average movie runtime is above overall average runtime
CREATE OR REPLACE FUNCTION Avg_Time()
RETURNS float
LANGUAGE plpgsql
AS $$
	DECLARE
		Total_AVG
		float;
	BEGIN
		SELECT
			ROUND(AVG(REPLACE(runtime,'min','')::INTEGER),2)
			INTO Total_AVG
		FROM public.imdb_top_1000;
		RETURN Total_AVG;
	END;
$$;


SELECT
	series_title,
	genre,
	REPLACE(runtime,'min','')::INTEGER
	FROM public.imdb_top_1000
	WHERE REPLACE(runtime,'min','')::INTEGER > Avg_Time()
	ORDER BY REPLACE(runtime,'min','')::INTEGER DESC
	;