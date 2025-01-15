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
