# Sweet Symphony Dessert Shop Analysis in SQL

## Introduction:
Sweet Symphony Desserts Shop is a fictional family owned business known for their variety of desserts and confectionaries. The database contains 5 tables that manages their products, product categories, employee details, customers and order details. 

## Tool used:
This project is done in Microsoft SQL Server and SQL Server Management Studio(SSMS).

## Project Overview:
In this project a database with 5 tables of a fictional dessert shop has been created using SQL CRUD Statements and different Data Manipulation Languages (DML). **CRUD** stands for **CREATE, READ, UPDATE** and **DELETE** that refers to major operations on databases. Each letter in the acronym can be mapped to SQL operational clauses.

| CRUD statements | SQL Clauses |
| :-- | :-- |
|create | CREATE |
| read | SELECT |
| update | UPDATE |
| delete | DROP |

The project is divided into 3 parts-
1. Creating the Tables using CREATE, ALTER and DROP Clauses
2. Inserting Values and updating them with INSERT INTO, SELECT, UPDATE, ALTER, DELETE FROM Clauses
3. Using Data Query Language (DQL) answer some basic questions about the data

# Analysis
## Part 1: Creating the Tables

In this part a Database named **Sweet Symphony Desserts Shop** and 5 tables have been created. The following Data Definition Language (DDL) commands were used-
* CREATE    -  to create the database and the tables
* DROP      -  to delete/remove the database objects from the SQL database
* ALTER     - to change or modifie the existing structure of the database

Here only 2 tables have been shown created.

![Screenshot (452)](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/9c5843dd-cac9-4290-acc7-538911d0a235)

![Screenshot (451)](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/c61c64d9-4db5-4558-a6d7-e8e32899b7d0)

### **Tables Created**

* Categories table - individual products are grouped into 8 categories. 

   ![cat](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/a446bac2-4877-4461-9c86-e57b2a58003f)
  
* Customers table - customers who have ordered products from Sweet Symphony.

   ![cust](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/3572de45-a6cf-4844-ac68-c5478226f4f8)
  
* EmployeeDetails table - employees who work for Sweet Symphony.

  ![employee table](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/9cfbf668-ecb8-456c-b18d-ce137eff0520)
  
* Products table - The details of products which Sweet Symphony sold in their first 6 months of opening.

   ![pdt](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/f2f3411f-dd84-450b-b50f-0ab4d9fc2010)
  
* Orders table - Order details from the first 2 months of opening.

  ![order](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/f4b1147e-4ca0-45c5-b80b-dbef1193f8bb)

This database design shows all the tables and connections between them. As can be seen from the image, only Orders and Customers tables are joined together with the help of Foreign key (CustomerID). Each table has individual Primary key and datatypes of the columns defined.

<img src="https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/44ffb574-fbb4-4753-a7dc-dc0280248f4d" width=750 height=500>

## Part 2: Inserting Values and updating them 

**Data manipulation language (DML)** is a family of computer languages that permits users to manipulate data in a database by inserting data into database tables, retrieving existing data, deleting data from existing tables and modifying existing data. The following DML commands are used- 
* SELECT   - to show the records of the specified table
* INSERT   - to insert data in database tables.
* UPDATE   - to update or modify the existing data in database tables 
* DELETE   - to remove single or multiple existing records from the database tables.
  
![Screenshot (457)](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/1f6f77a9-e478-4df4-a430-0370ea1f907b)

## Part 3: Using SQL answer some basic questions about the data

The following clauses and functions were used to obtain various informations from the tables.
   * WHERE         - to filter data of interest
   * GROUP BY      - to group rows that have the same values into summary rows
   * ORDER BY      - to sort the data in ascending or descending order
   * CONCAT        - to  add two or more strings together
   * DATEDIFF      - to return the difference between two date values
   * DATEADD       - to add a date to another date, then return the new date
   * JOIN          - to combine rows from two or more tables, based on a related column between them
   * BETWEEN       - to filter values in a range
   * MAX           - to obtain the maximum value of a numeric column
   * MIN           - to obtain the minimum value of a numeric column
   * COUNT         - to return the number of rows that matches a specified criterion
   * SUM           - to return the total sum of a numeric column.
   * AVG           - to get average value of a numeric column.
   * LIKE          - used to search for a specified pattern in a column.
   * IN            - to specify multiple values in a WHERE clause
   
