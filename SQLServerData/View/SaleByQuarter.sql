CREATE VIEW [dbo].[SaleByQuarter]
	AS 
	SELECT 
		SUM(CASE 
				WHEN Month = 'January' OR Month = 'February' OR Month = 'March' THEN Amount
			END	
			) AS Quarter1,
		SUM(CASE 
				WHEN Month = 'April' OR Month = 'May' OR Month = 'June' THEN Amount
			END	
			) AS Quarter2,
		SUM(CASE 
				WHEN Month = 'July' OR Month = 'August' OR Month = 'September' THEN Amount
			END	
			) AS Quarter3,
		SUM(CASE 
				WHEN Month = 'October' OR Month = 'November' OR Month = 'December' THEN Amount
			END	
			) AS Quarter4
	FROM [dbo].[Sale]
