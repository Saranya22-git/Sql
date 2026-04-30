-- Constraints are rules applied to columns to maintain data accuracy and integrity.

CREATE TABLE constraints(
    id INT UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT CHECK(age>=18),
    location VARCHAR(100) DEFAULT "HYD"
);


-- NOT NULL: Ensures column cannot have NULL values.

        CREATE TABLE student_details(
            id INT,
            name VARCHAR(20) NOT NULL
        );

-- UNIQUE: Ensures all values in a column are different.

        CREATE TABLE student_details (
            id INT UNIQUE,
            name VARCHAR(20)
        );
 
-- CHECK: Ensures values meet a condition.
 
        CREATE TABLE student_details (
            age INT CHECK (age>=18)
        );
 
-- DEFAULT: Assigns default value if none provided.

        CREATE TABLE student_details (
            location VARCHAR(50) DEFAULT 'HYD'
        );
 