-- Customer Satisfaction KPI
SELECT
	"Payment Method",
	ROUND(AVG("Customer Rating"::"numeric"),2) As "Avg Rate"
	FROM public.ncr_ride_bookings
	WHERE "Payment Method" <> 'null'
	AND
	"Customer Rating" <> 'null'
	GROUP BY "Payment Method"
	ORDER BY "Avg Rate"