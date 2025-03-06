create database assignment;

use assignment;

CREATE TABLE COMPANY (
    COMPANY_ID INT PRIMARY KEY AUTO_INCREMENT,
    COMPANY_NAME VARCHAR(45),
    STREET VARCHAR(45),
    CITY VARCHAR(45),
    STATE VARCHAR(2),
    ZIP VARCHAR(10)
);

CREATE TABLE CONTACT (
    CONTACT_ID INT PRIMARY KEY AUTO_INCREMENT,
    COMPANY_ID INT,
    FIRST_NAME VARCHAR(45),
    LAST_NAME VARCHAR(45),
    STREET VARCHAR(45),
    CITY VARCHAR(45),
    STATE VARCHAR(2),
    ZIP VARCHAR(10),
    IS_MAIN BOOLEAN,
    EMAIL VARCHAR(45),
    PHONE VARCHAR(12),
    FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY(COMPANY_ID)
);

CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME VARCHAR(45),
    LAST_NAME VARCHAR(45),
    SALARY DECIMAL(10, 2),
    HIRE_DATE DATE,
    JOB_TITLE VARCHAR(25),
    EMAIL VARCHAR(45),
    PHONE VARCHAR(12)
);

CREATE TABLE CONTACT_EMPLOYEE (
    CONTACT_EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
    CONTACT_ID INT,
    EMPLOYEE_ID INT,
    CONTACT_DATE DATE,
    DESCRIPTIONS VARCHAR(100),
    FOREIGN KEY (CONTACT_ID) REFERENCES CONTACT(CONTACT_ID),
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID)
);

-- QUE-4

UPDATE EMPLOYEE
SET PHONE = '215-555-8800'
WHERE FIRST_NAME = 'LESLEY' AND LAST_NAME = 'BLAND';


-- QUE - 5

UPDATE COMPANY
SET COMPANY_NAME = 'Urban Outfitters'
WHERE COMPANY_NAME = 'Urban Outfitters, Inc.';

-- QUE - 6

DELETE FROM CONTACT_EMPLOYEE
WHERE CONTACT_ID = (SELECT CONTACT_ID FROM CONTACT WHERE FIRST_NAME = 'Dianne' 
AND LAST_NAME = 'Connor')
AND EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE FIRST_NAME = 'Jack' 
AND LAST_NAME = 'Lee');



-- QUE - 8

/*
% Operator: Represents zero or more characters. It is used when you want to match any sequence of characters. 
For example:
LIKE 'A%' would match any string that starts with 'A', such as 'Apple' or 'Ant'.
LIKE '%a%' would match any string that contains 'a', like 'banana' or 'grape'.

_ Operator: Represents a single character. It is used when you want to match exactly one character at a specific position. 
For example:
LIKE 'a_b' would match 'a1b', 'a2b', but not 'ab' or 'a123b'.
LIKE '___' would match any three-character string, like 'cat' or 'dog'.
*/

-- QUE - 9

/*
Normalization in databases is a process used to organize a database's schema to 
reduce redundancy and improve data integrity. The goal is to design tables in 
such a way that they efficiently store data without unnecessary duplication 
and ensure that relationships between data are logical and maintainable.

The main steps are:

First Normal Form (1NF): Ensure that each column contains atomic (indivisible) values and each row is unique.
Second Normal Form (2NF): Ensure that all non-key attributes are fully dependent on the entire primary key.
Third Normal Form (3NF): Ensure that non-key attributes are only dependent on the primary key and not on other non-key attributes.
*/

-- QUE - 10

/*
In MySQL, a join is a SQL operation used to combine rows from two or more tables 
based on a related column. Joins allow you to retrieve related data from multiple 
tables in a single query. Here are the main types of joins:

INNER JOIN: Retrieves records that have matching values in both tables.
LEFT JOIN (or LEFT OUTER JOIN): Retrieves all records from the left table and the matched records from the right table. Unmatched records from the right table will have NULLs.
RIGHT JOIN (or RIGHT OUTER JOIN): Retrieves all records from the right table and the matched records from the left table. Unmatched records from the left table will have NULLs.
FULL JOIN (or FULL OUTER JOIN): Retrieves all records when there is a match in either left or right table. MySQL doesn’t directly support FULL JOIN but it can be simulated using a combination of LEFT JOIN and RIGHT JOIN.
*/

-- QUE - 11

/*
DDL (Data Definition Language): Deals with the structure of database objects. 
Commands include:
CREATE: To create database objects like tables or indexes.
ALTER: To modify existing database objects.
DROP: To delete database objects.

DCL (Data Control Language): Manages access and permissions to database objects. 
Commands include:
GRANT: To give users specific privileges.
REVOKE: To remove users' privileges.

DML (Data Manipulation Language): Handles the manipulation and retrieval of data. 
Commands include:
SELECT: To query and retrieve data.
INSERT: To add new records.
UPDATE: To modify existing records.
DELETE: To remove records.
*/

-- QUE - 12

/*

The JOIN clause in MySQL is used to combine rows from two or more tables based 
on a related column between them. It allows you to retrieve and work with related 
data from multiple tables in a single query.

Common types of joins:

INNER JOIN: Returns rows with matching values in both tables.
LEFT JOIN (LEFT OUTER JOIN): Returns all rows from the left table, and matched rows from the right table. Unmatched rows from the right table will have NULLs.
RIGHT JOIN (RIGHT OUTER JOIN): Returns all rows from the right table, and matched rows from the left table. Unmatched rows from the left table will have NULLs.
FULL JOIN (FULL OUTER JOIN): Returns all rows when there is a match in either table. MySQL doesn’t support FULL JOIN directly but can be simulated using UNION of LEFT JOIN and RIGHT JOIN.
*/

