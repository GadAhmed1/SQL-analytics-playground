-- Which states generate the highest losses?
SELECT
	"State",
	ROUND(SUM("Profit"::"numeric"), 2) As Total
	FROM public."superStore"
	GROUP BY "State"
	HAVING SUM("Profit"::"numeric") < 0
	ORDER BY Total ASC;
