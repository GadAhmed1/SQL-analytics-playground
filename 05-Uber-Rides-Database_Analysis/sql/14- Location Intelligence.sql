-- Location Intelligence
SELECT
	"Pickup Location",
	SUM("Booking Value"::"numeric") As "booking value."
	FROM public.ncr_ride_bookings
	WHERE "Booking Value" <> 'null'
	GROUP BY "Pickup Location"
	ORDER BY SUM("Booking Value"::"numeric") DESC
	LIMIT 5;