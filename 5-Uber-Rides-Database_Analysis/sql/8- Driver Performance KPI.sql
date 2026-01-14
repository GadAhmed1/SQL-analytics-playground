-- Driver Performance KPI
SELECT
	"Vehicle Type",
	ROUND(AVG("Driver Ratings"::"numeric"),2) As "Avg_Rate"
	FROM public.ncr_ride_bookings
	WHERE "Driver Ratings" <> 'null'
	GROUP BY "Vehicle Type"
	ORDER BY "Avg_Rate" DESC
	