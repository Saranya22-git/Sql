-- BETWEEN is used to filter a range of values(inclusive).

-- Syntax
SELECT * FROM table_name
WHERE column BETWEEN value1 AND value2;

-- Example
SELECT * FROM student_details
WHERE marks BETWEEN 60 AND 80;
