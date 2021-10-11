CREATE PROCEDURE [dbo].[usp_SalePivotMonthSumAmount]
AS
	SELECT	January,
			February,
			March,
			April,
			May,
			June,
			July,
			August,
			September,
			October,
			November,
			December
	FROM 
	(
		SELECT [Month], [Amount]
		FROM [dbo].[Sale]
	) AS S
	PIVOT
	(
		SUM(Amount)
		FOR Month IN ("January",
					"February",
					"March",
					"April",
					"May",
					"June",
					"July",
					"August",
					"September",
					"October",
					"November",
					"December")
	) AS P
RETURN 0
