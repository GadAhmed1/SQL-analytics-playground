-- Incomplete Rides Root Cause
SELECT 
	"Incomplete Rides Reason",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.ncr_ride_bookings),2) As Percentage
	FROM public.ncr_ride_bookings
	WHERE "Incomplete Rides Reason" <> 'null'
	GROUP BY "Incomplete Rides Reason"