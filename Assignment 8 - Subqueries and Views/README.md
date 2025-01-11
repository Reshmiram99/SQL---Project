8 - Subqueries and Views
Overview

This project demonstrates various SQL operations, including database creation, table management, views, and complex queries using MySQL. It focuses on two primary database implementations:

World Database: Managing country and person relationships.
Product Database: A customer management system.
Tasks Using Subqueries and Views

World Database Tasks

Count the Number of Persons in Each Country
Write a query to count the total number of persons grouped by their country.
Sort by Person Count (High to Low)
Table-Valued Functions: Return a table.
Filter Average Ratings
Calculate the average rating of persons for each country.

Display only those countries where the average rating is greater than 3.0.

Find Countries Matching the USA's Rating
Use a Subquery to identify countries with the same average rating as the USA.
Population Comparison Using Subqueries
Write a query to select all countries where the population exceeds the average population of all nations.
Product Database Tasks

Create the Product Database and Customer Table
Create a database named Product.

In the Product database, create a table named Customer with the following fields:

Customer_Id - PRIMARY KEY
First_name
Last_name
Email
Phone_no
Address
City
State
Zip_code
Country
Create Views
Customer_info View:

Combine First_name and Last_name into a single column Full_name.
Combine First_name and Last_name into a single column Full_name.
Perform a SELECT operation on the customer_info view to retrieve data.
US_Customers View:

Create a view displaying all customers located in the United States (Country = 'USA').
Customer_details View:

Include the following columns in this view:

Full_name (combine First_name and Last_name),
Email,
Phone_no,
State.
Update Operations
Update the phone numbers of all customers who reside in California (State = 'California') using the Customer_details view.
Count Customers by State
Write a query to count the number of customers grouped by State.
Filter results to show only states with more than 5 customers.
State-wise Customer Count Using the Customer_details View
Write a query to count the number of customers grouped by state based on the State column in the Customer_details view.
Sort Customers by State
Write a query to return all columns from the Customer_details view, sorted by the State column in ascending order.
