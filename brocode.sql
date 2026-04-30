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