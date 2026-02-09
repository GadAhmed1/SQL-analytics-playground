-- Average gross revenue per released year
SELECT
	released_year,
	ROUND(AVG(REPLACE(gross,',','')::INTEGER),2)
	FROM public.imdb_top_1000
	GROUP BY released_year
	HAVING released_year <> 'PG' AND AVG(REPLACE(gross,',','')::INTEGER) IS NOT NULL
	ORDER BY released_year DESC
	;