-- Creates checkpoint.

-- Syntax
SAVEPOINT table_name
ROLLBACK TO table_name;

-- Example
SAVEPOINT s1;
SELECT * FROM student_details;
ROLLBACK TO s1;