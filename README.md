

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

SQL Joins: 

Definition

SQL joins are used to retrieve data from two or more related tables based on a common field. This project explores various types of joins such as Inner Join, Left Join, and Right Join, showcasing their practical usage in real-world scenarios.

Types of Joins:

- INNER JOIN: Returns rows with matching values in both tables.

- LEFT JOIN: Returns all rows from the left table and matching rows from the right table. If there is no match, NULL values are returned for the columns from the right table.

- RIGHT JOIN: Returns all rows from the right table and matching rows from the left table. If there is no match, NULL values are returned for the columns from the left table.

SQL Union: 

Definition

The SQL UNION operator combines the results of two SELECT statements, either removing duplicates (with UNION) or preserving duplicates (with UNION ALL).


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


# 7 - Functions

Objective

This assignment demonstrates the use of Functions in SQL.

Define Functions in SQL:

In SQL, functions are used to encapsulate reusable logic that performs a specific task. Functions can be of two types:

  - Scalar Functions: Return a single value.

  - Table-Valued Functions: Return a table.

Assignment Instructions:

Consider the Country table and Persons table that you created earlier. Perform the following tasks:

1. Add a new column called DOB (Date of Birth) in the Persons table with the data type as DATE.

2. Write a user-defined function to calculate the age of a person using their DOB.

3. Write a SELECT query to fetch the age of all persons using the function you created.

4.  For the Country table:

  - Find the length of each country's name.

  - Extract the first three characters of each country's name.

  - Convert all country names to uppercase and lowercase.


    # 8 - Subqueries and Views 

Overview

This project demonstrates various SQL operations, including database creation, table management, views, and complex queries using MySQL. It focuses on two primary database implementations:

 1. World Database: Managing country and person relationships.
 2. Product Database: A customer management system.


Tasks Using Subqueries and Views

World Database Tasks

 1. Count the Number of Persons in Each Country

  - Write a query to count the total number of persons grouped    by their country.

 2. Sort by Person Count (High to Low)

  - Table-Valued Functions: Return a table.

 3. Filter Average Ratings

  - Calculate the average rating of persons for each country.

  - Display only those countries where the average rating is greater than 3.0.

 4. Find Countries Matching the USA's Rating

  - Use a Subquery to identify countries with the same average rating as the USA.

 5. Population Comparison Using Subqueries

  - Write a query to select all countries where the population exceeds the average population of all nations.

Product Database Tasks

 1. Create the Product Database and Customer Table

  - Create a database named Product.

  - In the Product database, create a table named Customer with the following fields:
    - Customer_Id   - PRIMARY KEY  
    - First_name    
    - Last_name     
    - Email         
    - Phone_no      
    - Address       
    - City          
    - State         
    - Zip_code      
    - Country

 2. Create Views

  - Customer_info View:

    - Combine First_name and Last_name into a single column Full_name.
    - Combine First_name and Last_name into a single column Full_name.  
    - Perform a SELECT operation on the customer_info view to retrieve data.   
    
  - US_Customers View:

    - Create a view displaying all customers located in the United States (Country = 'USA').

  - Customer_details View:

    - Include the following columns in this view:

      - Full_name (combine First_name and Last_name), 
      - Email,
      - Phone_no,
      - State.

3. Update Operations

  - Update the phone numbers of all customers who reside in California (State = 'California') using the Customer_details view.   

4. Count Customers by State

  - Write a query to count the number of customers grouped by State.
  - Filter results to show only states with more than 5 customers.

5. State-wise Customer Count Using the Customer_details View

  - Write a query to count the number of customers grouped by state based on the State column in the Customer_details view.

6. Sort Customers by State

  - Write a query to return all columns from the Customer_details view, sorted by the State column in ascending order.


# 9 - Stored Procedures

Overview

Create an SQL database named "Employee Management System" that features stored procedures for managing worker data, calculating salaries, and performing department-wise analytics. This project demonstrates the implementation of stored procedures, database management, and SQL best practices.

Schema

Consider the Worker table with the following fields:

[Worker_Id INT,
FirstName CHAR(25), 
LastName CHAR(25), 
Salary INT(15), 
JoiningDate DATETIME, 
Department CHAR(25)) ]

The tasks include creating and invoking stored procedures as outlined below:

  1. Insert Worker Record

  Create a stored procedure that accepts IN parameters for all the columns in the Worker table. This procedure adds a new record to the table.
   Example: After creating the procedure, invoke it to insert a new worker's data.

  2. Retrieve Worker Salary

  Write a stored procedure that takes an IN parameter for WORKER_ID and an OUT parameter for SALARY. This procedure retrieves the salary of the worker with the given ID and returns it in the p_salary parameter.
  Example: Call the procedure and provide a WORKER_ID to retrieve the corresponding salary.

  3. Update Worker Department

  Create a stored procedure that takes IN parameters for WORKER_ID and DEPARTMENT. This procedure updates the department of the worker with the specified ID.
  Example: Call the procedure with a WORKER_ID and a new DEPARTMENT to reflect the change.

  4. Count Workers by Department

  Write a stored procedure that takes an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount. This procedure retrieves the number of workers in the specified department and returns the count in the p_workerCount parameter.
  Example: Call the procedure with a department name to retrieve the worker count.

  5. Calculate Average Salary by Department

  Create a stored procedure that accepts an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary. This procedure calculates the average salary of all workers in the given department and returns the result in the p_avgSalary parameter.
  Example: Call the procedure with a department name to get the average salary.


  
