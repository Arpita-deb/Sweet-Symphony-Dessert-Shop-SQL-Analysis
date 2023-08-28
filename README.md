# Sweet Symphony Dessert Shop Analysis in SQL
## Database Design Project: Building a database from scratch

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
3. Using Data Query Language (DQL) to answer some basic questions about the data

# Analysis
## Part 1: Creating the Tables

In this part, a Database named **Sweet Symphony Desserts Shop** and 5 tables have been created. The following Data Definition Language (DDL) commands were used-
* *CREATE*    -  to create the database and the tables
* *DROP*      -  to delete/remove the database objects from the SQL database
* *ALTER*     -  to change or modify the existing structure of the database

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
<br><br>

![Screenshot (469)](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/44329106-1f01-4265-a5d1-91604691ea03)
 
As can be seen from the database design diagram only Orders and Customers tables are joined together with the help of a Foreign key (CustomerID). Each table has individual Primary key and datatypes of the columns defined.

## Part 2: Inserting and updating values in the tables

**Data manipulation language (DML)** is a family of computer languages that permits users to manipulate data in a database by inserting data into database tables, retrieving existing data, deleting data from existing tables and modifying existing data. The following DML commands are used- 
* *SELECT*   - to show the records of the specified table
* *INSERT*   - to insert data in database tables.
* *UPDATE*   - to update or modify the existing data in database tables 
* *DELETE*   - to remove single or multiple existing records from the database tables.

Here values are inserted in the EmployeeDetails table. 
![insert 1](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/faa8f849-9670-449d-b696-7a5c06cdae7c)

![insert 2](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/89d383da-0484-423e-8810-6057705158c5)

![insert 3](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/293b8882-3511-4a49-8871-cc5a328c0f51)

![insert 4](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/b27e53de-746a-400c-8f9a-45747a851aa8)
  
## Part 3: Answer some basic questions about the data using SQL

The following clauses and functions were used to obtain various information from the tables.
  
   * *WHERE*         - to filter data of interest
   * *GROUP BY*      - to group rows that have the same values into summary rows
   * *ORDER BY*      - to sort the data in ascending or descending order
   * *CONCAT*        - to  add two or more strings together
   * *DATEDIFF*      - to return the difference between two date values
   * *DATEADD*       - to add a date to another date, then return the new date
   * *JOIN*          - to combine rows from two or more tables, based on a related column between them
   * *BETWEEN*       - to filter values in a range
   * *MAX*           - to obtain the maximum value of a numeric column
   * *MIN*           - to obtain the minimum value of a numeric column
   * *COUNT*         - to return the number of rows that matches a specific criterion
   * *SUM*           - to return the total sum of a numeric column.
   * *AVG*           - to get average value of a numeric column.
   * *LIKE*          - to search for a specified pattern in a column.
   * *IN*            - to specify multiple values in a WHERE clause
<br><br><br>
   
* How many categories of product did they sell?

  ![3C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/179efd18-c5dd-48cb-b09c-53bcb4eb821e)

  ![3A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/6ea96fcb-d042-4921-aaf4-a1d2dfb6fdbb)
  
* Show the total price of products sold by categories.
  
   ![8C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/c9968938-de18-47dc-9d23-7bfcf84c7532)

   ![8A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/2941b66f-8fd7-4b2f-b474-a6203e0c19ab)

* What is the average price of the products sold?

  ![AVG C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5f65d4c9-d47e-483d-addc-6b64cc709a2b)
  
  ![AVG A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/8891d230-f3fc-4e20-9dbb-014b9b2c2a98)
  
* What are Sweet Symphony's Top 5 profitable products?

  ![6C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/8be4c158-97fc-494f-809f-70fdfc438aff)

  ![6A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/4ed6f7c4-0e14-4073-9afb-56dd9495b58c)
  
* What are Sweet Symphony's 5 least profitable products?

  ![7C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/e7b57692-3927-494e-ae34-a3d38f2b58ab)

  ![7A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5387ca8d-bc1c-42e9-99dc-75abf848953c)
  
* What is their total revenue?
  
  ![9C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/65060a9b-133b-48a6-96ec-08077bfea8dc)

  ![9A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5c9728f0-3ba5-4cb7-81e9-c6d112c340b3)

* Which product is most expensive?

  ![5C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/e89f13e5-d8c9-43b7-9a59-a8940c664ea8)

  ![5A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/432e4b68-c0b0-4489-8749-d29444b08cc5)

* Which product is the cheapest?
  
  ![2C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/4cdfbceb-7957-42c0-b623-9de228877dcb)

  ![2A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/614a17a8-1a44-46de-9408-8056b7f8aa08)

* Show the full name of the employees.

  ![4C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5510917c-5978-4640-85d7-1d4eb0887665)

  ![4A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/feccf292-f5b1-4368-aebf-d1cfe5c820be)

* Show the employee names whose last name consists of 'er'.

  ![13C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/039ffb9f-facc-4881-b92e-a169b5dfba63)

  ![13A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/518f936e-6d26-4e60-a5ae-aa9e61edba27)

* Show the orders from Portland in the month of July.

  ![10C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/42d64ef3-7d43-4d7b-b0b8-1a6581067801)

  ![10A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/ae8e288a-b64c-4aa7-95de-420d86eef2b2)

* The customer from Eugene, Oregon ordered some desserts from Sweet Symphony which they want a week later. Update the shippeddate to a week after and add a required date column.

  ![12C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/12a20d5e-7622-453b-bdc4-3a657853353c)

  ![12A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/5437b5fc-03c5-43ef-b639-a199e7c50602)

* Calculate the difference of days between OrderDate and ShippedDate.

  ![14C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/98ef6028-6364-4dab-8d2f-20a4085d54c0)

  ![14A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/6a8a69bd-7951-40ed-97bd-28ec1ee8e797)

* Show the customer details who ordered products from Sweet Symphony.

   ![11C](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/680b2a61-a2a1-4c9e-ae24-ebc5ba06c715)

   ![11A](https://github.com/Arpita-deb/Sweet-Symphony-Dessert-Shop-SQL-Analysis/assets/139372731/e194c827-591e-4b89-9bbd-e6a5834cb364)

## Conclusion:

* A Database named **Sweet Symphony Desserts Shop** is created in Microsoft SQL Server.
* With the help of **CREATE, ALTER, DROP** clauses 5 tables have been created and altered.
* Values have been inserted into the tables using **INSERT INTO, SELECT, UPDATE, ALTER** and **DELETE FROM** Clauses
* Various information has been obtained using **SELECT** statement.
* Use of **WHERE, GROUP BY, ORDER BY** clauses have been shown.
* Different **aggregate functions** have been used to obtain the sum, average, maximum and minimum of numerical data points.

## List of References:

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
