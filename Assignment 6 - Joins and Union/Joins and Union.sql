-- CREATING DATABASE
create database PERSONS_COUNTRY_DATA;
USE PERSONS_COUNTRY_DATA;

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
(10, 'Maria', 'Martinez', 128933395, 4, 10, 'Mexico');

select * from  Persons;

#1. INNER JOIN , LEFT JOIN, RIGHT JOIN

-- INNER JOIN
select * from persons p 
inner join country c on p.Country_Id = c.ID;

-- LEFT JOIN
select * from persons p 
left join Country c on p.Country_id = c.ID;

-- RIGHT JOIN
select * from persons p 
right join Country c on p.Country_id = c.ID;

#2. DISTINCT COUNTRY NAMES FROM BOTH TABLES

select distinct Country_name from Country
union
select distinct Country_name from persons;

#3. COUNTRY NAMES FROM BOTH TABLES INCLUDING DUPLICATES

select Country_name from Country
union all
select Country_name from persons;

#4. ROUNDING THE RATING OF PERSONS TO THE NEAREST INTEGER IN PERSONS TABLE

select Fname, Lname, round(Rating) as Rounded_rating from Persons;