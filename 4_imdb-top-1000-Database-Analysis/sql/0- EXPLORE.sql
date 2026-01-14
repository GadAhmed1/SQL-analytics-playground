-- EXPLORE
SELECT * FROM public.imdb_top_1000;
SELECT SUBSTRING(runtime,0,CHAR_LENGTH(runtime) - 3)::INTEGER  FROM public.imdb_top_1000;
SELECT REPLACE(gross,',','')::INteger FROM public.imdb_top_1000;
SELECT DISTINCT released_year FROM public.imdb_top_1000 ORDER BY released_year DESC;
SELECT REPLACE(gross,',','')::INTEGER FROM public.imdb_top_1000;
SELECT ROUND(AVG(imdb_rating),2) FROM public.imdb_top_1000; 
SELECT ROUND(AVG(imdb_rating::integer),2) FROM public.imdb_top_1000; 
SELECT REPLACE(runtime,'min','')::INTEGER FROM public.imdb_top_1000;