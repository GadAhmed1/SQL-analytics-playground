-- Completed vs Incomplete Ratio

-- Ratio Between All Status

SELECT
	"Booking Status",
	COUNT(*),
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.ncr_ride_bookings),2)
	FROM public.ncr_ride_bookings
	GROUP BY "Booking Status"

-- Ratio Between Completed And Other's

CREATE OR REPLACE FUNCTION Count_Complate_Status()
RETURNS INTEGER
LANGUAGE Plpgsql
As $$
	DECLARE
		Count_Total
		INTEGER;
	BEGIN
		SELECT
	COUNT(*)
	INTO Count_Total
	FROM public.ncr_ride_bookings
	WHERE "Booking Status" = 'Completed';
	
	RETURN Count_Total;
	END;
$$;


SELECT
	'Completed' As "Booking Status",
	ROUND((Count_Complate_Status() * 100.0) / (SELECT COUNT(*) FROM public.ncr_ride_bookings),2) As "percentage",
	Count_Complate_Status() As "Total"
	UNION ALL
SELECT 
	'Non_Completed' As "Booking Status",
	100 - ROUND((Count_Complate_Status() * 100.0) / (SELECT COUNT(*) FROM public.ncr_ride_bookings),2) As "percentage",
	COUNT(*) - Count_Complate_Status() As "Total"
	FROM public.ncr_ride_bookings;
