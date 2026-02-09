-- Top 5 genres by average IMDb rating (min 10 movies)
SELECT 
	genre,
	ROUND(AVG(imdb_rating),2) As Rating
	FROM public.imdb_top_1000
	GROUP BY genre
	HAVING count(*) >= 10
	ORDER BY Rating DESC
	LIMIT 5
	;