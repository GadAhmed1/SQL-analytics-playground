-- Customers by Balance Range
CREATE OR REPLACE FUNCTION B_Range(balance "numeric")
RETURNS VARCHAR
LANGUAGE Plpgsql
As $$
	DECLARE
		Rang
		VARCHAR;
	BEGIN
		SELECT
		    CASE
		        WHEN balance <= 28696 THEN 'Low'
		        WHEN balance <= 65411 THEN 'Medium'
		        ELSE 'High'
		    END AS customer_type
		INTO Rang;
		RETURN Rang;
	END;
$$;

SELECT
	B_Range(balance::"numeric") As Range_B,
	COUNT(*)
	FROM public.banking
	GROUP BY Range_B
	;