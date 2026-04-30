-- Used to modify existing data.
Without WHERE it updates all rows.

-- Syntax
UPDATE table_name
SET column1=value1
WHERE condition;

-- Example
UPDATE student_details
SET id=1
WHERE name="saran";