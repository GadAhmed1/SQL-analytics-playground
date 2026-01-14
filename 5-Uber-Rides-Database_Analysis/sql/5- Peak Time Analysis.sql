-- Peak Time Analysis
SELECT
	LEFT("Time",2)::INTEGER As Hours,
	COUNT(*) As "Rides Number"
	FROM public.ncr_ride_bookings
	GROUP BY Hours
	ORDER BY "Rides Number" DESC
	LIMIT 5
	;