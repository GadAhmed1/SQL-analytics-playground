-- Is there a relationship between discount level and profit ?
CREATE OR REPLACE FUNCTION discount_status(p_discount numeric)
RETURNS varchar
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN CASE
		WHEN p_discount = 0 THEN 'No discount'
		WHEN p_discount > 0 AND p_discount <= 0.20 THEN 'low'
		WHEN p_discount > 0.20 AND p_discount <= 0.40 THEN 'medium'
		WHEN p_discount > 0.40 AND p_discount <= 0.60 THEN 'high'
		WHEN p_discount > 0.60 AND p_discount <= 0.80 THEN 'very high'
    END;
END;
$$;

SELECT 
	disCount_Status("Discount"::"numeric") As "Discount Level",
	ROUND(SUM("Profit"::"numeric"),2) As "Sum Profit",
	ROUND(AVG("Profit"::"numeric"),2) As "AVG Profit"
	FROM public."superStore"
	GROUP BY disCount_Status("Discount"::"numeric")
