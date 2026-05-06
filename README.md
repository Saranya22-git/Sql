Hey everybody!!!

**SQL**

#### **Table of Contents**

- [**Table of Contents**](#table-of-contents)
- [**Data**](#data)
- [**Database**](#database)
- [**Why do we need database?**](#why-do-we-need-database)
- [**Types of Databases:**](#types-of-databases)
- [**🔹Relational Database (RDBMS):**](#relational-database-rdbms)
- [**🔹Non-Relational database (No SQL):**](#non-relational-database-no-sql)
- [**What is SQL?**](#what-is-sql)
- [**DBMS** vs **RDMS**](#dbms-vs-rdms)
- [**Table**](#table)
- [**Row**](#row)
- [**Column**](#column)
- [**Primary Key**](#primary-key)
- [**Foreign Key**](#foreign-key)
- [**Constraints**](#constraints)
  - [**NOT NULL**](#not-null)
  - [**UNIQUE**](#unique)
  - [**CHECK**](#check)
  - [**DEFAULT**](#default)
- [**Basic SQL commands**](#basic-sql-commands)
- [**DDL**](#ddl)
  - [**CREATE**](#create)
  - [**ALTER**](#alter)
  - [**TRUNCATE**](#truncate)
  - [**DROP**](#drop)
- [**DML**](#dml)
  - [**INSERT**](#insert)
  - [**UPDATE**](#update)
  - [**DELETE**](#delete)
- [**DQL**](#dql)
  - [**SELECT**](#select)
  - [**WHERE**](#where)
  - [**DISTINCT**](#distinct)
- [**TCL**](#tcl)
  - [**COMMIT**](#commit)
  - [**ROLLBACK**](#rollback)
  - [**SAVEPOINT**](#savepoint)
- [**DCL**](#dcl)
  - [**GRANT**](#grant)
  - [**REVOKE**](#revoke)
- [**FILTERING DATA**](#filtering-data)
  - [**WHERE**](#where-1)
  - [**AND Operator**](#and-operator)
  - [**OR Operator**](#or-operator)
  - [**NOT Operator**](#not-operator)
  - [**BETWEEN**](#between)
  - [**IN Operator**](#in-operator)
  - [**LIKE**](#like)
  - [**IS NULL**](#is-null)
  - [**IS NOT NULL**](#is-not-null)
- [**Sorting Data**](#sorting-data)
  - [**ORDER BY Clause**](#order-by-clause)
  - [**Using ORDER BY with WHERE**](#using-order-by-with-where)
  - [**Using ORDER BY with column position**](#using-order-by-with-column-position)
- [**Aggregate Functions**](#aggregate-functions)
  - [**COUNT()**](#count)
  - [**SUM()**](#sum)
  - [**AVG()**](#avg)
  - [**MIN()**](#min)
  - [**MAX()**](#max)
  - [**Aggregate + WHERE**](#aggregate--where)
  - [**Aggregate ignores NULL values.**](#aggregate-ignores-null-values)
  - [**Aggregate returns ONE value.**](#aggregate-returns-one-value)
- [**GROUP BY \& HAVING**](#group-by--having)
  - [**GROUP BY**](#group-by)
  - [**HAVING Clause**](#having-clause)
- [**JOINS**](#joins)
  - [**Types of Joins**](#types-of-joins)
    - [**INNER JOIN**](#inner-join)
    - [**LEFT JOIN**](#left-join)
    - [**RIGHT JOIN**](#right-join)
    - [**FULL JOIN**](#full-join)
    - [**NATURAL JOIN**](#natural-join)
    - [**CROSS JOIN**](#cross-join)
    - [**SELF JOIN**](#self-join)
- [**SUBQUERIES**](#subqueries)
  - [**Types of Subqueries**](#types-of-subqueries)
    - [**Single Row Subquery**](#single-row-subquery)
    - [**Multiple Row Subquery**](#multiple-row-subquery)

#### **Data**

**Data:** *Data is a collection of raw facts, values, or information.*

#### **Database**
**Database:** *A Database is an organized collection of data stores electronically so it can be easily accessed, managed and updated.*

**Example for database:** *College stores student details, marks, attendance. All this is stored in a database.*

#### **Why do we need database?**
**🔹*Without database:*** *Data is stored in files, difficult to search, data duplication, no security with database.*

**🔹*With database:*** *Fast retrieval (getting something), Organized data, Secure, Multi-user access.*

#### **Types of Databases:**

#### **🔹Relational Database (RDBMS):** 
*Data is stored in tables (rows & columns)*

   **Example:** *MySQL, PostgreSQL, Oracle database.*
  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

#### **🔹Non-Relational database (No SQL):** 
*Data is stored in JSON, documents, key-value pairs.*

**Example:** *MongoDB*
```json
{
    "name":"sara",
    "marks":89
}
```

#### **What is SQL?**
*SQL stands for Structured Query Language. It is used to create database, Insert data, Update data, Delete data, Fetch data.*

#### **DBMS** vs **RDMS**

*DBMS stores data in files, while RDBMS stores data in structured tables with relationships between them.*

#### **Table**
**Table:** *Collection of data (like Excel Sheet)*

#### **Row**
**Row:** *Row is also called as Record. Row is a One single entity.*

**Example:**   *1   |  Sara  |   89    |*

#### **Column**
**Column:** *Column is also called as Field. Column is an Attribute (Property).*

**Example:** *Name, Marks, id*

#### **Primary Key**
**Primary Key:** *A primary key is a column (or set of columns) that uniquely identifies each row in a table.*

  - Must be unique
  - Cannot be NULL
  - Only one primary key per table

**Example:** 
```sql
CREATE TABLE student_details 
                    (
                    id INT PRIMARY KEY, 
                    name VARCHAR(20)
                    );
```
#### **Foreign Key**
**Foreign Key:** *A foreign key is a columns that creates a realtionship between two tables. It refers to the primary key of another table.*

**Example:**   
```sql
            -- TABLE-1
            CREATE TABLE student_details (
                id INT PRIMARY KEY,
                name VARCHAR(20)
            );

            -- TABLE-2
            CREATE TABLE marks (
                student_id INT,
                marks INT,
                FOREIGN KEY (student_id) REFERENCES student_details(id)
            );
```
#### **Constraints**
*Constraints are rules applied to columns to maintain data accuracy and integrity.*

##### **NOT NULL** 
*Ensures column cannot have NULL values.*
  ```sql
        CREATE TABLE student_details(
            id INT,
            name VARCHAR(20) NOT NULL
        );
  ```
##### **UNIQUE** 
*Ensures all values in a column are different.*
 ```sql
        CREATE TABLE student_details (
            id INT UNIQUE,
            name VARCHAR(20)
        );
 ```
##### **CHECK** 
*Ensures values meet a condition.*
 ```sql
        CREATE TABLE student_details (
            age INT CHECK (age>=18)
        );
 ```
##### **DEFAULT** 
*Assigns default value if none provided.*
 ```sql
        CREATE TABLE student_details (
            location VARCHAR(50) DEFAULT 'HYD'
        );
 ```

 #### **Basic SQL commands**
 *SQL commands are used to interact with the database. There are 5 types of SQL commands. They are:*
 - *DDL - CREATE, ALTER, DROP, TRUNCATE*
 - *DML - INSERT, UPDATE, DELETE*
 - *DQL - SELECT, WHERE, DISTINCT*
 - *TCL - COMMIT, ROLLBACK, SAVEPOINT*
 - *DCL - GRANT, REVOKE*

#### **DDL** 
*DDL stands for Data Definition Language. DDL commands are used to create, modify or delete the structure of database objects (like tables). Basically DDL = Structure (Table design).*

##### **CREATE**
*Used to CREATE a new table or database.*
```sql
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
```
##### **ALTER**
*Used to modify an existing table structure.*
```sql
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
```
##### **TRUNCATE**
*Used to remove all data from a table but keep structure.*
```sql
-- Syntax
TRUNCATE TABLE table_name;

-- Example
TRUNCATE TABLE student_details;
```
##### **DROP**
*Used to delete table completely(structure + data).*
```sql
-- Syntax
DROP TABLE table_name;

-- Example
DROP TABLE student_details;
```

#### **DML**
*DML stands for Data Manipulation Language. DML commands are used to insert, update or delete data inside tables. Basically DDL = Data Operations.*

##### **INSERT**
*Used to add new records in a table. Insert is used for adding new data.*
```sql
-- Syntax for Inserting one row of values
INSERT INTO table_name(column1,column2)
VALUES (value1,value2);

-- Example: INSERT INTO student_details(id,name)
VALUES (1, "saran");

-- Syntax for Inserting multiple rows of values
INSERT INTO table_name
VALUES (value1, value2,....),
       (value11, value12,..),
       .
       .
       (value n,....);
```

##### **UPDATE**
*Used to modify existing data.
Without WHERE it updates all rows.*
```sql
-- Syntax
UPDATE table_name
SET column1=value1
WHERE condition;

-- Example
UPDATE student_details
SET id=1
WHERE name="saran";
```
##### **DELETE**
*Used to remove specific records from a table.*
```sql
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
```

#### **DQL**
*DQL stands for Data Query Language. DQL is used to retrieve(fetch) data from the database. Basically DQL = Get data.*

##### **SELECT**
*Used to fetch data from a table.*
```sql
-- Syntax for to fetch data from a table
SELECT * FROM table_name; 

-- Example
SELECT * FROM student_details;

-- Syntax for to fetch only those specific columns
SELECT column1, column2
FROM table_name;

-- Example
SELECT id, name
FROM student_details;
```
##### **WHERE**
*Used to filter records based on condition.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE condition;

-- Example
SELECT * FROM student_details
WHERE id=1;
```
##### **DISTINCT**
*Used to remove duplicate values.*
```sql
-- Syntax
SELECT DISTINCT column_name
FROM table_name;

-- Example
SELECT DISTINCT id
FROM student_details;
```

#### **TCL**
*TCL stands for Transaction Control Lnaguage. TCL commands are used to manage transactions(group of queries). Basically TCL = Save or undo.*

##### **COMMIT**
*Saves changes permanently.*
```sql
-- Syntax
COMMIT;

-- Example
SELECT * FROM student_details;
COMMIT;
```
##### **ROLLBACK**
*Undo changes.*
```sql
-- Syntax 
ROLLBACK;

-- Example
SELECT * FROM student_details;
ROLLBACK;
```
##### **SAVEPOINT**
*Creates checkpoint.*
```sql
-- Syntax
SAVEPOINT table_name
ROLLBACK TO table_name;

-- Example
SAVEPOINT s1;
SELECT * FROM student_details;
ROLLBACK TO s1;
```
#### **DCL**
*DCL stands for Data Control Language. Used to control user permissions. Basically DCL = Security.*

##### **GRANT**
*Gives access.*
```sql
-- Syntax
GRANT privilege
ON table_name
TO user_name;

-- Example
GRANT SELECT ON student_details TO user1;
```
##### **REVOKE**
*Removes access.*
```sql
-- Syntax
REVOKE privilege
ON table_name
TO user_name;

-- Example
REVOKE SELECT ON student_details TO user1;
```
#### **FILTERING DATA**
*Without filtering we get all data, with filtering we get specific data.*

##### **WHERE**
***WHERE** is used to filter rows based on a condition. Basically WHERE = give me only required data.*
```sql
-- Syntax 
SELECT * FROM table_name
WHERE condition;

-- Example
SELECT * FROM student_details
WHERE stu_id=1;
```

##### **AND Operator**
***AND** is used when all conditions must be TRUE.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE condition1 AND condition2;

-- Example
SELECT * FROM student_details
WHERE marks>90 AND name="saran";
```

##### **OR Operator**
***OR** is used when at least one condition must be TRUE.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE condition1 OR condition2;

-- Example
SELECT * FROM student_details
WHERE name="Saran" OR name="Tej";
```
##### **NOT Operator**
***NOT** is used to exclude a condition.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE NOT condition;

-- Example
SELECT * FROM student_details
WHERE NOT marks>80;
```

##### **BETWEEN**
***BETWEEN** is used to filter a range of values(inclusive). We cannot use OR by BETWEEN.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE column BETWEEN value1 AND value2;

-- Example
SELECT * FROM student_details
WHERE marks BETWEEN 60 AND 80;
```

##### **IN Operator**
***IN** is used to match multiple values.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE column IN (value1, value2, value3);

-- Example
SELECT * FROM student_details
WHERE name IN("Sara","Tej");
```

##### **LIKE**
***LIKE** is used to search patterns in text.*

*Symbols Used:*

- "%" Any number of characters.
- "-" Single character.
```sql
SELECT * FROM table_name
WHERE column LIKE pattern.

-- Example
-- Starts with
SELECT *  FROM student_details
WHERE stu_name LIKE 'S%';

-- Ends with
SELECT * FROM student_details
WHERE stu_name LIKE '%U';

-- Contains
SELECT * FROM student_details
WHERE stu_name LIKE '%e%';

-- Exactly 4 letters
SELECT * FROM student_details
WHERE stu_name LIKE '____';
```

##### **IS NULL**
*Used to check missing **(NULL)** values. NULL means No values.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE column IS NULL;

-- Example
SELECT * FROM student_details
WHERE marks IS NULL;
```

##### **IS NOT NULL**
*Used to check non missing **(NOT NULL)** values.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE column IS NOT NULL;

-- Example
SELECT * FROM student_details
WHERE marks IS NOT NULL;
```

#### **Sorting Data**
*Sorting means arranging data in a specific order.*

##### **ORDER BY Clause**
***ORDER BY** is used to sort the result set based on one or more columns. Basically, ORDER BY = arrange data in ascending/descending.*
```sql
-- Syntax for sorting single column or specific columns
SELECT column_name
FROM table_name
ORDER BY column_name ASC|DESC;

-- Example
SELECT stu_cgpa
FROM stud_details
ORDER BY stu_cgpa ASC;

SELECT stu_name,stu_branch
FROM stud_details
ORDER BY stu_name,stu_branch ASC;

-- Syntax for sorting mupltiple columns
SELECT * FROM table_name
ORDER BY coulmn1 ASC, column2 DESC;

-- Example
SELECT * FROM stud_details
ORDER BY stu_name,stu_branch ASC;
```

##### **Using ORDER BY with WHERE**
*Filter data then sort it.*
```sql
-- Syntax
SELECT * FROM table_name
WHERE condition
ORDER BY column_name ASC|DESC;

-- Example
SELECT * FROM stud_details
WHERE stu_cgpa>9
ORDER BY stu_name ASC;
```

##### **Using ORDER BY with column position**
```sql
SELECT stu_cgpa, stu_name FROM stud_details
ORDER BY 1 ASC;
```

#### **Aggregate Functions**
*Aggregate Functions are used to perform calculations on multiple rows and return a single value. Basically, Many rows - One result.*

##### **COUNT()**
*Counts number of rows.*
```sql
-- Syntax for counting all the rows
SELECT COUNT(*)
FROM table_name;

-- Example
SELECT COUNT(*) FROM stud_details;

-- Syntax for Count specific column(non-null values)
SELECT COUNT(column_name) FROM table_name;

-- Example
SELECT COUNT(stu_id) FROM stud_details;
```

##### **SUM()**
*Calculates total sum of column.*
```sql
-- Syntax
SELECT SUM(column_name)
FROM table_name;

-- Example
SELECT SUM(stu_cgpa)
FROM stud_details;
```

##### **AVG()**
*Calculates average value.*
```sql
-- Syntax
SELECT AVG(column_name)
FROM table_name;

-- Example
SELECT AVG(stu_cgpa) FROM stud_details;
```

##### **MIN()**
*Finds smallest value.*
```sql
-- Syntax
SELECT MIN(column_name)
FROM table_name;

-- Example
SELECT MIN(stu_id)
FROM stud_details;
```

##### **MAX()**
*Finds largest value.*
```sql
-- Syntax
SELECT MAX(column_name)
FROM table_name;

-- Example
SELECT MAX(stu_id) 
FROM stud_details;
```

##### **Aggregate + WHERE**
*Counts only filtered data.*
```sql
SELECT COUNT(*)
FROM table_name
WHERE condition;

SELECT COUNT(stu_cgpa)
FROM stud_details
WHERE stu_cgpa>=9;
```

##### **Aggregate ignores NULL values.**

##### **Aggregate returns ONE value.**

#### **GROUP BY & HAVING**

##### **GROUP BY**
***GROUP BY** is used to group rows that have the same values into categories, so we can apply aggregate functions on each group. Basically GROUP BY = divide data into groups.*
```sql
-- Syntax
SELECT AGG_FUNCTION(column), column_name
FROM table_name
GROUP BY column_name;

-- Example
SELECT MAX(stu_cgpa), stu_branch
FROM stud_details
GROUP BY stu_branch;
```

##### **HAVING Clause**
***HAVING** is used to filter grouped data(after GROUP BY). Basically, HAVING = filter groups.*
```sql
SELECT MAX(stu_cgpa), stu_branch
FROM stud_details
GROUP BY stu_branch
HAVING MAX(stu_cgpa)>=9;
```

```sql
SQL has a fixed order:
 SELECT 
 FROM
 WHERE
 GROUP BY
 HAVING
 ORDER BY
```
 
#### **JOINS**
*A **JOIN** is used to combine data from two or more tables based on a related column. Basically JOIN = combine tables using a common column.*

##### **Types of Joins**

###### **INNER JOIN**
  *Returns only matching records in both tables.*
  ```sql
  -- Syntax for specific columns
  SELECT columns
  FROM table1
  INNER JOIN table2
  ON table1.column=table2.column;

  --Example
  SELECT * FROM grocery
  INNER JOIN grocery_transaction
  ON grocery.grocery_id=grocery_transaction.grocery_id;
  ```

###### **LEFT JOIN**
  *Returns all records from left table + matching from right.*
  ```sql
  -- Syntax
  SELECT columns
  FROM table1
  LEFT JOIN table2
  ON table1.column=table2.column;

  -- Example
  SELECT * FROM grocery
  LEFT JOIN grocery_transaction
  ON grocery.grocery_id=grocery_transaction.grocery_id;
  ```

###### **RIGHT JOIN**
  *Returns all records from right table + matching from left.*
  ```sql
  -- Syntax
  SELECT columns
  FROM table1
  RIGHT JOIN table2
  ON table1.column=table2.column;

  -- Example
  SELECT * FROM grocery
  RIGHT JOIN grocery_transaction
  ON grocery.grocery_id=grocery_transaction.grocery_id;
  ```

###### **FULL JOIN**
  *Returns all records from both sides.*
  ```sql
  -- Syntax
  SELECT columns
  FROM table1
  FULL JOIN table2
  ON table1.column=table2.column;

  -- Example
  SELECT * FROM grocery
  FULL JOIN grocery_transaction
  ON grocery.grocery_id=grocery_transaction.grocery_id;

  *MySQL supports INNER JOIN, LEFT JOIN, RIGHT JOIN but FULL JOIN not supported. MySQL alternative for FULL JOIN*

  SELECT * FROM grocery
  LEFT JOIN grocery_transaction
  ON grocery.grocery_id=grocery_transaction.grocery_id

  UNION

  SELECT * FROM grocery
  RIGHT JOIN grocery_transaction
  ON grocery.grocery_id=grocery_transaction.grocery_id;
  ```

###### **NATURAL JOIN**
  *NATURAL JOIN automatically joins tables using columns that have the same name.*
  ```sql
  -- Syntax
  SELECT * FROM table1
  NATURAL JOIN table2;

  -- Example
  SELECT * FROM grocery
  NATURAL JOIN grocery_transaction;
  ```

###### **CROSS JOIN**
  *CROSS JOIN combines every row from first table with every row from second table.*
```sql
-- Syntax
SELECT * FROM table1
CROSS JOIN table2;

-- Example
  SELECT * FROM grocery
  CROSS JOIN grocery_transaction;
```
###### **SELF JOIN**
*Joining a table with itself.*
```sql
-- Syntax
SELECT a.col, b.col
FROM table a
JOIN table b
ON a.column=b.column;

-- Example
SELECT 
g.grocery_name AS grocery,
r.grocery_name AS referred_by
FROM grocery g
LEFT JOIN grocery r
ON g.referral_id=r.grocery_id;
```

*These are completely equivalent:*
- **LEFT JOIN= LEFT OUTER JOIN**
- **RIGHT JOIN=RIGHT OUTER JOIN**
- **FULL JOIN=FULL OUTER JOIN** 
  
#### **SUBQUERIES**
*A subquery is a query inside another query. Basically Subquery = Inner query inside outer query.*

```sql
-- Structure
SELECT ...
FROM ...
WHERE column=(
  SELECT ...
);
```

- *Inner Query runs first.*
- *Outer query uses that result.*

##### **Types of Subqueries**

###### **Single Row Subquery**
*Returns only ONE value.*
```sql
-- Example
SELECT * FROM stud_details
WHERE stu_cgpa=(
SELECT MIN(stu_cgpa) FROM stud_details);
```

###### **Multiple Row Subquery**
*Returns multiple values.*
```sql
-- Example
SELECT * FROM stud_details
WHERE stu_name IN(
  SELECT stu_name FROM stud_details
);
```
