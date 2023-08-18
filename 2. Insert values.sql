/*
In this section of the code, I've used Data Manipulation Language (DML) to Insert, Update, Select and Delete informations in the tables.
*/

-- setting the dateformat as day-month-year
SET DATEFORMAT DMY

-- Inserting Values in tables 
-- Categories table
INSERT INTO Categories 
VALUES (101, 'Cakes'),
(102, 'Confectionery and Candies'),
(103, 'Cookies'),
(104, 'Doughnuts'),
(105, 'Pastries')

INSERT INTO Categories 
VALUES (106, 'Icecream'),
(107, 'Pies'),
(108, 'Pudding')

-- Showing all the values from Categories table
SELECT * FROM Categories

-- Employees table
INSERT INTO EmployeeDetails
VALUES ('ANSS01', 'Andrew','Fuller','507-20th Ave.','Seattle','USA','(503) 555-8097'),
('JBSS02', 'Janet','Buchanan','4726- 11th Ave.','Seattle','USA',''),
('APSS03', 'Ajay','Patil','722 Moss Bay Blvd','Kirkland','USA','(307) 555-4680'),
('SRSS04', 'Steve','Ross','4110 Old Redmond Road','Redmond','USA','(503) 555-3612'),
('RWSS05', 'Robby','Wang','908 W. Capital Way','Tacoma','USA',''),
('LKSS06', 'Laura','King','722 DaVinci Blvd.','Kirkland','USA','(406) 555-5834'),
('MLSS07', 'Michael','Lering','305 - 14th Ave. S. Suite 3B','Seattle','USA','(206) 555-8257'),
('SSSS08', 'Surindhar','Singh','55 Grizzly Peak Rd.','Butte','USA','(206) 555-4112')

--Inserting details of a new employee in EmployeeDetails table
INSERT INTO EmployeeDetails
VALUES ('LXSS09', 'Li Xiao','Ting','','','USA','(502) 555-2298')

-- Deleting data from EmployeeDetails table of employee with ID=LXSS09
DELETE FROM EmployeeDetails
WHERE EmployeeID='LXSS09'

-- Showing all the values from EmployeeDetails table
SELECT * FROM EmployeeDetails

--Updating the phone number for EmployeeID JBSS02 and RWSS05
UPDATE EmployeeDetails SET [Phone]='(407) 555-8977'
WHERE EmployeeID='JBSS02'
UPDATE EmployeeDetails SET [Phone]='(504) 555-3267'
WHERE EmployeeID='RWSS05'


-- Product Table
-- The product table gives the details of products sold in first 6 months of opening the shop
INSERT INTO Products
VALUES ( 001, 'Swiss Roll', 'Cake', 100, 15.00),
( 002, 'Red Velvet Cake', 'Cake', 153, 10.70),
( 003, 'Cup cake', 'Cake', 267, 4.30),
( 004, 'Molten chocolate cake', 'Cake', 302, 5.00),
( 005, 'Peanut butter cookie', 'Cookies', 220, 3.25),
( 006, 'Oatmeal cookies', 'Cookies', 269, 3.25),
( 007, 'Chocolate chip cookies', 'Cookies', 400, 2.26),
( 008, 'Fudge', 'Confectionery and Candies', 146, 7.25),
( 009, 'Cheesecake', 'Cake', 53, 17.20),
( 010, 'Cinnamon Twist Donuts', 'Doughnuts', 277, 7.10),
( 011, 'Jelly Beans', 'Confectionery and Candies', 268, 5.00),
( 012, 'Sugar Donuts', 'Doughnuts', 150, 9.15),
( 013, 'Chocolate sprinkle', 'Doughnuts', 189, 6.30),
( 014, 'Long Johns', 'Pastry', 108, 4.60)

