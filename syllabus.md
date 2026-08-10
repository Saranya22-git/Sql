# 🚀 SQL 

# 🔰 PHASE 0 — SQL & DATABASE FOUNDATION

## 📌 0.1 Introduction to Data

- What is Data?
- Data vs Information
- Types of Data

## 📌 0.2 Database Basics

- What is a Database?
- What is DBMS?
- What is RDBMS?
- What is SQL?
- Why SQL?
- SQL vs Programming Languages
- SQL vs MySQL
- Database Applications

## 📌 0.3 Types of Databases

- Relational Databases
- NoSQL Databases
- SQL vs NoSQL

## 📌 0.4 Database Architecture

- Client-Server Architecture
- Two-Tier Architecture
- Three-Tier Architecture
- OLTP vs OLAP
- Database vs Data Warehouse
- Data Mart
- ETL vs ELT

---

# 🔰 PHASE 1 — DATABASE CONCEPTS

## 📌 1.1 Core Concepts

- Tables
- Rows
- Columns
- Records
- Fields
- Schema
- Instance
- Metadata

## 📌 1.2 Relationships

- One-to-One
- One-to-Many
- Many-to-Many
- Referential Integrity

---

# 🔰 PHASE 2 — DATABASE DESIGN

## 📌 2.1 Entity Relationship Modeling

- Entity
- Attribute
- Relationship
- Cardinality
- Participation

## 📌 2.2 Keys

- Primary Key
- Foreign Key
- Candidate Key
- Alternate Key
- Composite Key
- Super Key
- Natural Key
- Surrogate Key
- Business Key

## 📌 2.3 Constraints

- NOT NULL
- UNIQUE
- PRIMARY KEY
- FOREIGN KEY
- CHECK
- DEFAULT

## 📌 2.4 Foreign Key Actions

- ON DELETE CASCADE
- ON DELETE SET NULL
- ON DELETE RESTRICT
- ON DELETE NO ACTION
- ON UPDATE CASCADE
- ON UPDATE SET NULL
- ON UPDATE RESTRICT
- ON UPDATE NO ACTION

## 📌 2.5 Column Properties

- AUTO_INCREMENT
- GENERATED Columns
- UNSIGNED
- ZEROFILL

---

# 🔰 PHASE 3 — SQL DATA TYPES

## 📌 3.1 Numeric Types

- TINYINT
- SMALLINT
- MEDIUMINT
- INT
- BIGINT
- DECIMAL
- FLOAT
- DOUBLE

## 📌 3.2 Character Types

- CHAR
- VARCHAR
- TEXT
- TINYTEXT
- MEDIUMTEXT
- LONGTEXT

## 📌 3.3 Date & Time Types

- DATE
- TIME
- DATETIME
- TIMESTAMP
- YEAR

## 📌 3.4 Binary Types

- BINARY
- VARBINARY
- BLOB

## 📌 3.5 Other Types

- BOOLEAN
- ENUM
- SET
- JSON

---

# 🔰 PHASE 4 — SQL COMMANDS

## 📌 4.1 DDL (Data Definition Language)

- CREATE
- ALTER
- DROP
- TRUNCATE
- RENAME

## 📌 4.2 DML (Data Manipulation Language)

- INSERT
- UPDATE
- DELETE
- MERGE (UPSERT)

## 📌 4.3 DQL (Data Query Language)

- SELECT

## 📌 4.4 TCL (Transaction Control Language)

- COMMIT
- ROLLBACK
- SAVEPOINT

## 📌 4.5 DCL (Data Control Language)

- GRANT
- REVOKE

---

# 🔰 PHASE 5 — SQL OPERATORS

## 📌 5.1 Arithmetic Operators

- +
- -
- *
- /
- MOD()

## 📌 5.2 Comparison Operators

- =
- !=
- <>
- >
- <
- >=
- <=

## 📌 5.3 Logical Operators

- AND
- OR
- NOT

## 📌 5.4 Special Operators

- IN
- NOT IN
- EXISTS
- NOT EXISTS
- BETWEEN
- LIKE
- IS NULL
- IS NOT NULL
- ANY
- ALL
- SOME

## 📌 5.5 Wildcards

- %
- _

---

# 🔰 PHASE 6 — DATA RETRIEVAL

## 📌 6.1 Filtering

- WHERE
- DISTINCT

## 📌 6.2 Sorting

- ORDER BY
- ASC
- DESC

## 📌 6.3 Limiting Results

