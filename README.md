Hey everybody!!!

**SQL**

#### **Table of Contents**

- [**Table of Contents**](#table-of-contents)
- [**Data**](#data)
- [**Database**](#database)
- [**Why do we need database?**](#why-do-we-need-database)
- [**Types of Databases:**](#types-of-databases)
  - [**Relational Database (RDBMS):**](#relational-database-rdbms)
  - [**Non-Relational database (No SQL):**](#non-relational-database-no-sql)
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
- [**DQL**](#dql)
- [**TCL**](#tcl)
- [**DCL**](#dcl)

#### **Data**

**Data:** *Data is a collection of raw facts, values, or information.*

#### **Database**
**Database:** *A Database is an organized collection of data stores electronically so it can be easily accessed, managed and updated.*
**Example for database:** *College stores student details, marks, attendance. All this is stored in a database.*

#### **Why do we need database?**
***Without database:*** *Data is stored in files, difficult to search, data duplication, no security with database.*

***With database:*** *Fast retrieval (getting something), Organized data, Secure, Multi-user access.*

#### **Types of Databases:**

##### **Relational Database (RDBMS):** 
*Data is stored in tables (rows & columns)*
   **Example:** *MySQL, PostgreSQL, Oracle database.*
  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

##### **Non-Relational database (No SQL):** 
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
**Foreign Key:** *A foreign key is a columns that creates a realtionship between tewo tables. It refers to the primary key of another table.*
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
**Constraints:** *Constraints are rules applied to columns to maintain data accuracy and integrity.*

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
*DDL stands for Data Definition Language. DDL commands are used to create, modify or delete the structure of database objects (like tables).*

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
*Used to delete the entire table(structure + data).*
```sql
-- Syntax
DROP TABLE table_name;

-- Example
DROP TABLE student_details;
```

#### **DML**

#### **DQL**

#### **TCL**

#### **DCL**