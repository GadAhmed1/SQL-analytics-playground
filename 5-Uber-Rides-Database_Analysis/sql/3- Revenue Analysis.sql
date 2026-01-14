-- Revenue Analysis

SELECT
	SUM("Booking Value"::INTEGER) As "total booking value",
	ROUND(AVG("Booking Value"::INTEGER),2) As "average booking"
	FROM public.ncr_ride_bookings
	WHERE "Booking Value" <> 'null';
