

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


