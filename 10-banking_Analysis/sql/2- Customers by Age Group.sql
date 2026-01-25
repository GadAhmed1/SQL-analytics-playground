-- Customers by Age Group
SELECT MAX(age), MIN(age) FROM public.banking;

CREATE OR REPLACE FUNCTION Age_Group(age "numeric")
RETURNS VARCHAR
LANGUAGE Plpgsql
As $$
	DECLARE
		Status
		VARCHAR;
	BEGIN
		SELECT
			CASE
				WHEN age::"numeric" >= 18 AND age::"numeric" <= 30 Then 'adult'
				WHEN age::"numeric" > 30 AND age::"numeric" <= 50 Then 'Average age'
				WHEN age::"numeric" > 50 AND age::"numeric" <= 100 Then 'old'
				ELSE Null
			END
			INTO Status;
		RETURN Status; 
	END;
$$;


SELECT
	Age_Group(age::"numeric") As Status,
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.banking),2) As Percentage,
	COUNT(*) As Num
	FROM public.banking
	GROUP BY Status
	;