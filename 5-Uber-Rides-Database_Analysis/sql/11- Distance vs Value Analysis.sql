--  Distance vs Value Analysis

SELECT 
	CASE
		WHEN "Ride Distance"::"numeric" <= 5 THEN 'short'
		WHEN "Ride Distance"::"numeric" < 10 THEN 'medium' 
		WHEN "Ride Distance"::"numeric" >= 10 THEN 'long'
		ELSE 'NULL'
	END As type,
	ROUND(AVG("Booking Value"::"numeric"),2) As Price
	FROM public.ncr_ride_bookings
	WHERE "Ride Distance" <> 'null' AND  "Booking Value" <> 'null'
	GROUP BY type
	ORDER BY ROUND(AVG("Booking Value"::"numeric"),2) DESC 
	;


