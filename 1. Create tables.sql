/*Sweet Symphony Desserts Shop is a fictional family owned business known for their variety of desserts and confectionaries. 
The database contains 5 tables that manages their products, product categories, employee details, customers and order details.
The product table shows products sold in first 6 months of opening, the order details shows information for two months only to keep the code simple and clean.

In this section, I've used Data Definition Language(DDL) to Create, Alter and Drop tables, rows and columns, and defined Primary Keys for each tables.
*/

-- setting the dateformat as day-month-year
SET DATEFORMAT DMY

-- Creating Categories table 
CREATE TABLE [dbo].[Categories] (
[CategoryID] INT NOT NULL,
[CategoryName] CHAR(60) NOT NULL,
PRIMARY KEY(CategoryID)
)

-- Creating Products table 
CREATE TABLE [dbo].[Products](
[ProductId] INT NOT NULL,
[ProductName] VARCHAR(30) NOT NULL,
[CategoryName] VARCHAR(30)  NOT NULL,
[QuantityPerUnit] SMALLINT NULL,
[UnitPrice] MONEY NULL,
PRIMARY KEY(ProductId)
)
  
-- Renamed the QuantityPerUnit column to QuantitySold as it is more appropriate.
  
-- Creating a status table
CREATE TABLE [dbo].[Status](
[OrderID] INT NOT NULL,
[OrderDate] DATETIME NOT NULL,
[ShippedDate] DATETIME NOT NULL,
[Status of Shipment] CHAR(5) NULL
)

-- Since the tables doesn't contain large data points, the Status table is not required now. So I'll delete this table for time being.
DROP TABLE Status

-- Creating EmployeeDetails Table
CREATE TABLE [dbo].[EmployeeDetails](
[EmployeeID] VARCHAR(6) NOT NULL,
[FirstName] VARCHAR(20) NOT NULL,
[LastName] VARCHAR(20) NOT NULL,
[Address] VARCHAR(30) NULL,
[City] VARCHAR(15) NULL,
[Country] VARCHAR(15) NULL,
[Phone] VARCHAR(10) NULL,
PRIMARY KEY (EmployeeID)
)
  
-- Changing the length of characters for Phone column
ALTER TABLE EmployeeDetails
ALTER COLUMN [Phone] VARCHAR(15) 

-- Creating Customers table
CREATE TABLE [dbo].[Customers](
[CustomerID] NCHAR(5) NOT NULL,
[ContactName] VARCHAR(30) NULL,
[Address] VARCHAR(60) NULL,
[City] VARCHAR(15) NULL,
[PostalCode] VARCHAR(6) NULL,
[Country] VARCHAR(15) NULL,
[Phone] VARCHAR(15) NULL,
PRIMARY KEY(CustomerID)
)
  
-- Creating Orders table
CREATE TABLE [dbo].[Orders] (
[OrderID] INT NOT NULL,
[CustomerID] NCHAR(5) NOT NULL,
[ProductID] INT NOT NULL,
[OrderDate] DATE NULL,
[ShippedDate] DATE NULL,
[ShipAddress] VARCHAR(60) NULL,
[ShipCity] VARCHAR(15) NULL,
[ShipPostalCode] VARCHAR(15) NULL,
PRIMARY KEY (OrderId)
)
  
-- Changing the OrderDate and ShippedDate datatype from DATE to DATETIME2
ALTER TABLE Orders
ALTER COLUMN [OrderDate] DATETIME2

ALTER TABLE Orders
ALTER COLUMN [ShippedDate]  DATETIME2
  
-- Adding a Foreign Key (CustomerID) to the Orders table
ALTER TABLE Orders
ADD CONSTRAINT fk1 FOREIGN KEY(CustomerID) REFERENCES
Customers(CustomerID) 
