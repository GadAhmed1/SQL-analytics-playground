-- Average IMDb rating of all movies
SELECT
	ROUND(AVG(imdb_rating),2)
	FROM public.imdb_top_1000;