INSERT INTO Products
VALUES ( 015, 'Sundae', 'Ice cream', 100, 8.00),
( 016, 'Ice Cream Sandwich', 'Ice cream', 130, 5.50),
( 017, 'Banana Split', 'Ice cream',80, 4.56),
( 018, 'Ice cream cake', 'Ice cream', 70, 7.10),
( 019, 'Pistachio pudding', 'Pudding', 105, 10.20),
( 020, 'Jell-O', 'Pudding', 387, 4.00),
( 021, 'Rice Pud', 'Pudding', 220, 6.25),
( 022, 'Apple Pie', 'Pie', 307, 8.00),
( 023, 'Blueberry Pie', 'Pie', 176, 8.20),
( 024, 'Cream Pie', 'Pie', 113, 12.30),
( 025, 'Hucklenberry Pie', 'Pie', 120, 9.70),
( 026, 'Mississippi Mud Pie', 'Pie', 185, 10.65),
( 027, 'Pumpkin Pie', 'Pie', 50, 14.17),
( 028, 'Apple Crisp', 'Pie', 193, 10.65),
( 029, 'Peppermint stick', 'Confectionery and Candies', 260, 2.65),
( 030, 'Saltwater Taffy', 'Confectionery and Candies',316, 2.15)

-- The column name QuantityPerUnit in Product table is changed to QuantitySold
-- Showing all the values from Product table
SELECT * FROM Products

-- Showing products ordered by categories 
SELECT * FROM Products 
ORDER BY CategoryName

-- Customer table
INSERT INTO Customers
VALUES('HS001', 'Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA','(503) 555-7555'),
('YL002', 'Yoshi Latimer','12 Orchestra Terrace','Walla Walla','99362','USA','(509) 555-7969'),
('JS003', 'John Steel','89 Chiaroscuro Rd.','Portland','97219','USA','(503) 555-9573'),
('FW004', 'Fran Wilson', '2743 Bering St.','Anchorage','99508','USA','(907) 555-7584'),
('PW005', 'Paula Wilson', '2817 Milton Dr.','Albuquerque','87110','USA','(505) 555-5939'),
('AB006', 'Art Braunschweiger', '89 Jefferson Way Suite 2','Portland','97201','USA','(503) 555-3612'),
('LW007', 'Liu Wong', 'P.O. Box 555','Lander','82520','USA','(307) 555-4680')

-- Deleting details of customers from Anchorage, Albuquerque and Lander
DELETE FROM Customers WHERE CustomerID='FW004'
DELETE FROM Customers WHERE CustomerID='PW005'
DELETE FROM Customers WHERE CustomerID='LW007'

--Inserting informations about new customers in place of the deleted ones
INSERT INTO Customers 
VALUES ('AD004', 'Anne Dodsworth','4110 Old Redmond Rd.','Redmond','98052','USA','(206) 555-8122'),
('NP005', 'Nancy Peacock','722 Moss Bay Blvd.','Kirkland','98033','USA','(206) 555-3412'),
('AS007', 'Andrew Scott','908 W. Capital Way','Tacoma','98401','USA','(206) 555-9482'),
('JF008', 'James Francis','507 - 20th Ave.','Seattle','98122','USA','(206) 555-9857')


SELECT * FROM Customers

--Inserting a new column in Orders table called QuantityOrdered
ALTER TABLE Orders 
ADD QuantityOrdered INT 

