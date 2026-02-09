-- Test Results Summary
SELECT
	test_results,
	COUNT(*),
	ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM public.healthcare),2) As Percentage
	FROM public.healthcare
	GROUP BY test_results;
	
-- ############################

SELECT COUNT(test_results) FROM public.healthcare;