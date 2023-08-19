# Sweet Symphony Dessert Shop Analysis in SQL

## Introduction:


## Tool used:
This project is done in Microsoft SQL Server and SQL Server Management Studio(SSMS).

## About the data:
![database design](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/44ffb574-fbb4-4753-a7dc-dc0280248f4d)

## Project Overview:
In this project a database with 5 tables of a fictional dessert shop has been created using SQL CRUD Statements and different Data Manipulation Languages (DML). CRUD stands for CREATE, READ, UPDATE and DELETE that refers to major operations on databases. Each letter in the acronym can be mapped to SQL operational clauses.

| CRUD statements | SQL Clauses |
| :-- | :-- |
|create | CREATE |
| read | SELECT |
| update | UPDATE |
| delete | DROP |

A data manipulation language (DML) is a family of computer languages permits users to manipulate data in a database by inserting data into database tables, retrieving existing data, deleting data from existing tables and modifying existing data. 

The project is divided into 3 parts-
1. Creating the Tables using CREATE, ALTER and DROP Clauses
2. Inserting Values and updating them with INSERT INTO, SELECT, UPDATE, ALTER, DELETE FROM Clauses
3. Using Data Query Language (DQL) answer some basic questions about the data


## Part 1: Creating the Tables

5 tables namely Categories, EmployeeDetails, Customers, Products and Orders have been created using CREATE Clause. These tables conjointly contain informations about the products Sweet Symphony sold in the first 6 months of their opening, details of employees working there, categories of products sold, informations about the customers and order details of first 2 months.


## Inserting Values and updating them:

## Using SQL answer some basic questions about the data:
   
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

