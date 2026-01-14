-- Number of movies per certificate
SELECT
    certificate,
	COUNT(*) As "Number Of Movies"
	FROM public.imdb_top_1000
	WHERE certificate IS NOT NULL
	GROUP BY certificate
	ORDER BY COUNT(*) DESC
	;
