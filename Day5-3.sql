SELECT * FROM SuperStore.dbo.Orders$;

-- get the number of orders placed by each customer
SELECT [Customer Name], Count([Order ID]) AS 'Number of Orders' FROM dbo.Orders$ GROUP BY [Customer Name]
HAVING [Customer Name] = 'Justin MacKendrick';
;