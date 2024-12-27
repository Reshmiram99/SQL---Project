

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

  
