-- Which states generate the highest sales?
SELECT
	"State",
	SUM("Sales"::"numeric") As sales
	FROM public."superStore"
	GROUP BY "State"
	ORDER BY sales DESC