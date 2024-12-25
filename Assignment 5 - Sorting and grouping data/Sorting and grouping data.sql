Create database CountryPersons_new;
Use CountryPersons_new;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population BIGINT,
    Area FLOAT
);
desc Country;

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 38000000, 9984670),
(3, 'UK', 67000000, 243610),
(4, 'India', 1380000000, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83000000, 357022),
(7, 'France', 67000000, 551695),
(8, 'Brazil', 213000000, 8515767),
(9, 'Russia', 144000000, 17098246),
(10, 'Japan', 126000000, 377975);

Select * from Country; 

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(255),
    Lname VARCHAR(255),
    Population BIGINT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(255),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
   
desc Persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 3.8, 2, 'Canada'),
(3, 'Alice', 'Brown', 67000000, 4.2, 3, 'UK'),
(4, 'Ravi', 'Kumar', 1380000000, 4.6, 4, 'India'),
(5, 'Anu', 'Johnson', 25600000, 4.1, 5, 'Australia'),
(6, 'Hansu', 'Müller', 83000000, 3.9, 6, 'Germany'),
(7, 'Sanu', 'Dubois', 67000000, 4.0, 7, 'France'),
(8, 'Christy', 'Silva', 213000000, 4.7, 8, 'Brazil'),
(9, 'Ivan', 'Petrov', 144000000, 4.3, 9, 'Russia'),
(10, 'Bobby', 'Tanaka', 126000000, 4.8, 10, 'Japan');

select * from Persons;

SELECT LEFT(Country_name, 3) AS CountryPrefix FROM Country;

SELECT CONCAT(Fname, ' ', Lname) AS FullName FROM Persons;

SELECT COUNT(DISTINCT Country_name) AS UniqueCountries FROM Persons;

SELECT MAX(Population) AS MaxPopulation FROM Country;

SELECT MIN(Population) AS MinPopulation FROM Persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES (11, 'Noah', NULL, 6000, 3.5, 1, 'India'),
       (12, 'Ella', NULL, 4000, 4.7, 2, 'USA');

SELECT COUNT(Lname) AS NonNullLname FROM Persons;

SELECT COUNT(*) AS TotalRows FROM Persons;

SELECT Population FROM Country LIMIT 3;

SELECT * FROM Country ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS TotalPopulation 
FROM Persons 
GROUP BY Country_name;

SELECT Country_name 
FROM Persons 
GROUP BY Country_name 
HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AvgRating 
FROM Persons 
GROUP BY Country_name 
HAVING COUNT(*) > 2 
ORDER BY AvgRating ASC;