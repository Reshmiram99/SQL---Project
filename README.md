

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
