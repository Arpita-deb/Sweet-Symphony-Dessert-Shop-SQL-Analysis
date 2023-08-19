/* 
In this section of the code, I've used Data Querying Language (DQL) to get answers of some basic questions from this dataset.
I've used Aggregating functions (SUM, COUNT, MAX, MIN and AVG) and logical operators (AND, OR, BETWEEN, IN,NOT IN, DISTINCT, LIKE) for basic calculations,
Filtered rows with the help of WHERE, GROUP BY, ORDER BY, IN, BETWEEN, TOP 5 clauses and Wildcard functions,
Joined strings together with CONCAT FUNCTION, and used AS clause to create aliases, used JOINS to get informations from two tables 
and used DATEADD and DATEDIFF for calculations with date.
*/

-- Select columns with ProductID 6,7 and 21
SELECT * 
FROM [dbo].[Products]
WHERE [ProductId] IN (6, 7, 21)

-- Select columns except ProductID with 1,5,10,11 and 21
SELECT [ProductId], [ProductName]
FROM [dbo].[Products]
WHERE [ProductId] NOT IN (1, 5, 10, 11, 21)

-- How many products did they sell in the first 6 months?
SELECT SUM(QuantitySold)
FROM Products

-- Which products cost between $1 and $10?
SELECT [ProductName],
       [UnitPrice]
FROM Products
WHERE UnitPrice BETWEEN 1 AND 10
ORDER BY UnitPrice 

-- How many distinct categories of products are there?
SELECT DISTINCT CategoryName
FROM Products

-- What is the average unit price of Sweet Symphony desserts?
SELECT ROUND(AVG(UnitPrice),2)
FROM Products

-- Which dessert costs highest?
SELECT MAX(UnitPrice)
FROM Products
 
SELECT ProductName
FROM Products
WHERE [UnitPrice]=17.20

-- Which dessert costs lowest?
SELECT MIN(UnitPrice)
FROM Products
 
SELECT ProductName
FROM Products
WHERE [UnitPrice]=2.15

-- Create a new column Total_price for each product
SELECT [ProductName],
       [QuantitySold],
       [UnitPrice],
       [UnitPrice]*[QuantitySold] AS Total_price
FROM Products
ORDER BY Total_price DESC
 
-- What is the total revenue by the end of first 6 months?
SELECT SUM([UnitPrice]*[QuantitySold]) AS Total_revenue
FROM Products

-- What are the top 5 most profitable products?
SELECT TOP 5 [ProductName],
       [UnitPrice]*[QuantitySold] AS Total_Price
FROM Products
ORDER BY Total_Price DESC

-- What are the least profitable products?
SELECT TOP 5 [ProductName],
       [UnitPrice]*[QuantitySold] AS Total_Price
FROM Products
ORDER BY Total_Price

-- How many categories of desserts do Sweet Symphony sell? 
SELECT COUNT([CategoryID])
FROM Categories

-- Show the number of products sold and Total price for each category in descending order
SELECT [CategoryName],
       SUM(QuantitySold) AS Total_quantity,
       SUM([UnitPrice]*[QuantitySold]) AS Total_Price
FROM Products
GROUP BY CategoryName
ORDER BY Total_Price DESC

-- Show the employees working at Sweet Symphony
SELECT * FROM EmployeeDetails

-- Show the employees working at Sweet Symphony from Seattle
SELECT * FROM EmployeeDetails WHERE City='Seattle'

-- Show the employees whose lastname consists of 'er'
SELECT * FROM EmployeeDetails WHERE [LastName] LIKE '%er%'

-- Select the rows of all employees that have ‘a’ as the fifth letter in their names
SELECT * FROM EmployeeDetails WHERE [FirstName] LIKE '____a'

-- Orders from Portland in the month of July
SELECT * FROM Orders WHERE (OrderDate >= '2023/07/01') AND [ShipCity]='Portland'

-- Show the full name of the employees 
SELECT [EmployeeID], 
        CONCAT([FirstName], ' ',[LastName]) AS EmployeeName,
        [Address],
	[City],
	[Country]
FROM EmployeeDetails

-- Join Customers and Orders table 
-- Show the customer name, phone number,OrderDate, ShipAddress, ShipCity and ShipPostalCode
SELECT c.[ContactName],
       o.[OrderDate],
       o.[ShipAddress],
       o.[ShipCity],
       o.[ShipPostalCode],
       c.[Phone]
FROM [dbo].[Customers] c JOIN [dbo].[Orders] o
ON c.[CustomerID]=o.[CustomerID]
ORDER BY OrderDate

-- Show the number of orders for each customer
SELECT CustomerID, COUNT(OrderID) AS Number_of_Orders
FROM Orders
GROUP BY CustomerID

-- Left join the product and orders tables
-- Show the product name, category, unitprice, order Id and quantity ordered
SELECT p.ProductName,
       p.UnitPrice,
       p.CategoryName, 
       o.OrderID, 
       o.QuantityOrdered,
       o.OrderDate
FROM [dbo].[Products] p LEFT JOIN [dbo].[Orders] o
ON p.[ProductID]=o.[ProductID]
ORDER BY OrderDate
	 
-- The customer from Eugene, Oregon ordered some desserts from Sweet Symphony which they want a week later.
-- Update the shippeddate to a week after and add a required date column
UPDATE Orders
SET [ShippedDate] ='20230619'
WHERE [OrderID] IN (1,2,4,5)

SELECT [OrderID],
       [OrderDate],
       [ShippedDate],
       [ShipAddress],
       [ShipCity],
       [ShipPostalCode],
       DATEADD (ww, 1,[OrderDate] ) AS 'Requirred Date'
FROM Orders WHERE CustomerID='HS001' AND OrderID IN (1,2,4,5)
	
-- Calculate the difference of days between OrderDate and ShippedDate
SELECT [OrderID],
       [OrderDate],
       [ShippedDate],
       DATEDIFF (dd, [OrderDate], [ShippedDate]) AS 'Difference of days'
FROM [dbo].[Orders]
