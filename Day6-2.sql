

-- get the order categories whose profit is greater than the average profit 
-- What is the average profit
SELECT AVG(profit) FROM dbo.Orders$;

SELECT [Order ID], Category, profit FROM Orders$ WHERE profit > (SELECT AVG(profit) FROM dbo.Orders$);

SELECT * FROM dbo.Returns$;

SELECT o.[Order ID], o.[Customer Name], r.[returned] 
FROM dbo.Orders$ AS o 
INNER JOIN dbo.Returns$ AS r
ON o.[Order ID] = r.[Order ID];


SELECT TOP 5 o.[Customer Name], COUNT(o.[Order ID]) AS 'Number of Returns' 
FROM dbo.Orders$ AS o 
INNER JOIN dbo.Returns$ AS r
ON o.[Order ID] = r.[Order ID]
GROUP BY o.[Customer Name]
ORDER BY 'Number of Returns' DESC;



SELECT AVG(t1.[Number of Returns]) FROM 
(SELECT  o.[Customer Name], COUNT(o.[Order ID]) AS 'Number of Returns' 
FROM dbo.Orders$ AS o 
INNER JOIN dbo.Returns$ AS r
ON o.[Order ID] = r.[Order ID]
GROUP BY o.[Customer Name]
) t1

SELECT * FROM dbo.Orders$;
SELECT [Order Date], SUM(Sales) AS RunnngTotalSales FROM Orders$ GROUP BY [Order Date]
ORDER BY [Order Date];


SELECT [order Date], Sales FROM dbo.Orders$ WHERE [Order Date] = '2014-01-03 00:00:00.000'

SELECT 
	[Order Date],
	Sales,
	SUM(Sales) OVER (ORDER BY [Order Date] ) AS RunningTotalSales
FROM
	dbo.Orders$;

-- Running total sales with customer names
SELECT 
	[Customer Name],
	[Order Date],
	Sales,
	SUM(Sales) OVER (Partition By [Customer Name] ORDER BY [Order Date] ) AS RunningTotalSales
FROM
	dbo.Orders$;

SELECT * FROM dbo.Orders$;
SELECT 
	Category
	[Sub-Category],
	Sales,
	SUM(Sales) OVER (Partition By [Category] ORDER BY Category ) AS TotalSales
FROM
	dbo.Orders$;


