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

*Suppose you write this query ```SELECT * FROM Students;*

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



