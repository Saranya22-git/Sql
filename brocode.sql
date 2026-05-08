-- Creating a table
CREATE TABLE stu_details(
    stu_id INT,
    stu_name VARCHAR(100),
    stu_mail VARCHAR(100),
    stu_branch VARCHAR(20),
    stu_cgpa DECIMAL(2,1)
);

-- Fetching the data
SELECT * FROM stu_details;

-- Renaming the table name
RENAME TABLE stu_details TO stud_details;

-- Adding column 
ALTER TABLE stud_details
ADD address VARCHAR(100);

-- Renaming the column name
ALTER TABLE stud_details
RENAME COLUMN address TO stu_address;

-- Changing the datatype value
ALTER TABLE stud_details
MODIFY  COLUMN stu_address VARCHAR(50);

-- Changing the column data type using AFTER
ALTER TABLE stud_details
MODIFY stu_mail VARCHAR(100)
AFTER stu_branch;

-- Dropping the column by using ALTER
ALTER TABLE stud_details
DROP COLUMN stu_mail;

-- Inserting values of single row
INSERT INTO stud_details
VALUES (1, "Saran","AIDS", 9.899,"Elr");

-- Inserting multiple values
INSERT INTO stud_details
VALUES (2,"addu","ECE",9.90,"Vijw"),
(3,"tej","IT",9.0,"Hyd");

INSERT INTO stud_details(stu_id,stu_name,stu_branch,stu_cgpa,stu_address)
VALUES(5,"shri","AIDS",8.9,"vijw");

-- Inserting just specific column values
INSERT INTO stud_details(stu_id,stu_name)
VALUES (4,"mohi");

-- Fetching the table
SELECT * FROM stud_details;

-- Fetching specific column data
SELECT stu_id, stu_name FROM stud_details;

-- Fetching data by using WHERE condition
SELECT * FROM stud_details
WHERE stu_id=1;

-- Fetching data by using WHERE with >=
SELECT * FROM stud_details
WHERE stu_cgpa>=9.8;

-- Fetching data by using WHERE with <=
SELECT * FROM stud_details
WHERE stu_cgpa<=9.8;

-- Fetching data by using WHERE with !=
SELECT * FROM stud_details
WHERE stu_id!=1;

-- Fetching data by using WHERE with IS NULL
SELECT * FROM stud_details
WHERE stu_cgpa IS NULL;

-- Fetching data by using WHERE with IS NOT NULL
SELECT * FROM stud_details
WHERE stu_cgpa IS NOT NULL;

-- Update specific column
UPDATE stud_details
SET stu_cgpa=8.9
WHERE stu_id=4;
SELECT * FROM stud_details;

-- Update multiple columns
UPDATE stud_details
SET stu_branch="BCOM",
    stu_address="vijw"
WHERE stu_id=4;
SELECT * FROM stud_details;

-- If we want to update all of the column
UPDATE stud_details
SET stu_address="vijw";
SELECT * FROM stud_details;

-- Delete all rows from a table
DELETE FROM stud_details;

-- If we want to delete specific row from a table
DELETE FROM stud_details
WHERE stu_id=4;

-- AUTOCOMMIT, COMMIT, ROLLBACK
SET AUTOCOMMIT=OFF;
COMMIT;
ROLLBACK;

-- Dropping the table
DROP TABLE stu_details;

DROP TABLE stud_details;

-- Filtering data

-- WHERE Clause
SELECT * FROM stud_details
WHERE stu_id=1;

-- AND Operator
SELECT * FROM stud_details
WHERE stu_name="Saran" AND stu_cgpa=9.9;

-- OR Opeartor
SELECT * FROM stud_details
WHERE stu_name="Saran" OR stu_cgpa=9.6;

-- NOT Operator
SELECT * FROM stud_details
WHERE NOT stu_id=1;

-- BETWEEN
SELECT * FROM stud_details
WHERE stu_cgpa BETWEEN 9.5 OR 9.9;

-- IN Operator
SELECT * FROM stud_details
WHERE stu_name IN ("Saran","Addu");

-- LIKE

-- Starts with
SELECT *  FROM stud_details
WHERE stu_name LIKE 'S%';

