-- Movies with IMDb rating above average and No_of_Votes above average
CREATE OR REPLACE FUNCTION AVG_imdb_Rating()
RETURNS float
LANGUAGE plpgsql
AS $$
	DECLARE
		Total_Avg
		float;
	BEGIN
		SELECT
		ROUND(AVG(imdb_rating),2)
		INTO Total_Avg
		FROM public.imdb_top_1000;
	RETURN Total_Avg;
	END;
$$;

CREATE OR REPLACE FUNCTION AVG_None_Votes()
RETURNS float
LANGUAGE plpgsql
AS $$
	DECLARE
		Total_AVG
		float;
	BEGIN
		SELECT 
			ROUND(AVG(imdb_rating::integer),2)
			INTO Total_AVG
			FROM public.imdb_top_1000; 
		RETURN Total_AVG;
	END;
$$;

SELECT AVG_imdb_Rating() , AVG_None_Votes();

SELECT
	series_title
	-- ,
	-- imdb_rating,
	-- imdb_rating::integer
	FROM public.imdb_top_1000
	WHERE imdb_rating > AVG_imdb_Rating() AND imdb_rating::integer > AVG_None_Votes()
	;