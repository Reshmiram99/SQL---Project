

# 1 - DDL Commands Using School Database

Objective:

This assignment focuses on creating and manipulating databases using DDL (Data Definition Language) commands.

Operations to Perform:

CREATE: Create the database and table structures.
ALTER: Modify the table structure (e.g., add or remove columns).
RENAME: Change the table name.
TRUNCATE: Remove all rows from a table while keeping its structure intact.
DROP: Delete the entire table, including its structure.
Instructions:

Create a database named School.

Perform the following DDL operations for a table named STUDENT with the following fields:

Roll_No
Name
Marks
Grade

Tasks to Complete:

Use the SELECT command to display the table.
Add a column named Contact to the STUDENT table.
Remove the Grade column from the STUDENT table.
Rename the table from STUDENT to CLASSTEN.
Delete all rows from the CLASSTEN table using the TRUNCATE command.
Remove the CLASSTEN table from the database using the DROP command.

Note: Populate the STUDENT table with data of your choice based on the specified columns before performing the operations.


# 2 - DDL Constraints Using Sales Database

Objectives

This project demonstrates the creation and manipulation of a relational database named Sales using MySQL. It focuses on implementing Data Definition Language (DDL) and showcases database operations such as:

- Adding columns
- Renaming tables
- Inserting records
- Updating data
- Deleting tables

Steps to Perform:

1) Create a Database
Create a database called Sales.

2) Create a Table
Create a new table named Orders in the Sales database with the following columns:

Order_Id (Primary Key, Unique, Not Null)
Customer_name (Not Null)
Product_Category (Not Null)
Ordered_item (Not Null)
Contact_No

3) Add a New Column
Add a new column named order_quantity to the Orders table.

4) Rename the Table
Rename the Orders table to sales_orders.

5) Insert Data
Insert 10 rows into the sales_orders table.

6)Retrieve Specific Columns
Retrieve the columns customer_name and ordered_item from the sales_orders table.

7) Update Data
Use the UPDATE command to modify the name of a product for any row.

8) Delete the Table
Delete the sales_orders table from the database.


# 3 - DML Commands Using to Create Manager Database

Objective

This project demonstrates the use of Data Manipulation Language (DML) operations applied to a table named Managers. The Managers table stores information about managers, including their personal details, departments, and salaries. This project illustrates common DML operations such as inserting, retrieving, updating, and filtering data.

Table Creation

Create a table named Managers with the following fields:

- Manager_Id
- First_Name
- Last_Name
- DOB
- Age (with a CHECK constraint)
- Last_Update
- Gender
- Department
- Salary (NOT NULL)

Tasks

1) Insert 10 rows into the Managers table.

2) Write a query that retrieves the name and date of birth of the manager with Manager_Id = 1.

3) Write a query to display the annual income of all managers.

4) Write a query to display records of all managers except for the manager named ‘Aaliya’.

5) Write a query to display details of managers whose department is IT and who earn more than 25,000 per month.

6) Write a query to display details of managers whose salary is between 10,000 and 35,000.


# 4 - Querying Data to Create Country and Persons Database

Objective

This project demonstrates the use of Data Manipulation Language (DML) commands. The operations include table creation and data insertion. Two tables are created—Country and Persons—with values inserted into them.


- Country Table:
  
  Fields:

  - Id
  - Country_name
  - Population
  - Area

- Persons Table:

  Fields:

  - Id
  - Fname
  - Lname
  - Population
  - Rating
  - Country_Id
  - Country_name

Populate both tables with 10 rows each.

Queries to Perform

1) List the distinct country names from the Persons table.
2) Select the first names (Fname) and last names (Lname) from the Persons table using aliases.
3) Find all persons with a Rating greater than 4.0.
4) Find all countries with a Population greater than 10,00,000.
5) Find all persons who are from 'USA' or have a Rating greater than 4.5.
6) Find all persons where the Country_name is NULL.
7) Find all persons from the countries 'USA', 'Canada', and 'UK'.
8) Find all persons not from the countries 'India' and 'Australia'.
9) Find all countries with a Population between 5,00,000 and 20,00,000.
10) Find all countries whose names do not start with 'C'.


# 5 - Sorting and Grouping Data

Objective

This assignment showcases the use of SQL for sorting and grouping data.

Sorting Data

This project utilizes SQL queries to sort data by attributes such as Rating and Population, organizing it in ascending or descending order based on one or more columns.

Grouping Data

This method involves aggregating data based on specific attributes, often combined with aggregate functions like SUM, COUNT, and AVG, to analyze patterns across categories.


Task Instructions:

1) Create a Table: Create a table named Country with the following fields:

    - Id
    - Country_name
    - Population
    - Area

2)  Create Another Table: Create a table named Persons with the following fields:

    - Id
    - Fname
    - Lname
    - Population
    - Rating
    - Country_Id (Foreign Key referencing Country(Id))
    - Country_name

3)  Insert 10 Rows into Both Tables: Insert 10 rows into both the Country and Persons tables as specified.

SQL Queries

  1) Write an SQL query to print the first three characters of Country_name from the Country table

  2) Write an SQL query to concatenate the first name and last name from the Persons table

  3) Write an SQL query to count the number of unique country names from the Persons table

  4) Write a query to print the maximum population from the Country table

  5) Write a query to print the minimum population from the Persons table

  6) Insert 2 new rows into the Persons table, making Lname NULL. Then, write another query to count Lname from the Persons table

  7) Write a query to find the number of rows in the Persons table

  8) Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT)

  9) Write a query to print 3 random rows of countries. (Hint: Use RAND() function and LIMIT)

  10) List all persons ordered by their rating in descending order

  11) Find the total population for each country in the Persons table

  12) Find countries in the Persons table with a total population greater than 50,000

  13) List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order


# 6 - Joins and Union

Objective

This assignment emphasizes SQL operations involving data integration through joins and unions to extract meaningful insights from relational tables.

Joins

Joins are used to retrieve data from two or more related tables based on a common field. This project explores various types of joins such as Inner Join, Left Join, and Right Join, showcasing their practical usage in real-world scenarios.

Union

The Union operation is applied to combine the results of two SELECT statements, either removing duplicates (with UNION) or preserving duplicates (with UNION ALL).


Task Instructions:

Perform Joins

1) Inner Join: Combine rows from both the Country and Persons tables where the Country_Id matches.

2)  Left Join: Retrieve all rows from the Persons table and the matched rows from the Country table.

3)  Right Join: Retrieve all rows from the Country table and the matched rows from the Persons table.

Perform Union Operations

4) Distinct Country Names: List all distinct Country_name values appearing in both the Country and Persons tables using UNION.

5) All Country Names: Retrieve all Country_name values from both the Country and Persons tables, including duplicates, using UNION ALL.

Additional Tasks

6) Round Ratings: Use the ROUND() function to round the Rating column in the Persons table to the nearest integer.

Expected Output

- Join Outputs: Tabular results from the specified join types.

- Union Outputs: A combined list of country names with and without duplicates.

- Rounded Ratings: A list of all persons with their ratings rounded to the nearest integer.


  