- LIMIT
- OFFSET
- TOP
- FETCH FIRST
- FETCH NEXT

## 📌 6.4 Aliases

- Column Alias
- Table Alias
- AS Keyword

---

# 🔰 PHASE 7 — SQL FUNCTIONS

## 📌 7.1 Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## 📌 7.2 String Functions

- CONCAT()
- LENGTH()
- UPPER()
- LOWER()
- SUBSTRING()
- TRIM()
- REPLACE()
- REVERSE()
- LEFT()
- RIGHT()
- LPAD()
- RPAD()
- POSITION()
- INSTR()

## 📌 7.3 Date Functions

- NOW()
- CURRENT_DATE
- CURRENT_TIME
- DATE_ADD()
- DATE_SUB()
- DATEDIFF()
- EXTRACT()
- LAST_DAY()
- DAYNAME()
- MONTHNAME()

## 📌 7.4 Numeric Functions

- ROUND()
- CEIL()
- FLOOR()
- ABS()
- POWER()
- SQRT()
- RAND()

## 📌 7.5 NULL Functions

- COALESCE()
- IFNULL()
- ISNULL()
- NULLIF()

## 📌 7.6 Conditional Functions

- CASE
- IF()

---

# 🔰 PHASE 8 — GROUPING & AGGREGATION

## 📌 8.1 GROUP BY

- Single Column GROUP BY
- Multiple Column GROUP BY

## 📌 8.2 HAVING

- HAVING
- WHERE vs HAVING

## 📌 8.3 Advanced Grouping

- ROLLUP
- CUBE
- GROUPING SETS

---

# 🔰 PHASE 9 — SQL EXECUTION ORDER

## 📌 Logical Query Processing

1. FROM
2. JOIN
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
7. DISTINCT
8. ORDER BY
9. LIMIT

---

# 🔰 PHASE 10 — JOINS

## 📌 Types of Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- CROSS JOIN
- SELF JOIN
- NATURAL JOIN

## 📌 Advanced Joins

- Semi Join
- Anti Join

## 📌 Concepts

- Matching Rows
- Non-Matching Rows
- NULL Handling

---

# 🔰 PHASE 11 — SUBQUERIES

## 📌 Types

- Single Row Subquery
- Multiple Row Subquery
- Correlated Subquery
- Nested Subquery

## 📌 Usage

- WHERE
- SELECT
- FROM

## 📌 Performance

- EXISTS vs IN
- ANY
- ALL

---

# 🔰 PHASE 12 — SET OPERATIONS

- UNION
- UNION ALL
- INTERSECT
- EXCEPT (MINUS)

---

# 🔰 PHASE 13 — COMMON TABLE EXPRESSIONS (CTE)

## 📌 CTE

- WITH Clause
- Recursive CTE

---

# 🔰 PHASE 14 — VIEWS

- Simple View
- Complex View
- Updatable View
- Materialized View

---

# 🔰 PHASE 15 — TEMPORARY OBJECTS

- Temporary Tables
- Table Variables (SQL Server)
- Common Temporary Data Patterns

---

# 🔰 PHASE 16 — WINDOW FUNCTIONS

## 📌 OVER Clause

- OVER()
- PARTITION BY
- ORDER BY

## 📌 Ranking Functions

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()

## 📌 Navigation Functions

- LEAD()
- LAG()

## 📌 Value Functions

- FIRST_VALUE()
- LAST_VALUE()
- NTH_VALUE()

## 📌 Analytical Patterns

- Running Total
- Moving Average
- Cumulative Sum
- Running Difference
- Percent of Total
- Percent Rank
- CUME_DIST()

## 📌 Window Frames

- ROWS BETWEEN
- RANGE BETWEEN

---

# 🔰 PHASE 17 — STORED PROGRAMMING

## 📌 Stored Procedures

- CREATE PROCEDURE
- Parameters
- CALL Procedure

## 📌 User Defined Functions

- CREATE FUNCTION
- Return Values

## 📌 Triggers

- BEFORE INSERT
- AFTER INSERT
- BEFORE UPDATE
- AFTER UPDATE
- BEFORE DELETE
- AFTER DELETE

## 📌 Events (MySQL)

- Event Scheduler

## 📌 Sequences

- CREATE SEQUENCE
- NEXTVAL
- CURRVAL

---

# 🔰 PHASE 18 — TRANSACTIONS & CONCURRENCY

## 📌 Transactions

- COMMIT
- ROLLBACK
- SAVEPOINT

