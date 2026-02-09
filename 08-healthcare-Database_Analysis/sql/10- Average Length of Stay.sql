-- Average Length of Stay
SELECT
	ROUND(AVG(discharge_date - date_of_admission),2) As Stay_Days 
	FROM public.healthcare