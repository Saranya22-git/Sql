Hey everybody!!!

**SQL**

#### **Table of Contents**

- [**Introduction to Databases**](#introduction-to-databases)
  - [**Data**](#data)
  - [**Database**](#database)
  - [**Why do we need database?**](#why-do-we-need-database)
  - [**What is DBMS?**](#what-is-dbms)
  - [**What is RDBMS?**](#what-is-rdbms)
  - [**DBMS** vs **RDMS**](#dbms-vs-rdms)
  - [**What is SQL?**](#what-is-sql)
  - [**Types of Databases:**](#types-of-databases)
    - [**🔹Relational Database (RDBMS):**](#relational-database-rdbms)
    - [**🔹Non-Relational database (NoSQL):**](#non-relational-database-nosql)
- [**Database Concepts**](#database-concepts)
  - [**Table**](#table)
  - [**Row**](#row)
  - [**Column**](#column)
  - [**Schema**](#schema)
  - [**Relationships between Tables**](#relationships-between-tables)
  - [**Primary Key**](#primary-key)
  - [**Foreign Key**](#foreign-key)
  - [**Constraints**](#constraints)
    - [**NOT NULL**](#not-null)
    - [**UNIQUE**](#unique)
    - [**CHECK**](#check)
    - [**DEFAULT**](#default)
    - [**Primary Key**](#primary-key-1)
    - [**Foreign Key**](#foreign-key-1)
- [**SQL Data Types**](#sql-data-types)
  - [**Numeric Data Types:**](#numeric-data-types)
    - [**INT**](#int)
    - [**BIGINT**](#bigint)
    - [**FLOAT**](#float)
    - [**DOUBLE**](#double)
    - [**DECIMAL**](#decimal)
  - [**String Data Types:**](#string-data-types)
    - [**CHAR**](#char)
    - [**VARCHAR**](#varchar)
    - [**TEXT**](#text)
  - [**Date and Time Data Types:**](#date-and-time-data-types)
    - [**DATE**](#date)
    - [**TIME**](#time)
    - [**DATETIME**](#datetime)
    - [**TIMESTAMP**](#timestamp)
  - [**Boolean**](#boolean)
  - [**Enum**](#enum)
- [**SQL commands**](#sql-commands)
  - [**DDL**](#ddl)
    - [**DDL Commands**](#ddl-commands)
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
      - [**Correlated Subquery**](#correlated-subquery)
  - [**SET OPERATIONS**](#set-operations)
    - [**Types of Set Operations**](#types-of-set-operations)
      - [**UNION**](#union)
      - [**UNION ALL**](#union-all)
      - [**INTERSECT**](#intersect)
      - [**EXCEPT**](#except)
  - [**STRING FUNCTIONS**](#string-functions)
    - [**Common String Functions**](#common-string-functions)
      - [**CONCAT()**](#concat)
      - [**LENGTH()**](#length)
      - [**UPPER()**](#upper)
      - [**LOWER()**](#lower)
      - [**SUBSTRING()**](#substring)
  - [**DATE FUNCTIONS**](#date-functions)
    - [**Common Date Functions**](#common-date-functions)
  - [**WINDOW FUNCTIONS**](#window-functions)
    - [**ROW\_NUMBER()**](#row_number)
    - [**RANK()**](#rank)

### **Introduction to Databases**

#### **Data**

**Data:** *Data is a collection of raw facts, figures, observations or values that can be stored and processed. Simply Data=Information in ra form.*

**Examples of Data:** 

- **Student data:** *Name = Rahul* *Age = 20* *Branch = CSE*
     These values are data. 
- **Instagram:** *Username = coding_girl* *Followers = 1500* *Posts = 120*

**NOTE:** *Data by itself may not be useful.* 

**Example:**

95
76
45
86

*These numbers alone don't tell anything. But if we know Marks of Students. Now data becomes meaningful.*

**Data vs Information**

**Data:** *Raw facts.*

**Example:** 

100
200
300

**Information:** *Processed and meaningful data.*

**Example:** *Total Sales = $689.*

#### **Database**

**Database:** *A Database is an organized collection of data stores electronically so it can be easily accessed, managed and updated. Basically, Database = Organized storage of data.*

**Example for database:** *College stores student details, marks, attendance. All this is stored in a database.*

#### **Why do we need database?**

**🔹*Without database:*** *Data is stored in files, difficult to search, data duplication, no security with database.*

**🔹*With database:*** *Fast retrieval (getting something), Organized data, Secure, Multi-user access.*

#### **What is DBMS?**

*DBMS(Database Management System) is software used to create and manage databases. Basically, DBMS = Software that manages database.*

  **Examples:** *MySQL, Oracle Database, Microsoft SQL Server* 

#### **What is RDBMS?**

*RDBMS(Relational Database Management System) stores data in related tables. Basicaly, RDBMS = Data stored in tables with relationships.*

  **Example:**

  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

#### **DBMS** vs **RDMS**

- *DBMS stores data in files, while RDBMS stores data in structured tables with relationships between them.*
- *In DBMS the security is low compared to RDBMS.*


#### **What is SQL?**

- *SQL stands for Structured Query Language.*
- *SQL is used to communicate with databases.*
- *It is used to create database, Insert data, Update data, Delete data, Fetch data.*

#### **Types of Databases:**

##### **🔹Relational Database (RDBMS):** 
*Data is stored in tables (rows & columns)*

   **Example:** *MySQL, PostgreSQL, Oracle database.*
  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

##### **🔹Non-Relational database (NoSQL):** 
*Data is stored in JSON, documents, key-value pairs.*

   **Example:** *MongoDB*
  ```json
       {
          "name":"sara",
          "marks":89
       }
  ```

---

### **Database Concepts**

#### **Table**

**Table:** *A table is a collection of related data organized into rows and columns. Basically, Collection of data (like Excel Sheet)*

**Example:**

  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

  - *This entire structure is called Table.*

#### **Row**
 
- *Row is also called as Record or Tuple*. 
- *Row is a One single entity.*
- *A row represents one complete record in a table.*
- *One horizontal entry = Row*

   **Example:**   *1   |  Sara  |   89    |*

#### **Column**

- *Column is also called as Field or Attribute.* 
- *A Column represents one Attribute/Property of data.*
- *Vertical category = Column.*

    **Example:** *Name, Marks, id*

#### **Schema**

- *Schema is the blueprint/design of a database.*
- *Includes table names, column names, datatypes, relationships, constraints.*
  
   **Example:**
   ```sql
   CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
   );
   ```
#### **Relationships between Tables**

- *Relationships connect tables using keys.*
  
#### **Primary Key**

*A primary key is a column (or set of columns) that uniquely identifies each row in a table.*

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

##### **Primary Key**

##### **Foreign Key**

**Examples for Constraints:**
```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT CHECK(marks >= 0)
);
```

---

### **SQL Data Types**

**What are Data Types?**

*Data types define what kind of data a column can store.*

**Why Data Types are important?**

- ***Memory Optimization:** Correct datatype saves memory.*
- ***Data Validation:** Wrong data prevented.*
- ***Faster Queries:** Optimized datatypes improve performance.*

#### **Numeric Data Types:**

*Used for storing numbers.*

##### **INT**

- *Store whole numbers.*

**Example:**
```sql
age INT
```

##### **BIGINT**

- *Stores very large integers.*

##### **FLOAT**

- *Stores approximate decimal numbers.*
- *FLOAT may lose precision sometimes.*

**Example:**
```sql
marks FLOAT
```

##### **DOUBLE**

- *Stores larger and more precise decimal numbers than FLOAT.*
  
##### **DECIMAL**

- *Stores exact decimal values.*
  
**Example:**
```sql
salary DECIMAL(10,2)
```

#### **String Data Types:**

*Used for storing data.*

##### **CHAR**

- *Fixed-length text datatype.*
- *It wastes memory.*
- *Faster*

##### **VARCHAR**

- *Variable-length text datatype.*
- *Saves memory.*
- *Flexible*

##### **TEXT**

- *Stores very large text data.*

**Example:**
```sql
description TEXT
```

#### **Date and Time Data Types:**

##### **DATE**

- *Stores only DATE.*
- *Format: YYYY-MM-DD*

**Example:**
```sql
dob DATE
```

##### **TIME**

- *Stores only TIME.*
- *Format: HH:MM:SS*

##### **DATETIME**

- *Stores both date and time.*

**Example:**
```sql
created_at DATETIME
```

##### **TIMESTAMP**

- *Stores timestamp values.*

#### **Boolean**

- *Stores TRUE or FALSE values.*
  
**Example:**
```sql
is_active BOOLEAN
```

#### **Enum**

- *Stores one value from predefined list.*
- *It prevents invalid values.*
  
**Example:**
```sql
gender ENUM('Male','Female')
```

---

### **SQL commands**

 *SQL commands are interactions used to communicate with the database. SQL commands are divided into 5 categories. They are:*

| Type |         Full Form            | Purpose       |
| ---- | ---------------------------- | ------------- |
| DDL  | Data Definition Language     | Structure     |
| DML  | Data Manipulation Language   | Data handling |
| DQL  | Data Query Language          | Fetch data    |
| TCL  | Transaction Control Language | Transactions  |
| DCL  | Data Control Language        | Permissions   |


#### **DDL** 

- *DDL stands for Data Definition Language.* 
- *DDL commands are used to define or modify database structure. Basically, DDL = Structure-related commands.*

##### **DDL Commands**

1. **CREATE**
2. **ALTER**
3. **DROP**
4. **TRUNCATE**
5. **RENAME**


###### **CREATE**

*Used to CREATE a new tables or databases.*

```sql
- Syntax for creating a database
CREATE DATABASE database_name;

- Example
CREATE DATABASE myfirst_db;
```

```sql
-- Syntax for creating a table
CREATE TABLE table_name(
    column1 datatype constraint,
    column2 datatype constraint
);

--Example
CREATE TABLE grocery
```
###### **ALTER**
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

SHOW DATABASES;
SHOW TABLES;
DROP TABLE grocery;

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
- *Counts number of rows.*
- *COUNT all rows means including duplicates and null rows as long as row exists.*
- *COUNT(column) counts non-null values only.*
  
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

###### **Correlated Subquery**
*Inner query depends on outer query. Runs repeatedly for each row.*
```sql
-- Example
SELECT stu_id, stu_name
FROM stud_details S1
WHERE stu_cgpa>(
SELECT AVG(stu_cgpa) FROM stud_details S2
WHERE s1.stu_branch=s2.stu_branch
);
```

#### **SET OPERATIONS**
- *Set operations are used to combine results of multiple SELECT queries.*
- **Important Rule for ALL Set Operations** *Both queries must have:*
  - *Same number of columns.*
  - *Same order of columns.*
  - *Compatible datatypes.*

##### **Types of Set Operations**

###### **UNION**
*Combines results of two queries. Removes duplicates.*
```sql
-- Syntax
SELECT column_name FROM table1
UNION
SELECT column_name FROM table2;

-- Example
SELECT stu_name FROM stud_details
UNION
SELECT name FROM stud_details2;
```

###### **UNION ALL**
*Combines results of two queries. It keeps duplicates.*
```sql
-- Syntax
SELECT column_name FROM table1
UNION ALL
SELECT column_name FROM table2;

-- Example
SELECT stu_name FROM stud_details
UNION ALL
SELECT name FROM stud_details2;
```

###### **INTERSECT**
*Returns only common rows from both queries.*
```sql
-- Syntax
SELECT column_name FROM table1
INTERSECT
SELECT column_name FROM table2;

-- Example
SELECT stu_name FROM stud_details
INTERSECT
SELECT name FROM stud_details2;
```

###### **EXCEPT**
*Returns rows from first query not present in second query.*
```sql
-- Syntax
SELECT column_name FROM table1
EXCEPT
SELECT column_name FROM table2;

-- Example
SELECT stu_name FROM stud_details
EXCEPT
SELECT name FROM stud_details2;
```

#### **STRING FUNCTIONS**
*String functions are used to manipulate text data in SQL. Basically, String Functions = Operations on text.*

##### **Common String Functions**
- CONCAT()
- LENGTH()
- UPPER()
- LOWER()
- SUBSTRING()
  
###### **CONCAT()**
*Used to combine multiple strings into one string.*
```sql
-- Syntax
SELECT CONCAT(string1, string2,......);

-- Example
SELECT CONCAT(stu_name, ' ', stu_branch)
FROM stud_details;
```

###### **LENGTH()**
*Returns number of characters in a string.*
```sql
-- Syntax
SELECT LENGTH(column_name)
FROM table_name;

-- Example
SELECT LENGTH(stu_name) 
FROM stud_details;
```

###### **UPPER()**
*Converts text into uppercase.*
```sql
-- Syntax
SELECT UPPER(column_name)
FROM table_name;

-- Example
SELECT UPPER(stu_name)
FROM stud_details;
```

###### **LOWER()**
*Converts text into lowercase.*
```sql
-- Syntax
SELECT LOWER(column_name)
FROM table_name;

-- Example
SELECT LOWER(stu_name)
FROM stud_details;
```

###### **SUBSTRING()**
*Extracts part of a string.*
```sql
-- Syntax
SELECT SUBSTRING(column_name, start, length)
FROM table_name;

-- Example
SELECT SUBSTRING(stu_name, 1, 4)
FROM stud_details;
```

#### **DATE FUNCTIONS**
*Date Functions are used to work with dates and time in SQL. Basically, Date Functions = Operations on date/time data.*

**Why Date Functions are important?**
- *Real-world database contain Order dates, Login times, Employee joining dates, Transaction timestamps.*
- *Companies use date functions for Reports, Analytics, Filtering, Tracking trends.*

##### **Common Date Functions**
- *NOW()*
- *CURRENT_DATE*
- *DATE_FORMAT()*
- *YEAR()*
- *MONTH()*
- *DAY()*

**NOW():** *Returns current date and current time.*
***When to use:** Login timestamps, Transaction tracking, Current system time.*
```sql
-- Syntax
SELECT NOW();

-- Example
SELECT NOW();
```

**CURRENT_DATE():** *Returns only current date.*
```sql
-- Syntax
SELECT CURRENT_DATE();

-- Example
SELECT CURRENT_DATE();
```

**DATE_FORMAT():** *Formats date into custom format.*
```sql
-- Syntax
SELECT DATE_FORMAT(date_column, 'format');

-- Example
SELECT DATE_FORMAT(NOW(), '%d-%m-%y');

SELECT DATE_FORMAT(NOW(), '%d-%m-%y  %H:%I');
```

**Common Format Symbols**
|  Symbol    |   Meaning   |
|------------|-------------|
|  %d        |     Day     |
|  %m        |    Month    | 
|  %Y        |     Year    |
|  %H        |     Hour    |
|  %i        |    Minutes  |


**YEAR():** *Extracts year.*
```sql
-- Syntax with example
SELECT YEAR(NOW());
```

**MONTH():** *Extracts month.*
```sql
-- Syntax with example
SELECT MONTH(NOW());
```

**DAY():** *Extracts day.*
```sql
-- Syntax with example
SELECT DAY(NOW());
```

#### **WINDOW FUNCTIONS**
*A Window function performs calculations across rows withput removing rows. Basically, GROUP BY = Combines/Collapses rows, Window Function = Keeps all rows, adds extra calculated information.*

```sql
FUNCTION_NAME() OVER(
  PARTITION BY COLUMN 
  ORDER BY column
)
```

**OVER():**

- *Apply calculation over all rows.*
- *WITHOUT grouping/removing rows.*
- *OVER() is the heart of window functions.*

**PARTITION BY**

- *Split rows into groups.*

##### **ROW_NUMBER()**
*Assigns unique sequential number to each row.*
```sql
-- Syntax
SELECT column
ROW_NUMBER() OVER(PARTITION BY COLUMN) AS alias
FROM table_name;

-- Example
SELECT s.*,
row_number() OVER(partition by stu_branch) as row_num
FROM stud_details s;
```

##### **RANK()**
*Give position or rank to rows.*