-- Average IMDb rating per director
SELECT
	director,
	ROUND(AVG(imdb_rating),2)
	FROM public.imdb_top_1000
	GROUP BY director
	ORDER BY ROUND(AVG(imdb_rating),2) DESC
	;