--In order to keep the code simple and clean, I inserted orders only for first 2 months 
INSERT INTO Orders
VALUES (1,'HS001', '1', '20230612', '20230612', '2732 Baker Blvd.', 'Eugene','97403', 50),
(2,'HS001', '7', '20230612', '20230612', '2732 Baker Blvd.', 'Eugene','97403', 100),
(3,'JS003', '14', '20230612', '20230612', '2732 Baker Blvd.', 'Eugene','97403', 50),
(4,'HS001', '29', '20230612', '20230612', '2732 Baker Blvd.', 'Eugene','97403', 100),
(5,'HS001', '8', '20230612', '20230612', '2732 Baker Blvd.', 'Eugene','97403', 30),
(6,'LW007', '11', '20230612', '20230612', 'P.O. Box 555', 'Lander','82520', 12),
(7,'LW007', '12', '20230622', '20230622', 'P.O. Box 555', 'Lander','82520', 5),
(8,'LW007', '7', '20230622', '20230622', 'P.O. Box 555', 'Lander','82520', 10),
(9,'LW007', '18', '20230630', '20230630', 'P.O. Box 555', 'Lander','82520', 1),
(10,'LW007', '5', '20230710', '20230710', 'P.O. Box 555', 'Lander','82520', 6),
(11,'AB006', '15', '20230612', '20230612', '89 Jefferson Way Suite 2', 'Portland','97201', 20),
(12,'AB006', '7', '20230612', '20230612', '89 Jefferson Way Suite 2', 'Portland','97201', 50),
(13,'AB006', '4', '20230717', '20230717', '89 Jefferson Way Suite 2', 'Portland','97201', 15),
(14,'AB006', '19', '20230717', '20230717', '89 Jefferson Way Suite 2', 'Portland','97201', 11),
(15,'LW007', '19', '20230712', '20230712', 'P.O. Box 555', 'Lander','82520', 10),
(16,'YL002', '18', '20230614', '20230614', '12 Orchestra Terrace', 'Eugene','97403', 1),
(17,'AB006', '5', '20230614', '20230614', '89 Jefferson Way Suite 2', 'Portland','97201', 25),
(18,'AB006', '13', '20230614', '20230614', '89 Jefferson Way Suite 2', 'Portland','97201', 8),
(19,'YL002', '16', '20230618', '20230618', '12 Orchestra Terrace', 'Walla Walla','99362', 23),
(20,'HS001', '22', '20230620', '20230620', '2732 Baker Blvd.', 'Eugene','97403', 3),
(21,'YL002', '6', '20230623', '20230623', '12 Orchestra Terrace', 'Walla Walla','99362', 20),
(22,'YL002', '3', '20230623', '20230623', '12 Orchestra Terrace', 'Walla Walla','99362', 15),
(23,'AB006', '16', '20230622', '20230622', '89 Jefferson Way Suite 2', 'Portland','97201', 6),
(24,'JS003', '22', '20230624', '20230624', '89 Chiaroscuro Rd.', 'Portland','97219', 2),
(25,'JS003', '24', '20230619', '20230619', '89 Chiaroscuro Rd.', 'Portland','97219', 5),
(26,'YL002', '29', '20230701', '20230701', '12 Orchestra Terrace', 'Walla Walla','99362', 10),
(27,'YL002', '10', '20230703', '20230703', '12 Orchestra Terrace', 'Walla Walla','99362',7 ),
(28,'JS003', '9', '20230703', '20230703', '89 Chiaroscuro Rd.', 'Portland','97219', 5),
(29,'FW004', '8', '20230712', '20230712', '2743 Bering St.', 'Anchorage','99508', 20),
(30,'PW005', '12', '20230709', '20230709', '2817 Milton Dr.', 'Albuquerque','87110', 10),
(31,'FW004', '1', '20230709', '20230709', '2743 Bering St.', 'Anchorage','99508', 2),
(32,'FW004', '15', '20230709', '20230709', '2743 Bering St.', 'Anchorage','99508', 6),
(33,'JS003', '15', '20230710', '20230710', '89 Chiaroscuro Rd.', 'Portland','97219', 7),
(34,'PW005', '18', '20230717', '20230717', '2817 Milton Dr.', 'Albuquerque','87110', 4),
(35,'PW005', '14', '20230718', '20230718', '2817 Milton Dr.', 'Albuquerque','87110', 4)


-- Updating the information in Orders table where the customers were from Anchorage, Albuquerque and Lander
-- and changing them to customers from Redmond, Kirkland and Tacoma
UPDATE Orders
SET CustomerID='AD004', ShipAddress='4110 Old Redmond Rd.',  ShipCity='Redmond', ShipPostalCode='98052'
WHERE OrderID IN (6,7,8,9,10)

UPDATE Orders
SET CustomerID='AD004', ShipAddress='4110 Old Redmond Rd.',  ShipCity='Redmond', ShipPostalCode='98052'
WHERE OrderID=15

UPDATE Orders
SET CustomerID='NP005', ShipAddress='722 Moss Bay Blvd.',  ShipCity='Kirkland', ShipPostalCode='98033'
WHERE OrderID IN (30,34, 35)
UPDATE Orders
SET CustomerID='AS007', ShipAddress='908 W. Capital Way',  ShipCity='Tacoma', ShipPostalCode='98401'
WHERE OrderID IN (29,31,32)

UPDATE Orders
SET ShippedDate='20230704'
WHERE OrderID=27

UPDATE Orders
SET ShippedDate='20230623'
WHERE OrderID IN (7,8)
