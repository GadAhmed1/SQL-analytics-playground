-- What percentage of orders were shipped late (after required date) ?
CREATE OR REPLACE FUNCTION Number_of_Late_Shipped()
RETURNS INTEGER
LANGUAGE Plpgsql
As $$
	DECLARE
		Num
		INTEGER;
	BEGIN
		SELECT
		COUNT(*)
		INTO Num
		FROM public.orders
		WHERE shipped_date > required_date;

		RETURN Num;
	END;
$$;

SELECT
	ROUND((Number_of_Late_Shipped() * 100.0) / count(*),2) As Percentage
	FROM public.orders