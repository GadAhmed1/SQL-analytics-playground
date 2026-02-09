-- Cancellation Rate by Customer

SELECT
	"Booking Status",
	COUNT(*) As "Total",
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.ncr_ride_bookings),2) AS "percentage"
	FROM public.ncr_ride_bookings
	GROUP BY "Booking Status"
	HAVING "Booking Status" = 'Cancelled by Customer' OR "Booking Status" = 'Cancelled by Driver'