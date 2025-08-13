-- List all the data in dbo.customers table in Northwind
SELECT * FROM dbo.Customers;

-- Get the details of customer name and city
SELECT ContactName, City FROM dbo.Customers;

-- Get the customers who are from London
SELECT ContactName, City FROM dbo.Customers WHERE City = 'London';
SELECT ContactName, City FROM dbo.Customers WHERE City = 'Berlin';

-- Get details of all the poducts
SELECT * FROM dbo.Products;

-- Get the Products which have unitprice above 10
SELECT * FROM dbo.Products WHERE UnitPrice > 10;

-- Get all the Products which are not discontinued
-- 0 stands False 1 stands for True
SELECT * FROM dbo.Products WHERE Discontinued = 1;
SELECT * FROM dbo.Products WHERE Discontinued != 0;
SELECT * FROM dbo.Products WHERE Discontinued <> 0;

-- Get all the customers from UK
SELECT * FROM dbo.Customers WHERE Country = 'UK';

-- Get the Customers from City Cowes
SELECT * FROM dbo.Customers WHERE city = 'Cowes';

-- Get the customers who have a fax number and are from London
SELECT * FROM dbo.Customers WHERE City = 'London' AND Fax IS NOT NULL;

-- Get the customers From Germany who do not have a fax number
SELECT * FROM dbo.Customers WHERE Country = 'Germany' AND Fax is NULL;

-- Get all custmers excluding customers from London
SELECT * FROM dbo.Customers WHERE City != 'London';
SELECT * FROM dbo.Customers WHERE Country = 'UK' AND City != 'London';

-- Get all Customers from Germay, Brazil, Uk but not from London or aachen
SELECT * FROM dbo.Customers WHERE Country IN ( 'Germany', 'Brazil', 'UK' ) AND City NOT IN ('London', 'aachen');



