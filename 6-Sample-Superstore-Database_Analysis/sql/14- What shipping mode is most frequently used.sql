-- What shipping mode is most frequently used ?
SELECT
	"Ship Mode",
	COUNT(*) As Num
	FROM public."superStore"
	GROUP BY "Ship Mode"
	ORDER BY Num DESC;