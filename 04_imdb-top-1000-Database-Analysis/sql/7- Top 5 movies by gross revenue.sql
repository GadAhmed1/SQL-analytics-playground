-- Top 5 movies by gross revenue
SELECT 
	series_title,
	REPLACE(gross,',','')::INteger As Gross
	FROM public.imdb_top_1000
	WHERE Gross IS NOT NULL
	ORDER BY Gross DESC
	LIMIT 5;