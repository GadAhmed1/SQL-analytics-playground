-- Payment Method Preference
SELECT
	"Payment Method",
	SUM("Booking Value"::"numeric") As Revenue 
	FROM public.ncr_ride_bookings
	WHERE "Payment Method" <> 'null'
	GROUP BY "Payment Method"
	ORDER BY SUM("Booking Value"::"numeric") DESC