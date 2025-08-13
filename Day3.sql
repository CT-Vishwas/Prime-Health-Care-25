-- Sort the Products based on the Unit Price
SELECT * FROM dbo.Products ORDER BY UnitPrice;
SELECT * FROM dbo.Products ORDER BY UnitPrice DESC;

-- Sort Products based on Product Name
SELECT * FROM dbo.Products ORDER BY ProductName;
SELECT * FROM dbo.Products ORDER BY Discontinued DESC;

SELECT ProductName, UnitPrice FROM dbo.Products ORDER BY ProductName, UnitPrice DESC;

SELECT * FROM dbo.Customers WHERE Country = 'Mexico';
SELECT * FROM dbo.Customers ORDER BY Country;

SELECT * FROM dbo.Customers WHERE ContactTitle = 'Sales Agent' OR ContactTitle = 'Sales Representative'
ORDER BY ContactTitle, Country;

-- Top 5 most expensive products ( Limiting the number of results )
-- LIMIT 
-- SELECT ProductName, UnitPrice FROM dbo.Products ORDER BY UnitPrice DESC LIMIT 5; ( General SQL)
SELECT TOP 5 ProductName, UnitPrice FROM dbo.Products ORDER BY UnitPrice DESC;

-- Get the list of Countries From where the customers are hailing from
SELECT DISTINCT Country FROM dbo.Customers;

-- % : Any Character any number of characters
-- _ : Any Single Character
-- LIKE Keyword

-- H%
-- Hello, Hair, How, Howdy, Hang
-- Ho%
-- How, Howdy, Hoo
-- %ng
-- Thing, Giving, Sleeping
-- _a%
-- Tank, Bank, Ball, 
-- ____________a%
-- Names of Customers Starting With C
SELECT ContactName FROM dbo.Customers WHERE ContactName LIKE 'C%'
-- Names of Customers who have second character as a
SELECT ContactName FROM dbo.Customers WHERE ContactName LIKE '_a%'


-- Upper, lower, len, datalength, trim, rtrim, left, right, SUBSTRING,

-- Get the author names in upper case
-- SELECT UPPER(author_name) FROM dbo.Authors;

-- Get the distinct division in Upper Case

-- get length of each productName
SELECT ProductName, LEN(ProductName) FROM dbo.Products;
SELECT ProductName, LEN(ProductName) AS ProductNameLength FROM dbo.Products;
SELECT ProductName, LEN(ProductName) AS [Product Name Length] FROM dbo.Products;


-- 'STUDENT_VISHWAS'
--
SELECT ContactName FROM dbo.Customers;
-- CUST_MARIA ANDERS
-- CUST_ANA TRUJILLO
SELECT UPPER('CUST_'+ContactName) FROM dbo.Customers;

-- Assuming Password is combination of First 3 Characters of a name & last 4 digits of phone number
-- Step 1:
SELECT ContactName FROM dbo.Customers;
-- Step 2:
SELECT UPPER(LEFT(ContactName, 3)) AS FirstThreeChars FROM dbo.Customers;
-- Step 3:
SELECT UPPER(RIGHT(Phone, 4)) AS LastFourDigits FROM dbo.Customers;
-- Final Step:
SELECT ContactName, UPPER(LEFT(ContactName, 3)) AS FirstThreeChars, UPPER(RIGHT(Phone, 4)) AS LastFourDigits,
UPPER(LEFT(ContactName, 3)) + UPPER(RIGHT(Phone, 4)) AS Password FROM dbo.Customers;