-- Top 5 directors by number of movies
SELECT
	director,
	COUNT(series_title)
	FROM public.imdb_top_1000
	GROUP BY director 
	ORDER BY COUNT(series_title) DESC
	LIMIT 5
	;