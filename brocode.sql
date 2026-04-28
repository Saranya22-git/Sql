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

-- Dropping the table
DROP TABLE stu_details;