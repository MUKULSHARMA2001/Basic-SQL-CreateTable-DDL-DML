--NAME MUKUL SHARMA
----------------------
--1. Create tables which should include all the below mentioned data types.
--Note: The query can contain multiple table creation queries but, they should cover all above listed queries.
--Exact numerics: bit, tinyint, smallint, int, bigint, decimal, numeric, money
--Approximate numerics:  float
--Date and Time: date, datetime, datetime2, datetimeoffset, smalldatetime, time
--Character strings: char, varchar, text
--Unicode character strings: nvarchar, ntext

--USE mukul.sharma] DATABASE
USE [mukul.sharma]

--1) table 1 name exact_Numeric
--CREATE TABLE 
CREATE TABLE exact_Numeric_Student(
IsMarksEnter BIT, 
MyTinyIntColumn TINYINT, 
MySmallIntColumn SMALLINT, 
MyBigIntColumn BIGINT,
MyDecimalColumn DECIMAL, 
MyNumericColumn NUMERIC, 
MyMoneyColumn MONEY )

--INSERT VALUE FOR MY COVENIENCE ONLY
insert into exact_Numeric_Student(
IsMarksEnter, 
MyTinyIntColumn, 
MySmallIntColumn, 
MyBigIntColumn,
MyDecimalColumn, 
MyNumericColumn, 
MyMoneyColumn)
values(1,255,32767,9223372036854775807,12.899,123455,922337203685477.5807)

SELECT * FROM exact_Numeric_Student 

-------------------------------------

--2) Approximate numerics:  float
--CREATE NEW TABLE
CREATE TABLE Approximate_numerics(float_Field float)
--INSERT VALUE FOR MY COVENIENCE ONLY
INSERT INTO Approximate_numerics(float_Field)
VALUES(50.30)
SELECT * FROM Approximate_numerics

-------------------------------------

--3) Date and Time: date, datetime, datetime2, datetimeoffset, smalldatetime, time

--CREATE NEW TABLE
CREATE TABLE date_and_time(
date_field DATE, 
date_time DATETIME, 
date_time_2 DATETIME2, 
date_time_offset DATETIMEOFFSET, 
small_date_time SMALLDATETIME, 
time_Field TIME)

SELECT * FROM date_and_time

------------------------------------------

--4)Character strings: char, varchar, text
--CREATE TABLE
CREATE TABLE charecter_String_Student(s_Name VARCHAR(30),s_Number CHAR(10),s_Address TEXT)

--INSERT VALUE FOR MY COVENIENCE ONLY
INSERT INTO charecter_String_Student(
s_Name,
s_Number,
s_Address)
VALUES('MUKUL SHARMA','8956895869','AHMEDABAD')

SELECT * FROM charecter_String_Student

------------------------------------------

--5)Unicode character strings: nvarchar, ntext
--CREATE TABLE
CREATE TABLE unicode_Charecter_Student(
Local_Address NVARCHAR(MAX),
Permanent_Address NTEXT)

--INSERT VALUE FOR MY COVENIENCE ONLY
INSERT INTO unicode_Charecter_Student(
Local_Address,
Permanent_Address)
VALUES(
'Swastik Char Rasta,c G Road, NavrangpuraAhmedabad, Gujarat, 38000907926420579',
'C/26, Capital Commercial Centre, Nr Sanyas Ashram, Ashram Road 
Ahmedabad, Gujarat, 380009 07940054591')

SELECT * FROM unicode_Charecter_Student
------------------------------------------

---------------------------------------------------------------------------------------------------------------------

--2. Add the below listed constraints in the table creation queries. 
--Note: Create a new table and use the below constraints in your table..
--NOT NULL
--UNIQUE
--PRIMARY KEY
--FOREIGN KEY
--DEFAULT
--IDENTIY

--CREATE sql_Constraints TABLE
CREATE TABLE sql_Constraints(
id INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
name VARCHAR(50) NOT NULL, 
phone bigint UNIQUE, 
city CHAR(20) DEFAULT 'Ahmedabad')

--INSERT VALUE IN sql_Constraints TABLE
INSERT sql_Constraints(name,phone,city)
VALUES('Mukul Sharma',8965896584,'Delhi')
INSERT sql_Constraints(name,phone,city)
VALUES('Keval Kumar',8965896585,'Mumbai')

select * from sql_Constraints

--CREATE sql_Constraints_2 TABLE
CREATE TABLE sql_Constraints_2(
id INT NOT NULL PRIMARY KEY, 
name varchar(20) NOT NULL,
c_id INT FOREIGN KEY REFERENCES sql_Constraints(id) )

--INSERT VALUE IN sql_Constraints_2 TABLE
INSERT sql_Constraints_2(id,name,c_id)
VALUES(1,'Raaju',1)

select * from sql_Constraints_2

---------------------------------------------------------------------------------------------------------------------

--3. Write the Alter queries for the tables that you have created and update the data types as  mentioned below.
--Update the varchar fields to nvarchar. i.e change Varchar into Nvarchar
--For any datetime column, set a DEFAULT constraints. i.e  set  default GETDATE() for any datetime column

--I USE sql_Constraints TABLE HERE 
-- UPDATE VARCHAR TO NVARCHAR
ALTER TABLE sql_Constraints 
ALTER COLUMN name NVARCHAR(50)

--ADD COLUMN NAME set_date
ALTER TABLE sql_Constraints
ADD set_Date varchar(30);

--SET DEFAULT GETDATE() TO set_date COLUMN
ALTER TABLE sql_Constraints
ADD Constraint set_Dates DEFAULT(GETDATE()) FOR set_Date

select * from sql_Constraints

---------------------------------------------------------------------------------------------------------------------
--4. DDL operations:
--Write down a basic query to perform various DDL operations like - ALTER, DROP, TRUNCATE

--CREATE ddl_Operations TABLE 
CREATE TABLE ddl_Operations(id int, name varchar(50) )

--INSERT VALUE IN ddl_Operations
INSERT INTO ddl_Operations(id,name)
VALUES(1, 'Mukul Sharma'),(2, 'Anil Kumar'),(3, 'Rohit Bhai'),
(4, 'Raaju Rastogi'),(5, 'Aman Varma'),(6, 'Umang Joshi')

-----DDL ALTER OPERATION
ALTER TABLE ddl_Operations
ALTER COLUMN name NVARCHAR(50)
-----DDL DROP OPERATION
DROP TABLE ddl_Operations
-----DDL TRUNCATE OPERATION
TRUNCATE TABLE ddl_Operations

select * FROM ddl_Operations

---------------------------------------------------------------------------------------------------------------------

--5).  DML operations:
--Write down a basic query to perform various DML operations like - INSERT, SELECT, UPDATE, DELETE

--CREATE dml_Operations TABLE
CREATE TABLE dml_Operations(id int, name varchar(50), city char(20) )


--DML INSERT OPERATION
INSERT INTO dml_Operations(id,name,city)
VALUES(1, 'Mukul Sharma','Ahmedabad'),(2, 'Anil Kumar','lucknow'),(3, 'Rohit Bhai','Delhi'),
(4, 'Raaju Rastogi','Agra'),(5, 'Aman Varma','Firozabad'),(6, 'Umang Joshi','Mumbai')

--DML SELECT OPERATION
SELECT name FROM dml_Operations WHERE id=5

--DML UPDATE OPERATION
UPDATE dml_Operations
SET city = 'Ahmedabad'
WHERE name = 'Umang Joshi'

--DML DELETE OPERATION
DELETE FROM dml_Operations
WHERE id=5

--DML SELECT OPERATION
SELECT * FROM dml_Operations





