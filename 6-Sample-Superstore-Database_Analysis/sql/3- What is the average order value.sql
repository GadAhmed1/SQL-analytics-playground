-- What is the average order value 
SELECT
	ROUND(AVG("Sales"::"numeric"),2)
	FROM public."superStore"