-- Ends with
SELECT * FROM stud_details
WHERE stu_name LIKE '%U';

-- Contains
SELECT * FROM stud_details
WHERE stu_name LIKE '%e%';

-- Exactly 4 letters
SELECT * FROM stud_details
WHERE stu_name LIKE '____';

-- Sorting data

-- ORDER BY
SELECT stu_cgpa
FROM stud_details
ORDER BY stu_cgpa ASC;

SELECT stu_branch
FROM stud_details
ORDER BY stu_cgpa ASC;

SELECT stu_name,stu_branch
FROM stud_details
ORDER BY stu_name,stu_branch ASC;

SELECT * FROM stud_details
ORDER BY stu_name,stu_branch ASC;

-- Using ORDER BY with WHERE
SELECT * FROM stud_details
WHERE stu_cgpa>9
ORDER BY stu_name ASC;

-- Using column position
SELECT stu_cgpa, stu_name FROM stud_details
ORDER BY 3 ASC;

-- Aggregate Functions

-- COUNT()
SELECT COUNT(*) FROM stud_details;

-- COUNT specific column (non-null values)
SELECT COUNT(stu_id) FROM stud_details;

-- SUM()
SELECT SUM(stu_cgpa) FROM stud_details;

-- AVG()
SELECT AVG(stu_cgpa) FROM stud_details;

-- MIN()
SELECT MIN(stu_cgpa) FROM stud_details;

-- MAX()
SELECT MAX(stu_cgpa) FROM stud_details;

-- Aggregate + WHERE
SELECT COUNT(*)
FROM stud_details
WHERE stu_id>=2;

SELECT COUNT(stu_cgpa)
FROM stud_details
WHERE stu_cgpa>=9;

-- Aggregate ignores NULL values

-- Aggregate returns ONE value

-- GROUP BY
SELECT MAX(stu_cgpa)
FROM stud_details
GROUP BY stu_branch;

SELECT MAX(stu_cgpa), stu_branch
FROM stud_details
GROUP BY stu_branch;

SELECT MIN(stu_cgpa), stu_name
FROM stud_details
GROUP BY stu_cgpa;

SELECT MAX(stu_cgpa), stu_branch
FROM stud_details
WHERE (stu_cgpa)>=9
GROUP BY stu_branch;

SELECT MAX(stu_cgpa), stu_branch
FROM stud_details
GROUP BY stu_branch;

-- HAVING 
SELECT MAX(stu_cgpa), stu_branch
FROM stud_details
GROUP BY stu_branch
HAVING MAX(stu_cgpa)>=9;

``sql
SQL has a fixed order:
 SELECT 
 FROM
 WHERE
 GROUP BY
 HAVING
 ORDER BY
``

-- ADDING MORE COLUMNS
ALTER TABLE stud_details
ADD my_date DATE,  ADD my_time TIME, ADD my_datetime DATETIME;

-- Inserting values
INSERT INTO stud_details(my_date, my_time, my_datetime)
VALUES(CURRENT_DATE(),CURRENT_TIME(),NOW());

-- Update
UPDATE stud_details
SET my_date=CURRENT_DATE(),
    my_time=CURRENT_TIME(),
    my_datetime=NOW();

UPDATE stud_details
SET my_date=CURRENT_DATE()+1
WHERE stu_id=2;

UPDATE stud_details
SET my_date=CURRENT_DATE()-1
WHERE stu_id=1;

-- Delete
DELETE FROM stud_details
WHERE stu_id IS NULL;

-- ALTER CONSTRAINT
-- ADD CONSTRAINT is used for things like: PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK

ALTER TABLE stud_details
ADD CONSTRAINT
NOT NULL(my_date);

SELECT * FROM stud_details;

-- Foreign Key

CREATE TABLE customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

SELECT * FROM customers;

DROP TABLE customers;

CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL (5,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

SELECT * FROM transactions;

DROP TABLE transactions;

-- Another example with foreign key

CREATE TABLE college(
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(20)
);

CREATE TABLE student_std(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    stu_cgpa INT,
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES college(branch_id)
);

-- Another table
CREATE TABLE grocery(
    grocery_id INT PRIMARY KEY AUTO_INCREMENT,
    grocery_name VARCHAR(50)
);

CREATE TABLE grocery_transaction(
    grocery_amount INT,
    grocery_price DECIMAL(5,2),
    grocery_id INT,
    FOREIGN KEY (grocery_id) REFERENCES grocery(grocery_id)
);

INSERT INTO grocery(grocery_name)
VALUES  ("Bread"),
        ("Milk"),
        ("Lays"),
        ("Biscuits");

SELECT * FROM grocery;

INSERT INTO grocery_transaction(grocery_amount,grocery_price,grocery_id)
VALUES  (30,30.003,1),
        (50,50.009,2),
        (10,10.00,3),
        (100,100.10,4),
        (50,35.003,1);

INSERT INTO grocery(grocery_name)
VALUES("Chocolates");

SELECT * FROM grocery_transaction;

DROP TABLE grocery_transaction;

-- Joins
-- INNER JOINS
SELECT * FROM grocery
INNER JOIN grocery_transaction
ON grocery.grocery_id=grocery_transaction.grocery_id;

-- LEFT JOIN
SELECT * FROM grocery
LEFT JOIN
grocery_transaction
ON grocery.grocery_id=grocery_transaction.grocery_id;

-- RIGHT JOIN
SELECT * FROM grocery
RIGHT JOIN
grocery_transaction
ON grocery.grocery_id=grocery_transaction.grocery_id;

-- FULL JOIN
SELECT * FROM grocery
FULL JOIN grocery_transaction
ON grocery.grocery_id=grocery_transaction.grocery_id;

SELECT * FROM grocery
LEFT JOIN
grocery_transaction
ON grocery.grocery_id=grocery_transaction.grocery_id

UNION

SELECT * FROM grocery
RIGHT JOIN
grocery_transaction
ON grocery.grocery_id=grocery_transaction.grocery_id;

-- NATURAL JOIN
SELECT * FROM grocery
NATURAL JOIN grocery_transaction;

-- CROSS JOIN
SELECT * FROM grocery
CROSS JOIN grocery_transaction;

-- SELF JOIN
ALTER TABLE grocery
ADD referral_id INT;

SELECT * FROM grocery;

UPDATE grocery
SET referral_id=1
WHERE grocery_id=2;

UPDATE grocery
SET referral_id=2
WHERE grocery_id=3;

UPDATE grocery
SET referral_id=2
WHERE grocery_id=4;

SELECT 
g.grocery_name AS grocery,
r.grocery_name AS referred_by
FROM grocery g
LEFT JOIN grocery r
ON g.referral_id=r.grocery_id;

-- SUBQUERY
SELECT * FROM stud_details;

SELECT * FROM stud_details
WHERE stu_cgpa=(
SELECT MAX(stu_cgpa)
FROM stud_details);

-- SET OPERATIONS

CREATE TABLE stud_details2(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(20)
);

INSERT INTO stud_details2
VALUES (1, "Saran","AIML"),
       (2, "Ram", "ECE"),
       (3, "Sita", "AIDS"),
       (4, "Soniya", "IT");

SELECT * FROM stud_details2;

-- TYPES OF SET OPERATIONS

-- UNION
SELECT stu_name FROM stud_details
UNION
SELECT name FROM stud_details2;

-- UNION ALL
SELECT stu_name FROM stud_details
UNION ALL
SELECT name FROM stud_details2;

-- INTERSECT
SELECT stu_name FROM stud_details
INTERSECT
SELECT name FROM stud_details2;

-- EXCEPT
SELECT stu_name FROM stud_details
EXCEPT
SELECT name FROM stud_details2;

-- STRING FUNCTIONS
-- CONCAT()
SELECT CONCAT(stu_name, ' ', stu_branch)
FROM stud_details;

-- LENGHT()
SELECT LENGTH(stu_name) 
FROM stud_details;

-- UPPER()
SELECT UPPER(stu_name)
FROM stud_details;

-- LOWER()
SELECT LOWER(stu_name)
FROM stud_details;

-- SUBSTRING()
SELECT SUBSTRING(stu_name, 1, 4)
FROM stud_details;