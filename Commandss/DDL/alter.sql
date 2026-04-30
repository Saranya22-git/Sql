-- Used to modify an existing table structure.

-- Syntax for ADD COLUMN
ALTER TABLE table_name
ADD column_name datatype;

-- Example
ALTER TABLE student_details
ADD branch VARCHAR(20);

-- Syntax for MODIFY COLUMN
ALTER TABLE table_name
MODIFY column_name datatype;

-- Example
ALTER TABLE student_details
MODIFY name VRACHAR(100);

-- Syntax for DROP COLUMN
ALTER TABLE table_name
DROP COLUMN column_name

-- Example
ALTER TABLE student_details
DROP COLUMN loc;