-- What is the sales and profit distribution by region ?

CREATE OR REPLACE FUNCTION total_column(column_name varchar)
RETURNS numeric
LANGUAGE plpgsql
AS $$
DECLARE
    total_sum numeric;
BEGIN
    EXECUTE format(
        'SELECT SUM(%I::numeric) FROM public."superStore"',
        column_name
    )
    INTO total_sum;

    RETURN total_sum;
END;
$$;


SELECT total_column('Profit');

SELECT
	"Region",
	CONCAT(ROUND(SUM("Sales"::"numeric"),2),'$', '   |   ',ROUND((SUM("Sales"::"numeric") * 100.0)/ total_column('Sales'),2),'%') As Sales,
	CONCAT(ROUND(SUM("Profit"::"numeric"),2),'$', '   |   ',ROUND((SUM("Profit"::"numeric") * 100.0)/ total_column('Profit'),2),'%') As Profit
	FROM public."superStore"
	GROUP BY "Region"