## 📌 ACID Properties

- Atomicity
- Consistency
- Isolation
- Durability

## 📌 Isolation Levels

- Read Uncommitted
- Read Committed
- Repeatable Read
- Serializable

## 📌 Concurrency Problems

- Dirty Read
- Non-Repeatable Read
- Phantom Read
- Lost Update

## 📌 Locking

- Shared Lock
- Exclusive Lock
- Row Lock
- Table Lock
- Deadlock

---

# 🔰 PHASE 19 — DATABASE NORMALIZATION

## 📌 Normal Forms

- 1NF
- 2NF
- 3NF
- BCNF
- 4NF
- 5NF

## 📌 Denormalization

- Advantages
- Disadvantages
- Trade-offs

---

# 🔰 PHASE 20 — INDEXING & QUERY OPTIMIZATION

## 📌 Indexes

- Clustered Index
- Non-Clustered Index
- Composite Index
- Covering Index
- Unique Index
- Full-Text Index

## 📌 Query Optimization

- EXPLAIN
- Execution Plan
- Full Table Scan
- Index Scan
- Index Seek
- Query Cost Analysis
- Index Tuning

---

# 🔰 PHASE 21 — PARTITIONING

- Range Partitioning
- List Partitioning
- Hash Partitioning
- Composite Partitioning

---

# 🔰 PHASE 22 — DATA WAREHOUSING

## 📌 Data Warehouse Concepts

- Fact Tables
- Dimension Tables
- Star Schema
- Snowflake Schema

## 📌 Slowly Changing Dimensions

- Type 1
- Type 2
- Type 3

## 📌 Fact Table Types

- Transaction Fact
- Snapshot Fact
- Accumulating Snapshot Fact

---

# 🔰 PHASE 23 — DATABASE SECURITY

## 📌 Security Concepts

- Users
- Roles
- Permissions
- Access Control

## 📌 SQL Injection

- SQL Injection
- Parameterized Queries
- Prevention Techniques

---

# 🔰 PHASE 24 — SQL PERFORMANCE TUNING

- Query Optimization
- Execution Plans
- Index Tuning
- Query Refactoring
- Performance Best Practices

---

# 🔰 PHASE 25 — SQL FOR DATA ANALYTICS

## 📌 Data Cleaning

- Handling NULLs
- Removing Duplicates
- Duplicate Detection
- Standardization
- Text Cleaning
- Data Validation
- Outlier Detection

## 📌 Business SQL

- Highest Salary
- Second Highest Salary
- Nth Highest Salary
- Department-wise Analysis
- Running Totals
- Monthly Sales
- Customer Segmentation

## 📌 Product Analytics

- DAU
- WAU
- MAU
- Conversion Rate
- Funnel Analysis

## 📌 Customer Analytics

- Cohort Analysis
- Retention Analysis
- Churn Analysis
- Customer Lifetime Value (CLV)

## 📌 KPI Reporting

- Revenue
- Profit Margin
- Growth Rate

## 📌 Pivoting

- PIVOT
- UNPIVOT
- Crosstab Reports

---

# 🔰 PHASE 26 — REAL-WORLD SQL PROJECTS

- College Management System
- Hospital Management System
- Banking System
- E-Commerce Database
- Netflix Database
- Food Delivery Database
- Library Management System
- HR Management System

---

# 🔰 PHASE 27 — SQL INTERVIEW PREPARATION

## 📌 Beginner SQL Questions

## 📌 Intermediate SQL Questions

## 📌 Advanced SQL Questions

## 📌 SQL Coding Patterns

- Second Highest Salary
- Nth Highest Salary
- Top N Per Group
- Duplicate Records
- Remove Duplicates
- Running Totals
- Gap & Island Problems
- Consecutive Login Days
- Latest Record Per User
- Employee Manager Problems
- Recursive CTE Problems

## 📌 Practice Platforms

- LeetCode SQL
- HackerRank SQL
- DataLemur
- StrataScratch

## 📌 Mock Interviews

- HR Round
- Technical SQL Round
- Live SQL Coding
- Project Discussion

---
# 🎯 COURSE OUTCOME

After completing this roadmap, you will be able to:

- Design relational databases
- Write beginner to advanced SQL queries
- Optimize SQL queries
- Understand database internals
- Build real-world SQL projects
- Solve SQL interview questions confidently
- Work with SQL in Data Analytics, Data Engineering, AI/ML, and Software Engineering roles