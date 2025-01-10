-- CREATING DATABASE
create database PERSONS_COUNTRY_SUBQUERIES_VIEWS;
USE PERSONS_COUNTRY_SUBQUERIES_VIEWS;

-- CREATING COUNTRY TABLE
create table Country (
ID int primary key,
Country_name varchar(100),
Population bigint,
Area float
);

-- INSERTING VALUES TO COUNTRY TABLE
insert into Country (ID, Country_name, Population, Area)
values
(1, 'USA', 331002651, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'Brazil', 211049527, 8515767),
(4, 'India', 1380004385, 3287263),
(5, 'China', 1393409038, 9596961),
(6, 'Australia', 25499884, 7692024),
(7, 'Germany', 83783942, 357022),
(8, 'Russia', 145934462, 17098242),
(9, 'Japan', 126476461, 377975),
(10, 'Mexico', 128933395, 1964375);

select * from Country;

-- CREATING TABLE PERSONS
create table Persons( 
ID int primary key,
Fname varchar(50),
Lname varchar(50),
population bigint,
Rating decimal(2,1),
Country_Id int,
Country_name varchar(100),
foreign key (Country_Id) references Country(ID)
);

-- INSERTING VALUES TO PERSONS TABLE
insert into Persons(ID, Fname, Lname, Population, Rating, Country_Id, Country_name)
values
(1, 'John', 'Doe', 331002651, 5, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 4, 2, 'Canada'),
(3, 'Carlos', 'Garcia', 211049527, 3, 3, 'Brazil'),
(4, 'Ravi', 'Sharma', 1380004385, 5, 4, 'India'),
(5, 'Wei', 'Zhang', 1393409038, 4, 5, 'China'),
(6, 'Emma', 'Johnson', 25499884, 3, 6, 'Australia'),
(7, 'Max', 'Müller', 83783942, 5, 7, 'Germany'),
(8, 'Olga', 'Petrova', 145934462, 2, 8, 'Russia'),
(9, 'Taro', 'Yamamoto', 126476461, 5, 9, 'Japan'),
(10, 'Maria', 'Martinez', 128933395, 4, 10, 'Mexico'),
(11, 'John', 'Dominic', 331222651, 5, 1, 'USA'),
(12, 'chris', 'Smith', 37775154, 4, 1, 'USA'),
(13, 'Thomas', 'Garcia', 211129527, 3, 2, 'Canada'),
(14, 'Mathew', 'Robert', 1381304385, 5, 4, 'India');

select * from Persons;

#1.NUMBER OF PERSONS IN EACH COUNRTY
select Country_name ,count(*) as Number_of_Persons
from persons 
group by Country_name;

#2. NUMBER OF PERSONS IN EACH COUNTRY SORTED FROM HIGH TO LOW
select Country_name ,count(*) as Number_of_Persons
from persons 
group by Country_name 
order by Number_of_Persons desc ;

#3. AVERAGE RATING FOR PERSONS IN RESPECTIVE COUNTRIES IF THE AVERAGE IS GREATER THAN 3.0
select Country_name, avg(Rating)  as Avg_Rating 
from persons 
group by Country_Name
having Avg(rating)>3.0;

#4. COUNTRIES WITH THE SAME RATING AS THE USA 
select  Country_name
from Persons
where Rating in(
select Rating
from Persons
where Country_name = 'USA')
group by Country_name;

 #5. COUNTRIES WHOSE POPULATION IS GREATER THAN THE AVERAGE POPULATION OF ALL NATIONS
 select Country_name,population
 from Country
 where Population>(select avg (population)
 from Country);
 
 
 -- CREATING DATABASE
 CREATE DATABASE Product;
 USE Product;
 
 -- CREATING THE TABLE CUSTOMER
 create table Customer(
 Customer_ID int primary key,
 First_Name varchar(50),
 Last_Name varchar(50),
 Email varchar(100),
 Phone_NO varchar(20),
 Address varchar(200),
 City varchar(50),
 State varchar(50),
 zip_code varchar (20),
 Country varchar(50)
 );
 
 select * FROM CUSTOMER;
 
insert into Customer (Customer_ID, First_Name, Last_Name, Email, Phone_NO, Address, City, State, zip_code, Country)
values
(1, 'John', 'Doe', 'john.doe@example.com', 1234567890, '123 Main St', 'New York', 'New York', '10001', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 8057634865, '456 Oak Rd', 'Los Angeles', 'California', '90001', 'USA'),
(3, 'Carlos', 'Garcia', 'carlos.garcia@example.com', 3456789012, '789 Pine Blvd', 'Chicago', 'Illinois', '60601', 'USA'),
(4, 'Maria', 'Martinez', 'maria.martinez@example.com', 4567890123, '321 Elm Dr', 'Miami', 'Florida', '33101', 'USA'),
(5, 'Wei', 'Zhang', 'wei.zhang@example.com', 5678901234, '654 Maple Ave', 'San Francisco', 'California', '94101', 'USA'),
(6, 'Ahmed', 'Ali', 'ahmed.ali@example.com', 6789012345, '987 Birch St', 'Houston', 'Texas', '77001', 'USA'),
(7, 'Emma', 'Johnson', 'emma.johnson@example.com', 7890123456, '123 Cedar Ln', 'Seattle', 'Washington', '98101', 'USA'),
(8, 'Max', 'Müller', 'max.muller@example.com', 8901234567, '432 Walnut St', 'Berlin', 'Berlin', '10115', 'Germany'),
(9, 'Olga', 'Petrova', 'olga.petrova@example.com', 9012345678, '654 Oak St', 'Moscow', 'Moscow', '101000', 'Russia'),
(10, 'Taro', 'Yamamoto', 'taro.yamamoto@example.com', 1234567899, '321 Pine Rd', 'Tokyo', 'Tokyo', '100-0001', 'Japan');

#1. VIEW OF CUSTOMER INFO FROM CUSTOMER TABLE
create view Customer_Info as
select concat(First_Name,' ', Last_Name) as Full_Name, Email
from customer;

select * from  Customer_Info;

#2. VIEW OF CUSTOMER LOCATED IN USA
create view USA_Customers as
select * from customer
where Country = 'USA';
 
select * from USA_Customers;

#3. ANOTHER VIEW OF CUSTOMER DETAILS
create view Customer_Details  as
select concat(First_Name,' ', Last_Name) as Full_Name,
Email, Phone_NO, State
from Customer;

select* from Customer_Details;

#4. PHONE NUMBER UPDATION IN CALIFORNIA LIVING CUSTOMERS
update Customer
set Phone_NO ='9513574560'
where state = 'California';

select* from Customer_Details;

#5. NUMBER OF CUSTOMERS IN EACH STATE WITH MORE THAN 1 CUSTOMERS
create view StatewiseCustomerCount  as
SELECT State, COUNT(*) AS Customer_Count
FROM Customer
GROUP BY State
HAVING COUNT(*) > 1;

select * from StatewiseCustomerCount;

#6. QUERY THAT WILL RETURN THE NUMBER OF CUSTOMERS IN EACH STATE
select State, count(*) as CustomerCount
from Customer_Details
group by State;

#7. ALL THE COLUMNS FROM THE CUSTOMER DETAILS VIEW IN ASCENDING ORDER
select * from Customer_Details
order by State asc;