-- Most profitable genre (highest average gross)
SELECT
	genre,
	ROUND(AVG(REPLACE(gross,',','')::INTEGER),2) As profit
	FROM public.imdb_top_1000
	GROUP BY genre
	HAVING ROUND(AVG(REPLACE(gross,',','')::INTEGER),2) IS NOT NULL
	ORDER BY profit DESC
	LIMIT 5;