SELECT OrderId, SUM(Quantity*UnitPrice) FROM [Order Details] GROUP BY OrderID;

SELECT OrderId, SUM(Quantity*UnitPrice) AS TotalPrice FROM [Order Details] GROUP BY OrderID HAVING SUM(Quantity*UnitPrice) > 5000 ;

SELECT * FROM dbo.[Sales by Category];

SELECT * FROM dbo.Products;

SELECT ProductName, CategoryID, UnitPrice,
	ROW_NUMBER() OVER(PARTITION BY CategoryID ORDER BY UnitPrice ) FROM dbo.Products;

SELECT ProductName, CategoryID, UnitPrice,
	RANK() OVER(PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS Rank_UnitPrice FROM dbo.Products;

SELECT ProductName, CategoryID, UnitPrice,
	DENSE_RANK() OVER(PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS Rank_UnitPrice FROM dbo.Products;

SELECT t1.ProductName, t1.CategoryID, t1.UnitPrice, t1.Rank_unitPrice FROM
(SELECT ProductName, CategoryID, UnitPrice,
	RANK() OVER(PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS Rank_UnitPrice FROM dbo.Products) t1
WHERE 
	t1.Rank_UnitPrice = 5;

SELECT t1.ProductName, t1.CategoryID, t1.UnitPrice, t1.Rank_unitPrice FROM
(SELECT ProductName, CategoryID, UnitPrice,
	DENSE_RANK() OVER(PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS Rank_UnitPrice FROM dbo.Products) t1
WHERE 
	t1.Rank_UnitPrice = 5;

-- 2nd most expensive product by each category
SELECT t1.ProductName, t1.CategoryID, t1.UnitPrice FROM 
(SELECT ProductName, CategoryID, UnitPrice,
	RANK() OVER(PARTITION BY CategoryID ORDER BY UnitPrice DESC ) AS Rank_UnitPrice FROM dbo.Products
) t1 WHERE t1.Rank_UnitPrice = 2;


SELECT * FROM Customers;
SELECT * FROM Suppliers;

SELECT ContactName, City, 'Customers'AS TableName FROM Customers
UNION
SELECT ContactName, City, 'Suppliers'AS TableName FROM Suppliers;


EXEC dbo.CustOrderHist 'ALFKI';