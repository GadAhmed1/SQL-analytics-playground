-- No Driver Found Analysis
SELECT
	"Booking Status",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.ncr_ride_bookings),2)
	FROM public.ncr_ride_bookings
	GROUP BY "Booking Status"
	HAVING "Booking Status" = 'No Driver Found'