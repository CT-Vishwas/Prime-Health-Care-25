--Get the list of products , orders and order date to see which products are ordered and which products are not ordered
SELECT  p.ProductID, p.ProductName, od.OrderID FROM Products AS p
LEFT JOIN [Order Details] AS od ON p.ProductID = od.ProductID
ORDER BY p.ProductID;

-- count of unique products
SELECT COUNT(DISTINCT productID) FROM Products;
-- Count of unique countries from where the customers are from
SELECT COUNT(DISTINCT Country) FROM Customers;
-- How many number of Orders
SELECT COUNT(OrderID) FROM Orders;
SELECT COUNT(*) FROM Orders;
SELECT COUNT(1) FROM Orders;
-- SELECT COUNT FROM Orders; 

-- Aggregate Functions with Group BY
SELECT * FROM [Order Details];
SELECT * FROM [Order Details] WHERE OrderID = 10248;
-- Get the total price of the order 10248
SELECT SUM(Quantity * UnitPrice) FROM [Order Details] WHERE OrderID = 10248;

SELECT OrderID, SUM(Quantity * UnitPrice) AS 'Total Price' FROM [Order Details] GROUP BY OrderID;

SELECT MIN(UnitPrice) FROM dbo.Products;













