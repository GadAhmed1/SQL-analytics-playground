-- Top 5 movies with rating above genre average
CREATE OR REPLACE FUNCTION Get_TheGenreAvg(genreType TEXT)
RETURNS float
LANGUAGE plpgsql
AS $$
	DECLARE
		Avg_Genre
		float;
	BEGIN
		SELECT
			ROUND(AVG(imdb_rating),2)
			INTO Avg_Genre
		FROM public.imdb_top_1000
		WHERE genre = genreType;
		RETURN Avg_Genre;
	END;
$$;

SELECT 
	series_title,
	genre,
	imdb_rating
	FROM public.imdb_top_1000
	WHERE imdb_rating > Get_TheGenreAvg(genre)
	ORDER BY imdb_rating DESC
	LIMIT 5
	;
	
