-- Patients by Age Group
SELECT
    CASE
        WHEN age >= 13 AND age <= 18 THEN 'Teen'
        WHEN age > 18 AND age <= 37 THEN 'Adult'
        WHEN age > 37 AND age <= 56 THEN 'Average age'
        WHEN age > 56 AND age <= 89 THEN 'Old'
        ELSE 'Null'
    END AS age_category,
	COUNT(*) As Count,
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.healthcare),2) As Percentage
	FROM public.healthcare
	GROUP BY age_category
	;
