-- Average runtime per genre
SELECT
	genre,
	ROUND(AVG(SUBSTRING(runtime,0,CHAR_LENGTH(runtime) - 3)::INTEGER),2)
	FROM public.imdb_top_1000
	GROUP BY genre
	;