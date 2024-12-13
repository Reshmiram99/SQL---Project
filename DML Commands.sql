-- Step 1: Create the Managers table with constraints
Create database Managers;
use Managers;

CREATE TABLE Managers (
    Manager_Id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age >= 18 AND Age <= 65),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);
desc Managers;

-- Step 2: Insert 10 rows into the Managers table
INSERT INTO Managers (First_name, Last_name, DOB, Age, Gender, Department, Salary)
VALUES
('Anu', 'Khan', '1985-04-12', 39, 'Female', 'IT', 30000),
('Rani', 'Sharma', '1978-09-15', 46, 'Male', 'HR', 28000),
('John', 'Doe', '1988-06-23', 36, 'Male', 'IT', 32000),
('Meera', 'Nair', '1990-11-02', 34, 'Female', 'Finance', 40000),
('Vikram', 'Singh', '1980-12-05', 43, 'Male', 'IT', 26000),
('Saira', 'Ali', '1992-07-19', 32, 'Female', 'Marketing', 35000),
('Dhanya', 'Parker', '1985-03-08', 39, 'Male', 'IT', 15000),
('Nisha', 'Patel', '1983-10-11', 41, 'Female', 'Finance', 18000),
('Raj', 'Kumar', '1995-02-17', 29, 'Male', 'HR', 22000),
('Emma', 'Stone', '1987-08-29', 37, 'Female', 'Marketing', 27000);

-- Step 3: Retrieve name and date of birth of the manager with Manager_Id 1
select *from Managers;
SELECT First_name, Last_name, DOB
FROM Managers
where Manager_id =1;

-- Step 4: Display the annual income of all managers
SELECT Manager_Id, First_name, Last_name, (Salary * 12) AS Annual_Income
FROM Managers;

-- Step 5: Display records of all managers except 'Aaliya'
SELECT *
FROM Managers
WHERE First_name != 'Aaliya';

-- Step 6: Display details of managers in IT department earning more than 25000 per month
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

-- Step 7: Display details of managers whose salary is between 10000 and 35000
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;