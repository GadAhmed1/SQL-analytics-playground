-- Directors who have more than one movie rated above 8
SELECT
	director,
	COUNT(series_title)
	FROM public.imdb_top_1000
	WHERE imdb_rating > 8
	GROUP BY director
	HAVING COUNT(series_title) > 1 
	ORDER BY COUNT(series_title) DESC
	;