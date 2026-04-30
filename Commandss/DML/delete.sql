-- Used to remove specific records from a table.

-- Syntax for deleting specific rows from a table
DELETE FROM table_name
WHERE condition;

-- Example
DELETE FROM student_details
WHERE id=1;

-- Syntax for deleting all rows in a table
DELETE FROM table_name;

-- Example
DELETE FROM student_details;