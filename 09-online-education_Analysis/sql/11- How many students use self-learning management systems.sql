-- How many students use self-learning management systems 
SELECT
	COUNT("Self Lms")
	FROM public.online_education
	WHERE "Self Lms" = 'Yes'