* How many categories of product do they sell?
  
  ![no of cat](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/bc55b7de-b820-46f1-a20d-8d76de5874bd)
  ![distinct cat](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/af070c0b-cd23-46fe-b61d-a30903d59228)
  
* Show the total price of products sold by categories.
  
  ![tot price](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/587f5df2-a410-42c6-8d50-fd2a8d73d92f)
  
* What is the average price of the products sold?
  
  ![avg prc](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/b9c8a84e-3aec-4808-8915-f9854136e25a)

* How many products did Sweet Symphony sell in their first 6 months?
  
  ![sum of pdts](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/fe9ac63d-e974-4c8b-87ec-57d905030cf3)
  
* What are Sweet Symphony's Top 5 and Bottom 5 products?
  
  ![tp 5 pdt](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/2c8c76f0-e2a4-4733-ab81-b55132265dac)
  ![least 5 pdt](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/3be792ad-9479-4d4c-b5e8-dd54ba94a832)
  
* What is their total revenue?
  
  ![tot rev](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/670a7918-a0c8-4791-a8e3-688a8804bd6f)
  
* Which product is most expensive?
  
  ![expen pdt](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/42b9ed53-9599-4605-bedb-83e13051b1f3)
  
* Which product is the cheapest?
  
  ![cheapest pdt](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/fd17125b-f94b-45ac-90ac-401996a32f21)

* Which products cost between $10 to $20?
  
  ![10-20 price](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/539039bb-3897-4fd9-ae98-0e233dc91970)
  
* Show the full name of the employees.
  
  ![em full name](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/7aab775b-7862-405f-bad1-a655b952a9c6)
  
* Show the details of employees from Seattle.
  
  ![seattle emp](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5f43c9d8-7dbb-4853-8dca-56b1a1071bdf)

* Show the employee names whose last last name consists of 'er'.
  
  ![wildcrd](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/20233725-59b5-493b-910e-b7a6c4524a48)
  
* Show the number of orders for each customer.

  ![no of order ](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/2ab22291-8674-4dcd-ad64-7dde076718a0)
  
* Show the orders from Portland in the month of July.
  
  ![portland order](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/a5e9dcfe-38c5-4d12-b881-152cd82db68a)

* The customer from Eugene, Oregon ordered some desserts from Sweet Symphony which they want a week later. Update the shippeddate to a week after and add a required date column.

  ![eugene join](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/6fc897bd-6ec1-404d-9bf0-f965fcd824c0)

* Calculate the difference of days between OrderDate and ShippedData.

  ![diff days](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5de3fd34-4ffa-4429-87d8-e89da0e0c1c5)

* Show the customer details who ordered products from Sweet Symphony.
   
  ![join 1](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/080b6e1d-f661-4e38-b348-a13a54020628)

* Join products and orders table  and show the product name, category, unitprice, order Id and quantity ordered
  
  ![join 2](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/2085d173-f4c2-4d42-aefe-8e330a1e5f7b)

## Conclusion:

* A Database named **Sweet Symphony Desserts Shop** is created in Microsoft SQL Server.
* With the help of **CREATE, ALTER, DROP** caluses 5 tables have been created and altered.
* Values have been inserted into the tables using **INSERT INTO, SELECT, UPDATE, ALTER** and **DELETE FROM** Clauses
* Various informations have been obtained using **SELECT** statement.

## References:

* [Data Definition Language (DDL)](https://en.wikipedia.org/wiki/Data_definition_language)
* [Data Manipulation Language (DML)](https://www.javatpoint.com/dml-commands-in-sql)
* [Data Query Language (DQL)](https://en.wikipedia.org/wiki/Data_query_language)
* [Crud Operations in SQL](https://www.javatpoint.com/crud-operations-in-sql)
* [Primary Key](https://www.w3schools.com/sql/sql_primarykey.asp)
* [Foreign Key](https://www.w3schools.com/sql/sql_foreignkey.asp)
* [CONCAT Function in SQL](https://www.javatpoint.com/concat-function-in-sql)
* [DATEDIFF Function in SQL](https://www.w3schools.com/SQl/func_sqlserver_datediff.asp)
* [DATEADD Function in SQL](https://www.w3schools.com/SQl/func_sqlserver_dateadd.asp)
* [SQL Wildcard Characters](https://www.w3schools.com/SQl/sql_wildcards.asp)
* [Types of SQL Joins](https://www.javatpoint.com/types-of-sql-join)
