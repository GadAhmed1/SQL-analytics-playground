-- Revenue by Vehicle Type
SELECT
	"Vehicle Type",
	SUM("Booking Value"::INTEGER) As "Revenue",
	ROUND(AVG("Booking Value"::INTEGER),2) As "Avg Revenue"
	FROM public.ncr_ride_bookings
	WHERE "Booking Value" <> 'null'
	GROUP BY "Vehicle Type"