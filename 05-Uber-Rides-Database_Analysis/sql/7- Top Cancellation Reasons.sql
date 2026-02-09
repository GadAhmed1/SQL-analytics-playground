-- Top Cancellation Reasons

SELECT
	"Reason for cancelling by Customer" As Reason,
	COUNT(*) As Total
	FROM public.ncr_ride_bookings
	GROUP BY "Reason for cancelling by Customer"
	HAVING "Reason for cancelling by Customer" <> 'null'
	ORDER BY COUNT(*) DESC
	LIMIT 5
	;
	

SELECT
	"Driver Cancellation Reason" As Reason,
	COUNT(*) As Total
	FROM public.ncr_ride_bookings
	GROUP BY "Driver Cancellation Reason"
	HAVING "Driver Cancellation Reason" <> 'null'
	ORDER BY COUNT(*) DESC
	LIMIT 5
	;

CREATE OR REPLACE FUNCTION GetTopCommanReasons(ColumnName VARCHAR)
RETURNS TABLE (reason VARCHAR, total BIGINT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    EXECUTE format('
        SELECT
            %I AS reason,
            COUNT(*) AS total
        FROM public.ncr_ride_bookings
        GROUP BY %I
        HAVING %I <> ''null''
        ORDER BY COUNT(*) DESC
		LIMIT 5
    ', ColumnName, ColumnName, ColumnName);

END;
$$;

SELECT * FROM GetTopCommanReasons('Reason for cancelling by Customer');

SELECT * FROM GetTopCommanReasons('Driver Cancellation Reason');