-- Top 5 highest rated movies with their year
SELECT
	series_title,
	imdb_rating,
	released_year
	FROM public.imdb_top_1000 
	ORDER BY imdb_rating DESC
	LIMIT 5;