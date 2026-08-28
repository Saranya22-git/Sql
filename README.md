Hey!!

**SQL**

# **Table of Contents**

- [**Table of Contents**](#table-of-contents)
- [**SQL and DATABASE FOUNDATION**](#sql-and-database-foundation)
  - [**Introduction to Data**](#introduction-to-data)
    - [**Data**](#data)
    - [**Data vs Information**](#data-vs-information)
    - [**Types of Data**](#types-of-data)
  - [**Database Basics**](#database-basics)
    - [**Database**](#database)
    - [**DBMS**](#dbms)
    - [**RDBMS**](#rdbms)
    - [**SQL**](#sql)
    - [**Why SQL?**](#why-sql)
    - [**SQL vs Programming Language**](#sql-vs-programming-language)
    - [**SQL vs MySQL**](#sql-vs-mysql)
    - [**Database Applications**](#database-applications)
  - [**Types of Databases**](#types-of-databases)
    - [**Relational Databases**](#relational-databases)
    - [**NoSQL Databases**](#nosql-databases)
    - [**SQL vs NoSQL**](#sql-vs-nosql)
  - [**Database Architecture**](#database-architecture)
    - [**Client-Server Architecture**](#client-server-architecture)
    - [**Two-Tier Architecture**](#two-tier-architecture)
    - [**Three-Tier Architecture**](#three-tier-architecture)
    - [**OLTP vs OLAP**](#oltp-vs-olap)
    - [**Database vs Data Warehouse**](#database-vs-data-warehouse)
    - [**Data Mart**](#data-mart)
    - [**ETL vs ELT**](#etl-vs-elt)
- [**Database Concepts**](#database-concepts)
  - [**Core Concepts**](#core-concepts)
    - [**Tables**](#tables)
    - [**Rows**](#rows)
    - [**Column**](#column)
    - [**Schema**](#schema)
    - [**Instance**](#instance)
    - [**Metadata**](#metadata)
  - [**Relationships**](#relationships)
    - [**One-to-One**](#one-to-one)
    - [**One-to-Many**](#one-to-many)
    - [**Many-to-Many**](#many-to-many)
    - [**Referential Integrity**](#referential-integrity)
- [**Database Design**](#database-design)
  - [**Entity Relationship Modeling**](#entity-relationship-modeling)
    - [**Entity**](#entity)
    - [**Attribute**](#attribute)
    - [**Relationship**](#relationship)

# **SQL and DATABASE FOUNDATION**

## **Introduction to Data**

### **Data**

**What is Data?**

*Data is a collection of raw facts, figures, or values that can be processed to produce meaningful information.*

**Example:**

| Student ID | Name  | Department | CGPA |
| ---------- | ----- | ---------- | ---- |
| 101        | Rahul | CSE        | 9.1  |
| 102        | Priya | AI & DS    | 8.8  |
| 103        | Arjun | ECE        | 8.4  |

*These values are data.*

---

### **Data vs Information**

| Data              | Information                     |
| ----------------- | ------------------------------- |
| Raw facts         | Processed and meaningful result |
| Individual values | Useful summary or conclusion    |
| Input             | Output                          |

---

### **Types of Data**

1. **Qualitative Data (Categorical Data):** *Qualitative data describes qualities or characteristics. It is non-numerical data.*

    **Examples:** *Name, Gender, City, Department, Blood Group etc.,*

2. **Quantitative Data (Numerical Data):** *Quantitave data represents numbers that can be measured or counted.*

    **Example:** *Age, Salary, Marks, Height, Weight etc.,*

---

**Quantitative Data Types**

1. **Discrete Data:** *Data that can be counted.*

    **Example:** *Number of Students, Number of employees, Number of books etc.,*

2. **Continuous Data:** *Data that can be measured and may contain decimal values.*

    **Example:** *Height, Weight, Temperature, Distance, Time etc.,*

---

## **Database Basics**

### **Database**

**What is a Database?**

*A Database is an organized collection of related data that is stored electronically and can be easily accessed, managed, updated, and retrieved.*

**Example:**

- **Amazon Database:** *Stores Customers, Products, Orders, Payment, Reviews.*
- **Hospital Database:** *Stores Patients, Doctors, Appointments, Medicines, Bills.*
- **College Database:** *Stores Students, Faculty, Courses, Departments, Marks, Attendance.*
- **Instagram Database:** *Users, Posts, Likes, Followers, Comments, Messages.*

---

**Database vs Table**

| Database                     | Table                                  |
| ---------------------------- | -------------------------------------- |
| Collection of related tables | Collection of related rows and columns |
| Can contain many tables      | Contains data                          |
| Example: `CollegeDB`         | Example: `Students`                    |

---

### **DBMS**

**What is DBMS?**

*DBMS (Database Management System) is software that allows users to create, store, retrieve, update, and manage databases efficiently.*

**Example:**

*Imagine a restaurant*

- *Kitchen = Database*
- *Waiter = DBMS*
- *Customer = User*

*You don't walk into the kitchen and cook your own food.*

*Instead:*

1. *You give your order to the waiter*
2. *The waiter tells the kitchen*
3. *The kitchen prepares the food*
4. *The waiter brings it back to you*

*Similarly:*

1. *You write an SQL Query*
2. *The DBMS understands it*
3. *It accesses the database*
4. *It returns the result*

---

**What can a DBMS do?**

*DBMS helps you Create databases, Create tables, Store data, Retrieve data, Update data, Delete data, Secure data, Backup data, Manage multiple users, Control access to data.*

---

**Examples of DBMS**

*Some popular DBMS software. These are all DBMS software.*

| DBMS                 | Type            |
| -------------------- | --------------- |
| MySQL                | Relational DBMS |
| PostgreSQL           | Relational DBMS |
| Oracle Database      | Relational DBMS |
| Microsoft SQL Server | Relational DBMS |
| SQLite               | Relational DBMS |
| MariaDB              | Relational DBMS |

---

**Database vs DBMS**

| Database                   | DBMS                              |
| -------------------------- | --------------------------------- |
| Collection of related data | Software used to manage databases |
| Stores the data            | Manages the data                  |
| Passive (data)             | Active (software)                 |

---

### **RDBMS**

**What is RDBMS?**

*An RDBMS (Relational Database Management System) is a type of DBMS that stores data in the form of tables and establishes relationship between those tables using keys.*

---

**Example:** *Imagine a college. Instead of one huge table, create separate tables*

```txt
College Database

Students
Faculty
Courses
Departments
Attendance
Results
```

*These tables are connected. For example, One student can enroll in many courses, One department has many students, One faculty member teaches many courses.*

---

**Why do Companies use as RDBMS?**

- *Companies such as Amazon, Flipkart, Swiggy, Netflix, Banks, Hospitals store millions of records.*
- *An RDBMS helps them reduce duplicate data, organize information into related tables, retrieve data efficiently, keep data consistent.*

---

**Characteristics**

- *Stores data in tables*
- *Supports relationship between tables*
- *Reduce data redundancy (duplicate data)*
- *Uses SQL for data operations*
- *Maintains data integrity and consistency*

---

### **SQL**

**What is SQL?**

*SQL (Structured Query Language) is the standard language used to communicate with a Relational Database Management System (RDBMS) to store, retrieve, update, delete, and manage data.*

---

**Why do we need SQL?**

*Imagine Amazon has millions of products stored in its database. Suppose you search for ```Laptop```.*
- *How does Amazon find all laptops?*
- *Do you directly open the database?*

*Instead*
1. *You type Laptop in the search box*
2. *The application converts your request into an SQL query*
3. *SQL sends the request to the RDBMS*
4. *The RDBMS searches the database*
5. *The matching products are returned.*

*Without SQL, we cannot communicate with an RDBMS.*

---

### **Why SQL?**

**Why SQL is used?**

*SQL is used to communicate with an RDBMS to create, retrieve, update, delete and manage data stored in a database.*

---

**What can we do using SQL?**

*SQL is used for many operations.*

1. **Create Databases:** *A Company wants to create a new database. SQL can create it.*

    ```sql
    CREATE DATABASE CompanyDB;
    ```

2. **Create Tables:** *Inside CompanyDB, create an Employee Table.*

    ```sql
    CREATE TABLE Employees (...);
    ```

3. **Insert Data:** *A new employee joins. SQL inserts the employee record.*

    ```sql
    INSERT INTO Employees ...
    ```

4. **Retrieve Data:** *HR wants to see all employees.*

    ```sql
    SELECT * FROM Employees;
    ```

5. **Update Data:** *An employee changes their phone number. SQL updates only that record.*

    ```sql
    UPDATE Employees ...
    ```

6. **Delete Data:** *An employee leaves the company. SQL removes the record if required.*

    ```sql
    DELETE FROM Employees ...
    ```

7. **Search Specific Data:** *Find employees whose salary is greater than ₹50,000. SQL can filter the data.*

8. **Sort Data:** *Display employees from highest salary to lowest salary. SQL can sort the results.*
   
9. **Combine Data:** *Show Employee Name, Department Name. Even if they are stored in different tables.*

10. **Generate Reports:** *A manager wants to know Total sales this month, Highest salary, Average attendance. SQL can generate these reports.*

---

**Real-World uses of SQL**

- **Banking:** *Check account balance, Deposit money, Withdraw money, Transaction history.*
- **Amazon:** *Search products, Add to cart, Place orders, Track orders.*
- **Instagram:** *Login, Upload posts, Like posts, Follow users.*
- **Netflix:** *Search movies, Watch history, Recommendations, User profiles.*
- **Hospital:** *Patient records, Doctor schedules, Appointments, Billing.*

---

### **SQL vs Programming Language**

*SQL is not a general-purpose programming language. It is a query language used to communicate with relational databases.*

---

**Why isn't SQL a programming language?**

- *Programming languages like Python, Java, C++, C# can be used to build websites, mobile apps, games, AI applications, desktop software these can perform calculations, make decisions, use loops, create functions, and control the flow of an application.*
- *SQL only works with data inside a database. It can Store data, retrieve data, update data, delete data, manage database objects. It cannot create a website or build an android app by itself.*
- *That's why SQL is called a query language.*

---

**SQL vs Programming Language**

| SQL                        | Programming Language            |
| -------------------------- | ------------------------------- |
| Query language             | General-purpose language        |
| Works with databases       | Builds applications             |
| Retrieves and manages data | Creates software                |
| Uses SQL statements        | Uses programming syntax         |
| Cannot build apps alone    | Can build complete applications |

---

**How SQL and Programming Languages work together?**

```txt
User
   │
   ▼
Application (Python / Java / C#)
   │
   ▼
SQL Query
   │
   ▼
RDBMS
   │
   ▼
Database
```

1. *User searches for ```Laptop```.*
2. *The application (written in Java or Python) receives the request.*
3. *The application sends an SQL query.*
4. *The RDBMS executes the query.*
5. *Results are returned to the application.*
6. *The application displays the products.*

*SQL and programming languages work together they don't replace each other.*

---

### **SQL vs MySQL**

**What is SQL?**

*SQL (Structured Query Language) is a standard language used to communicate with relational databases.*

**What is MySQL?**

*MySQL is an open-source Relational Database Management System (RDBMS) that uses SQL to manage databases.*

---

**How SQL and MySQL work together?**

*Suppose you write this query ```SELECT * FROM Students;```*

**Step-1:** *You write the SQL query*

**Step-2:** *MySQL receives the query*

**Step-3:** *MySQL checks whether the query is correct*

**Step-4:** *MySQL searches the database*

**Step-5:** *MySQL returns the result*

---

**SQL vs MySQL**

| SQL                                  | MySQL                                                                          |
| ------------------------------------ | ------------------------------------------------------------------------------ |
| Language                             | Software (RDBMS)                                                               |
| Stands for Structured Query Language | Stands for "My" + SQL (named after co-founder Michael Widenius's daughter, My) |
| Used to communicate with databases   | Used to create and manage databases                                            |
| Standard language                    | One implementation of an RDBMS                                                 |
| Cannot store data by itself          | Stores and manages data                                                        |
| Used by many RDBMS products          | Uses SQL to perform operations                                                 |

---

### **Database Applications**

*A Database application is any software or system that stores, retrieves, updates, and manages data using a database.*

---

**Real-Worl Database Applications**

1. **Banking System:** *A bank stores millions of customer records.*
2. **E-commerce:** *Amazon, Flipkart*
3. **Social Media:** *Instagram, Facebook, X, LinkedIn*
4. **OTT Platforms:** *Netflix, Prime Video, Disney+*
5. **Hospital Management**
6. **College Management**
7. **Airline Reservations**
8. **Ride Booking:** *Uber, Ola*
9. **Food Delivery:** *Swiggy, Zomato*
10. **Company HR System**

---

## **Types of Databases**

### **Relational Databases**

*A Relational Database is a database that stores data in the form of tables (rows and columns) and establishes relationship between those tables.*

---

**Characteristics of a Relational Database**

1. *Stores data in tables*
2. *Data is Organized into rows and columns*
3. *Tables are related*
4. *Uses keys*
5. *Uses SQL*

---

**Relational Database vs RDBMS**

| Relational Database          | RDBMS                              |
| ---------------------------- | ---------------------------------- |
| Collection of related tables | Software that manages those tables |
| Stores data                  | Manages the database               |
| Example: CollegeDB           | Example: MySQL                     |

---

### **NoSQL Databases**

*NoSQL (Not only SQL) is a type of database that stores data in formats other than tables, such as documents, key-value pairs, columns, or graphs.*

---

**Types of NoSQL Databases**

1. **Document Database:** *Stores data as documents (usually (JSON).*

    **Example:**
    ```json
    {
        "name": "Rahul",
        "age": 12,
        "skills": ["Python","SQL"]
    }
    ```

    **Popular Software:** *MongoDB, CouchDB*

2. **Key-Value Database:** *Stores data as Key → Value*

    **Example:**
    ```txt
    User101 → Rahul
    User102 → Saran
    ```

    **Popular Software:** *Redis, Amazon DynamoDB*

3. **Column-Family Database:** *Stores data by columns instead of traditional rows. Used for very large datasets.*

    **Popular Software:** *Apache Cassandra, HBase*

4. **Graph Database:** *Stores relationships between data.*

    **Example:**
    ```txt
    Rahul
    |
    Friend
    |
    Saran
    ```
    
    *Used in Social Networks, Recommendation Systems, Fraud Detection.*

    **Popular Software:** *Neo4j*

---

### **SQL vs NoSQL**

| SQL                                   | NoSQL                                                                     |
| ------------------------------------- | ------------------------------------------------------------------------- |
| Relational Database                   | Non-Relational Database                                                   |
| Stores data in tables                 | Stores data in documents, key-value, columns, or graphs                   |
| Fixed schema                          | Flexible schema                                                           |
| Uses SQL language                     | Uses database-specific query methods (some support SQL-like syntax)       |
| Best for structured data              | Best for unstructured and semi-structured data                            |
| Strong relationships between tables   | Relationships are usually handled differently                             |
| ACID transactions are a core strength | Often optimized for scalability and flexibility (depends on the database) |
| Excellent for complex JOIN queries    | Many NoSQL databases avoid JOINs or handle relationships differently      |

---

**When should we use SQL?**

*Use SQL when data is highly structured, tables have relationships, accuracy and cosistency are critical, financial transactions are involved.*

**Examples:** *Banking, Hospital Management, College Management, Airline Reservation, Payroll Systems*

**When should we use NoSQL?**

*Use NoSQL when data structure changes frequently, large amounts of unstructured data are stored, high scalability is needed, fast reads/writes are important.*

**Examples:** *Social media, Chat Applications, IoT systems, Recommendation engines, Gaming platforms*

---

## **Database Architecture**

### **Client-Server Architecture**

*Client-Server architecture is a model in which a client requests a service or data, and a server processes the request and sends back the response.*

---

**What is a Client?**

*A Client is the application or device that requests a service from a server.*

**Examples:** *Web browser, Mobile application, Desktop application, SQL Client, MySQL Workbench.*

*For example. when you use MySQL Workbench and execute ```SELECT * FROM Employees;```. MySQL Workbench acts as the Client.*

---

**What is a Server?**

*A Server is a system that receives requests, processes them, and provides a respone or service.*

*In a database system, the database server receives SQL queries, processes queries, accesses stored data, performs required operations, sends results back.*

---

### **Two-Tier Architecture**

*Two-tier architecture is a client-server architecture in which the client directly communicates with the database server.*

---

**Two-Tier Architecture Components**

*There are only two major parts.*

1. **Client:** *The client contains the user interface and often some application/business logic.*

    **Example:** *```Employee Management App``` ther user interacts with it.*

2. **Database Server:** *The database server manages the database. It handles SQL queries, data retrieval, data insertion, data updates, data deletion, database access.*

---

**IMPORTANT POINT:** *The client directly connects to the database server.*

---

### **Three-Tier Architecture**

*Three-tier architecture is an architecture in which an application is divided into three separate layers ```Presentation Layer```, ```Application Layer```, and ```Data Layer```.*

---

1. **Presentation Layer:** *This is the part the user sees and interacts with.*

    **Examples:** *Website, Mobile App, Login Page, Search Box, Buttons, Forms.*

2. **Application Layer:** *This is the middle layer. It receives requests from the presentation layer and decides what should happen.*

    *It handles things like business rules, authentication, validation, calculations, processing requests, communicating with the database.*

3. **Data Layer:** *This is where the application's data is stored and managed.*

    *It usually contains database, database server, tables, stored data.*

---

**Comparison**

| Two-Tier                              | Three-Tier                                    |
| ------------------------------------- | --------------------------------------------- |
| 2 layers                              | 3 layers                                      |
| Client → Database                     | Client → Application → Database               |
| Direct database connection            | Application layer between client and database |
| Common in simpler/legacy applications | Common in modern web applications             |
| Less separation of responsibilities   | Better separation of responsibilities         |

---

### **OLTP vs OLAP**

**What is OLTP?**

- *OLTP (Online Transaction Processing) is a system designed to handle a large number of day-to-day transactions quickly and reliably.*
- *For example placing an order, making a payment, booking a ticket, transferring money, updating customer information.*

**Example:** *Amazon*

*You purchase a laptop. The system needs to:*
1. *Create your order*
2. *Record the payment*
3. *Reduce product stock*
4. *Store shipping information*

*These are day-to-day operations.*

---

**What is OLAP?**

*OLAP (Online Analytical Processing) is a system designed for analyzing large amounts of data to identify trends, patterns, and insights.*

**Example:** *A company wants to know "Which product category generated the highest revenue last year?" The system may analyze Millions of orders, Customer data, product data, dates, regions.*

---

**OLTP vs OLAP**

| OLTP                                   | OLAP                                   |
| -------------------------------------- | -------------------------------------- |
| Online Transaction Processing          | Online Analytical Processing           |
| Runs day-to-day operations             | Analyzes business data                 |
| Transaction-oriented                   | Analysis-oriented                      |
| Many small transactions                | Fewer but complex analytical queries   |
| Usually current operational data       | Often historical/integrated data       |
| Fast INSERT/UPDATE/DELETE              | Heavy SELECT/aggregation queries       |
| Used by operational users/applications | Used by analysts, managers, data teams |
| Example: Order processing              | Example: Sales analysis                |

---

**Database used in OLTP vs OLAP**

**OLTP:** *Usually works with an operational database.*

**Examples:** *MySQL, PostgreSQL, SQL Server, Oracle*

**OLAP:** *Often works with a data warehouse or analytical system.*

**Examples:** *Snowflake, Amazon Redshift, Google BigQuery, Azure Synapse.*

---

### **Database vs Data Warehouse**

**Database:** *A database is a system used to store and manage current operational data for applications and day-to-day transactions.*

**Data Warehouse:** *A data warehouse is a centralized system that stores integrated and often historical data from multiple sources for reporting, analysis, and decision-making.*

---

**Database vs Data Warehouse**

| Database                                      | Data Warehouse                              |
| --------------------------------------------- | ------------------------------------------- |
| Mainly supports operational applications      | Mainly supports analytics and reporting     |
| Current operational data is important         | Historical and integrated data is important |
| Used for transactions                         | Used for analysis                           |
| Frequently INSERT/UPDATE/DELETE               | Mostly analytical SELECT queries            |
| Usually optimized for transactional workloads | Optimized for analytical workloads          |
| Supports OLTP workloads                       | Supports OLAP workloads                     |
| Used by applications                          | Used by analysts, managers, BI systems      |
| Example: customer orders                      | Example: multi-year sales analysis          |

---

### **Data Mart**

*A Data Mart is a smaller, subject-specific part of a data warehouse that is designed for a particular department, business function, or analytical purpose.*

---

**Types of Data Marts**

1. **Dependent Data Mart:** *A dependent data mart gets its data from an existing data warehouse.*
2. **Independent Data Mart:** *An independent data mart gets data directly from operational systems or other sources rather than from a central data warehouse.*
3. **Hybrid Data Mart:** *A hybrid data mart can combine data from data warehouse, operational databases and other external sources.*

---

### **ETL vs ELT**

**What is ETL?**

- *ETL stands for ```E - Extract``` ```T - Transform``` ```L - Load```*
- *It is a process used to move data from one or more sources into a target system such as a data warehouse.*
- *ETL is a data integration process in which data is extracted from source systems, transformed into the required format, and then loaded into the target data warehouse or system.*

---

- **Step-1** **Extract:** *Extract means collecting data from source systems.*

    *Sources can include SQL databases, Excel files, CSV files, APIs, CRM systems, Application databases.*

- **Step-2** **Transform:** *Now we clean and prepare the data. Transformation can include Removing duplicates, Handling NULL values, Changing data types, Standardizing formats, Calculating columns, Joining data, Filtering records.*

    **Example:** *Suppose the source contains*
    ```txt
    Name       City
    Rahul      hyd
    Priya      HYDERABAD
    Arjun      Hyderabad
    ```

    *We might standardize the city*
    ```txt
    Name       City
    Rahul      Hyderabad
    Priya      Hyderabad
    Arjun      Hyderabad
    ```

- **Step-3** **Load:** *After transformation, the cleaned data is loaded into the target system.*

---

**What is ELT?**

- *ELT stands for ```E - Extract``` ```L - Load``` ```T - Transform```.*
- *ELT is the data integration process in which data is extracted from source systems, loaded into the target data warehouse or data platform, and transformed there.*

---

**ETV vs ELT**

| ETL                                                   | ELT                                                      |
| ----------------------------------------------------- | -------------------------------------------------------- |
| Extract → Transform → Load                            | Extract → Load → Transform                               |
| Transformation happens before loading                 | Transformation happens after loading                     |
| Data is cleaned before entering the target            | Raw data can be loaded first                             |
| Traditionally common with traditional warehouses      | Common with modern cloud data platforms                  |
| Requires transformation infrastructure before loading | Uses target system's processing power for transformation |

---

# **Database Concepts**

## **Core Concepts**

### **Tables**

**What is a Table?**

*A Table is a structured collection of related data organized into rows and columns in a relational database.*

**Example:**

| employee_id | name  | department | salary |
| ----------- | ----- | ---------- | ------ |
|         101 | Rahul | IT         |  60000 |
|         102 | Priya | HR         |  55000 |
|         103 | Arjun | Sales      |  50000 |

---

**Structure of a Table**

*A Table mainly consists of Columns and Rows. For example:*

| employee_id | name  | department | salary |
| ----------- | ----- | ---------- | ------ |
|         101 | Rahul | IT         |  60000 |
|         102 | Priya | HR         |  55000 |
|         103 | Arjun | Sales      |  50000 |

*Here:*
- *```Employee_ID, Name, Department, Salary``` → Columns*
- *Each horizontal entry → Rows*

---

**Creating a Table using SQL**

```sql
CREATE TABLE table_name (
    column_name datatype,
    column_name datatype,
    ......
);
```

**Example:**
```sql
CREATE TABLE employees (
    employee_id INT, 
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
```

---

**Inserting Data**

```sql
INSERT INTO table_name (column_name1, column_name2,....)
VALUES (value1, value2,..........);
```

**Example:**
```sql
INSERT INTO employees (employee_id, name, department, salary)
VALUES (101, 'Rahul', 'IT', 60000);
```

```sql
INSERT INTO employees (employee_id, name, department, salary)
VALUES (102, 'Priya', 'HR', 55000);
```

---

**Retrieving Data**

```sql
SELECT * FROM table_name;
```

**Example:**
```sql
SELECT * FROM employees;
```

---

### **Rows**

*A row is a single horizontal entry in a table that represents one record or one instance of an entity.*

**Example:**
| employee_id | name  | department | salary |
| ----------- | ----- | ---------- | ------ |
|         101 | Rahul | IT         |  60000 |
|         102 | Priya | HR         |  55000 |
|         103 | Arjun | Sales      |  50000 |

**Row 1:** *This represents Rahul's complete student information.*

```txt
101 | Rahul | IT | 60000
```

---

**Adding a Row using SQL**

```sql
INSERT INTO employees (employee_id, name, department, salary)
VALUES (103, 'Arjun', 'Sales', 50000);
```

---

### **Column**

*A Column is a vertical set of values in a table that represents one attribute or property of the data.*

**Example:**
| employee_id | name  | department | salary |
| ----------- | ----- | ---------- | ------ |
|         101 | Rahul | IT         |  60000 |
|         102 | Priya | HR         |  55000 |
|         103 | Arjun | Sales      |  50000 |

*Here we have 4 columns*
```txt
employee_id
name
department
salary
```

---

**Selecting a Specific column**

**Syntax:**
```sql
SELECT column_name FROM table_name;
```

**Example:**
```sql
SELECT name FROM employees;
```

---

**Selecting Multiple Columns**

**Syntax:**
```sql
SELECT column1, column2 FROM table_name;
```

**Example:**
```sql
SELECT name, department FROM employees;
```

---

**Selecting All Columns**

```sql
SELECT * FROM employees;
```

*```*``` means all columns in this context*

---

### **Schema**

*A database schema is the logical structure or blueprint of a database that defines how data is organized, including tables, columns, relationships, constraints, views, and other database objects.*

**Example:**
```sql
CREATE TABLE employees (
    employee_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
```

*This is the structure/schema of the table*

```sql
INSERT INTO employees
(employee_id, name, department, salary)
VALUES
(101, 'Rahul', 'IT', 60000),
(102, 'Priya', 'HR', 55000);
```

*These values are data, not the schema*

---

*Suppose company database has*

```txt
CompanyDB
│
├── employees
├── departments
└── projects
```

*and the ```employees``` table has*

```txt
employees
│
├── employee_id
├── name
├── department
└── salary
```

*The schema describes this organization. It can also describe*

```txt
employee_id → INT
name → VARCHAR
salary → DECIMAL
```

*and relationship such as*

```txt
employees → departments
```

*and constraints such as*

```txt
employee_id → PRIMARY KEY
```

*So schema is more than just the table names. It represents the database's overall logical structure.*

---

**How do we see the Structure in MySQL?**

**Syntax:**
```sql
DESC table_name;
```

**Example:**
```sql
DESC employees;
```

```sql
DESCRIBE employees;
```

*It shows things like*

```txt
Field          Type
--------------------------
employee_id    INT
name           VARCHAR(50)
department     VARCHAR(50)
salary         DECIMAL(10,2)
```

---

### **Instance**

*A database Instance is the actual data stored in the database at a particular point in time.*

---

**What changes the Instance?**

*Operations that modify the actual data*

```txt
INSERT - Adds data
UPDATE - Changes existing data
DELETE - Removes data
```

**What changes the Schema?**

*Operations that modify the structure such as*

```txt
ALTER TABLE
```

---

**Schema vs Instance**

| Schema                                    | Instance                    |
| ----------------------------------------- | --------------------------- |
| Defines the structure                     | Represents the actual data  |
| Relatively stable                         | Changes frequently          |
| Defines tables, columns, data types, etc. | Contains actual rows/values |
| Blueprint                                 | Current snapshot/state      |

---

### **Metadata**

*Metadata is data that describes other data.*

**Example:** *Imagine a photography*

**Actual data:** *The photography itself*

**Metadata:** *Information about the photography*

```txt
File name: vacation.jpg
File type: JPEG
Size: 5 MB
Dimensions: 4000 × 3000
Date created: ...
```

---

**Metadata vs Schema**

**Schema:** *Defines the structure/blueprint of the database*

**Metadata:** *Provides information describing the data/database objects*

*They are closely related but they're not exactly the same thing.*

---

## **Relationships**

### **One-to-One**

*A one-to-one (1:1) relationship is a relationship where one record in one table is associated with at most one record in another table, and vice versa.*

**Example:** *Suppose our ```employees``` table contains*
```txt
employees
+-------------+--------+------------+--------+
| employee_id | name   | department | salary |
+-------------+--------+------------+--------+
| 101         | Rahul  | IT         |  60000 |
| 102         | Priya  | HR         |  55000 |
| 103         | Arjun  | Sales      |  50000 |
+-------------+--------+------------+--------+
```

*Now suppose we have additional sensitive/private information*

```txt
employee_profiles
+-------------+--------------+------------+
| employee_id | phone        | address    |
+-------------+--------------+------------+
| 101         | 9876543210   | Hyderabad  |
| 102         | 9123456780   | Vijayawada |
| 103         | 9988776655   | Chennai    |
+-------------+--------------+------------+
```

*Here*

```txt
employees              employee_profiles

101 Rahul       ←──→   101 Hyderabad
102 Priya       ←──→   102 Vijayawada
103 Arjun       ←──→   103 Chennai
```

- *Each employee has one profile*
- *Each profile belongs to one employee*
- *Therefor One-to-One relationship*

---

**Syntax:**
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
```

```sql
CREATE TABLE employee_profiles (
    employee_id INT PRIMARY KEY,
    phone VARCHAR(15),
    address VARCHAR(100),

    FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);
```

- *The Primary Key of ```employee_profiles```*
- *A Foreign Key referencing ```employees```*
- *This helps enforce the one-to-one relationship*

---

### **One-to-Many**

*A one-to-many (1:M) relationship is a relationship where one record in one table can be associated with many records in another table, while each record in the second table is associated with one record in the first table.*

**Example:**

- **Company:** *1 Department → Many Employees*
- **Customers & Orders:** *1 Customer → Many Orders*
- **Teacher & Students:** *1 Teacher → Many Students*
- **Category & Products:** *1 Category → Many Products*
- **YouTube Channel & Videos:** *1 Channel → Many Videos*

---

### **Many-to-Many**

*A many-to-many (M:N) relationship is a relationship where one record in Table A can be associated with many records in Table B, and one record in Table B can also be associated with many records in Table A.*

**Example:** *One student can take many courses ```Students ↔ Courses```*

---

**Why can't we directly store it?**

*Suppose we have*

**Students**

| student_id | name  |
| ---------- | ----- |
|        101 | Rahul |
|        102 | Priya |
|        103 | Arjun |


**Courses**

| course_id | course_name |
| --------- | ----------- |
|         1 | SQL         |
|         2 | Python      |
|         3 | Excel       |


*Now*
- *Rahul takes SQL and Python*
- *Priya takes SQL and Excel*
- *Arjun takes SQL and Python*
- *If we try to put everything directly into one table, we might get*

| student_id | student_name | courses     |
| ---------- | ------------ | ----------- |
|        101 | Rahul        | SQL, Python |
|        102 | Priya        | SQL, Excel  |
|        103 | Arjun        | SQL, Python |

- *This creates problems because one column is containing multiple values. Instead we use a junction table.*

---

*A many-to-many relationship is usually implemented using a third table called as*
- *Junction table*
- *Bridge table*
- *Associative table*

*These terms can refer to the same basic idea.*

---

**SQL Syntax**

**Create Students**
```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);
```

**Create Courses**
```sql
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
```

**Create Junction Table**
```sql
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,

    FOREIGN KEY (student_id)
    REFERENCES students(student_id),

    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);
```

**Insert Students**
```sql
INSERT INTO students (student_id, name)
VALUES 
(101, 'Rahul'),
(102, 'Priya'),
(103, 'Arjun');
```

**Insert Courses**
```sql
INSERT INTO courses (course_id, course_name)
VALUES
(1, 'SQL'),
(2, 'Python'),
(3, 'Excel');
```

**Insert Relationships**
```sql
INSERT INTO student_courses (student_id, course_id)
VALUES
(101, 1),
(101, 2),
(102, 1),
(102, 3),
(103, 1),
(103, 2);
```

---

### **Referential Integrity**

*Referential Integrity is a rule that ensures a foreign key value in one table referes to a valid existing key in another table.*

---

**Departments**

| department_id | department_name |
| ------------- | --------------- |
|             1 | IT              |
|             2 | HR              |
|             3 | Sales           |

**Employees**

| employee_id | name  | department_id |
| ----------- | ----- | ------------- |
|         101 | Rahul |             1 |
|         102 | Priya |             2 |
|         103 | Arjun |             1 |

*Look at Rahul ```Rahul → department_id = 1``` and in departments ```department_id = 1 → IT``` So rahul's department exists.*

---

**What would be Invalid?**

*Suppose we try*

| employee_id | name  | department_id |
| ----------- | ----- | ------------- |
|         104 | Sneha |        **99** |

*But our departments are only*

```txt
1 → IT
2 → HR
3 → Sales
```

*There is no department 99. This is an invalid reference.*

---

**How do we Enforce it?**

*We use a Foreign Key*

```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
```

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
```

---

**Foreign Key does not have to be unique**

| employee_id | name  | department_id |
| ----------- | ----- | ------------- |
|         101 | Rahul |             1 |
|         102 | Priya |             2 |
|         103 | Arjun |             1 |
|         104 | Sneha |             1 |

*Three employees have ```department_id = 1```. That's completely valid*

---

**Data Integrity vs Referential Integrity**

**Data Integrity:** *Data should remain accurate, valid, and consistent.*

**Referential Integrity:** *Relationships between related tables must remain valid.*

---

# **Database Design**

## **Entity Relationship Modeling**

### **Entity**

*An entity is a real-world object or concept about which we want to store information in a database.*

**Example:**
```txt
Company Database
│
├── Employees
├── Departments
└── Projects
```

*Here*
- *Employee → Entity*
- *Department → Entity*
- *Project → Entity*

---

**Employee as an Entity**

*Suppose we want to store*
```txt
Employee
├── employee_id
├── name
├── department
└── salary
```

*Employee is the entity*

*The individual employee ```101 | Rahul | IT | 60000``` is an instance of that entity.*

---

**Entity vs Table**

**Entity:** *A concept from the real world that we want to represent. ```Employee```*

**Table:** *The database structure we use to store information about that entity. ```Employees```*

---

### **Attribute**

*An attribute is a property or characteristic that describes an entity.*

```txt
Employee
   │
   ├── employee_id
   ├── name
   ├── department_id
   └── salary
```

```txt
Employee → Entity

employee_id → Attribute
name        → Attribute
department_id → Attribute
salary      → Attribute
```

---

**Attribute vs Entity**

| Entity                             | Attribute                      |
| ---------------------------------- | ------------------------------ |
| Object/concept we store data about | Property describing the entity |
| Employee                           | name                           |
| Customer                           | email                          |
| Product                            | price                          |
| Department                         | department_name                |

---

**How does it look in SQL?**

```sql
CREATE TABLE employees (
    employee_id INT,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2)
);
```

- *The table represents the Employee entity*
- *The column represents its attributes*

---

**Attribute vs Column**

**In database modeling:**

```txt
Employee → Entity
name → Attribute
salary → Attribute
```

**In the relational table:**

```txt
employees → Table
name → Column
salary → Column
```

---

### **Relationship**







 









