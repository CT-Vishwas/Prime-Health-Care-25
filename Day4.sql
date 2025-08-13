-- DataLength: Storage size in Bytes
SELECT ProductName, Len(ProductName) AS CharacterCount, DATALENGTH(ProductName) AS ByteCount FROM dbo.Products
ORDER BY CharacterCount;

-- TRIM & RTRIM
-- SUBSTRING
SELECT * FROM dbo.Customers;
SELECT ContactName, SUBSTRING(ContactName, 1, CHARINDEX(' ', ContactName)-1) AS FirstName FROM dbo.Customers;

-- Extract Last Name From Full Name
SELECT ContactName, SUBSTRING(ContactName, CHARINDEX(' ', ContactName)+1, LEN(ContactName)) AS LastName FROM dbo.Customers;

SELECT GETDATE() AS Today;
SELECT ShippedDate FROM dbo.Orders WHERE ShippedDate IS NOT NULL;
SELECT OrderID, ShippedDate FROM dbo.Orders WHERE ShippedDate IS NOT NULL;
SELECT OrderID, YEAR(ShippedDate) FROM dbo.Orders WHERE ShippedDate IS NOT NULL;
SELECT OrderID, MONTH(ShippedDate) FROM dbo.Orders WHERE ShippedDate IS NOT NULL;
SELECT OrderID, DAY(ShippedDate) FROM dbo.Orders WHERE ShippedDate IS NOT NULL;

SELECT ShippedDate, GETDATE() AS Today, DATEDIFF(year,ShippedDate, GETDATE()) FROM dbo.Orders WHERE ShippedDate IS NOT NULL;

SELECT ShippedDate, FORMAT(ShippedDate, 'dd-MM-yyyy') FROM dbo.Orders Where ShippedDate IS NOT NULL;

-- Get the orders and the customer names who have placed the order
SELECT OrderID, customers.CustomerID, ContactName FROM Orders
INNER JOIN 
Customers 
ON Orders.CustomerID = customers.CustomerID;