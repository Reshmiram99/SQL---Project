Create Database employee_management;
Use employee_management;

Create  TABLE Worker (
    Worker_Id INT PRIMARY KEY,
    FirstName CHAR(25),
    LastName CHAR(25),
    Salary INT,
    JoiningDate DATETIME,
    Department CHAR(25)
);
DESC Worker;

INSERT INTO Worker VALUES
(1, 'John', 'Doe', 50000, '2024-01-10 09:00:00', 'IT'),
(2, 'Jane', 'Smith', 60000, '2024-01-11 09:00:00', 'HR'),
(3, 'Mike', 'Johnson', 55000, '2024-01-12 09:00:00', 'IT'),
(4, 'Sarah', 'Williams', 65000, '2024-01-13 09:00:00', 'Finance'),
(5, 'David', 'Brown', 52000, '2024-01-14 09:00:00', 'IT');

DELIMITER //
CREATE PROCEDURE sp_AddNewWorker(
    IN p_Worker_Id INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_Worker_Id, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_GetWorkerSalary(
    IN p_Worker_Id INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary
    FROM Worker
    WHERE Worker_Id = p_Worker_Id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_UpdateWorkerDepartment(
    IN p_Worker_Id INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_Worker_Id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_GetDepartmentWorkerCount(
    IN p_Department CHAR(25),
    OUT p_WorkerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_WorkerCount
    FROM Worker
    WHERE Department = p_Department;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_GetDepartmentAvgSalary(
    IN p_Department CHAR(25),
    OUT p_AvgSalary DECIMAL(10,2)
)
BEGIN
    SELECT AVG(Salary) INTO p_AvgSalary
    FROM Worker
    WHERE Department = p_Department;
END //
DELIMITER ;

CALL sp_AddNewWorker(6, 'Robert', 'Wilson', 58000, '2024-01-15 09:00:00', 'HR');

SET @worker_salary = 0;
CALL sp_GetWorkerSalary(1, @worker_salary);
SELECT @worker_salary AS Worker_Salary;

CALL sp_UpdateWorkerDepartment(1, 'Finance');

SET @dept_count = 0;
CALL sp_GetDepartmentWorkerCount('IT', @dept_count);
SELECT @dept_count AS Department_Worker_Count;

SET @dept_avg_salary = 0;
CALL sp_GetDepartmentAvgSalary('IT', @dept_avg_salary);
SELECT @dept_avg_salary AS Department_Average_Salary;