Hey everybody!!!

**SQL**

#### **Table of Contents**

- [**Table of Contents**](#table-of-contents)
- [**Data**](#data)
- [**Database**](#database)
- [**Why do we need database?**](#why-do-we-need-database)

#### **Data**

**Data:** *Data is a collection of raw facts, values, or information.*

#### **Database**
**Database:** *A Database is an organized collection of data stores electronically so it can be easily accessed, managed and updated.*
**Example for database:** *College stores student details, marks, attendance. All this is stored in a database.*

#### **Why do we need database?**
***Without database:*** *Data is stored in files, difficult to search, data duplication, no security with database.*

***With database:*** *Fast retrieval (getting something), Organized data, Secure, Multi-user access.*

**Types of Databases:**
    **Relational Database (RDBMS):** *Data is stored in tables (rows & columns)*
   **Example:** *MySQL, PostgreSQL, Oracle database.*
  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

**Non-Relational database (No SQL):** *Data is stored in JSON, documents, key-value pairs.*
**Example:** *MongoDB*
{
    "name":"sara"
    "marks":89
}

**What is SQL?**
*SQL stands for Structured Query Language. It is used to create database, Insert data, Update data, Delete data, Fetch data.*

**DBMS** vs **RDMS**

*DBMS stores data in files, while RDBMS stores data in structured tables with relationships between them.*

**Table:** *Collection of data (like Excel Sheet)*

**Row:** *Row is also called as Record. Row is a One single entity.*
    **Example:**   *1   |  Sara  |   89    |*

**Column:** *Column is also called as Field. Column is an Attribute (Property).*
    **Example:** *Name, Marks, id*

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

**Constraints:** *Constraints are rules applied to columns to maintain data accuracy and integrity.*

- **NOT NULL:** *Ensures column cannot have NULL values.*
  ```sql
        CREATE TABLE student_details(
            id INT,
            name VARCHAR(20) NOT NULL
        );
  ```
- **UNIQUE:** *Ensures all values in a column are different.*
 ```sql
        CREATE TABLE student_details (
            id INT UNIQUE,
            name VARCHAR(20)
        );
 ```
- **CHECK:** *Ensures values meet a condition.*
 ```sql
        CREATE TABLE student_details (
            age INT CHECK (age>=18)
        );
 ```
- **DEFAULT:** *Assigns default value if none provided.*
 ```sql
        CREATE TABLE student_details (
            location VARCHAR(50) DEFAULT 'HYD'
        );
 ```

 **Basic SQL commands**
 *SQL commands are used to interact with the database. There are 5 types of SQL commands. They are:*
 - *DDL - CREATE, ALTER, DROP, TRUNCATE*
 - *DML - INSERT, UPDATE, DELETE*
 - *DQL - SELECT, WHERE, DISTINCT*
 - *TCL - COMMIT, ROLLBACK, SAVEPOINT*
 - *DCL - GRANT, REVOKE*

**DDL -** *DDL stands for Data Definition Language. DDL commands are used to create, modify or delete the structure of database objects (like tables).*
