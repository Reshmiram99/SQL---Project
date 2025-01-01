-- CREATING DATABASE
create database PERSONS_COUNTRY_FUNCTIONS;
USE PERSONS_COUNTRY_FUNCTIONS;

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

select * from Persons;

#1. ADDING DOB COLUMN TO PERSONS TABLE
alter table persons	
add DOB	date;

#2. CALCULATING AGE USING USER DEFINED FUNCTION
Delimiter //

create function Calculate_age (DOB date)
returns int
deterministic
begin
declare Age int;
set Age = timestampdiff(Year,DOB, CURDATE()) -
(case when month(DOB) > month(curdate()) or 
(month(DOB) = month(curdate()) and day(DOB) > day(curdate()))
then 1
else 0
end);
return Age;
End //

Delimiter ;

-- UPDATING AGE OF EACH PERSONS IN PERSONS TABLE
update Persons set DOB = '1996-05-02' where ID =1;
update Persons set DOB = '1997-10-12' where ID =2;
update Persons set DOB = '2000-05-12' where ID =3;
update Persons set DOB = '1998-03-02' where ID =4;
update Persons set DOB = '1999-05-09' where ID =5;
update Persons set DOB = '1988-08-06' where ID =6;
update Persons set DOB = '1996-09-12' where ID =7;
update Persons set DOB = '1999-07-03' where ID =8;
update Persons set DOB = '2000-10-06' where ID =9;
update Persons set DOB = '1998-11-11' where ID =10;


#3. QUERY TO FETCH THE AGE OF ALL PERSONS 
select ID, Fname, Lname, Calculate_age (DOB) as Age
from Persons;

#4. LENGTH OF EACH COUNTRY NAME IN THE COUNTRY TABLE
select Country_name, length(Country_name) as Country_Name_Length
from Country;

#5. EXTRACTING FIRST THREE CHARACTERS OF EACH COUNTRY NAME
select Country_name, substring(Country_name,1,3) as First_Three_characters
from Country;

#6. COVERTING TO UPPERCASE AND LOWERCASE COUNTRY NAMES
select Country_name, upper(Country_name) AS UppercaseCountryName, 
lower(Country_name) as LowercaseCountryName
from Country;