-- Get the Customers who have returned the orders ( INNER JOIN)
SELECT o.[Order ID], o.[Customer Name], r.Returned FROM Orders$ o 
INNER JOIN Returns$ r ON o.[Order ID] = r.[Order ID]

-- Get the Customers who have returned & also not returned with details(OrderID, OrderDate, Customer Name) of orders returned(Outer Join)
-- The orders which are not returned will have NULL
SELECT o.[Order ID], o.[Customer Name],o.[Order Date], r.Returned FROM Orders$ o 
LEFT JOIN Returns$ r ON o.[Order ID] = r.[Order ID]
ORDER BY r.Returned
-- Using Right Join
SELECT o.[Order ID], o.[Customer Name],o.[Order Date], r.Returned FROM Returns$ r 
RIGHT JOIN Orders$ o ON r.[Order ID] = o.[Order ID]
ORDER BY r.Returned