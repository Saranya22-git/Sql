-- Used to create a new table or database.

-- Syntax
CREATE TABLE table_name(
    column1 datatype constraint,
    column2 datatype constraint
);

--Example
CREATE TABLE student_details(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK(age>=18),
    loc VARCHAR(50) DEFAULT "hyd"
);