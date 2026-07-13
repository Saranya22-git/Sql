Hey everybody!!!

**SQL**

#### **Table of Contents**

- [**Database Fundamentals**](#database-fundamentals)
  - [**Introduction to Databases**](#introduction-to-databases)
    - [**Data**](#data)
    - [**Database**](#database)
    - [**DBMS**](#dbms)
    - [**RDBMS**](#rdbms)
    - [**SQL**](#sql)
    - [**Features of SQL**](#features-of-sql)
    - [**Database Applications**](#database-applications)
    - [**Types of Databases**](#types-of-databases)
      - [**Relational Database**](#relational-database)
      - [**Non-Relational database(NoSQL)**](#non-relational-databasenosql)
    - [**SQL vs NoSQL**](#sql-vs-nosql)
    - [**Client-Server Architecture**](#client-server-architecture)
    - [**Database Architecture Basics**](#database-architecture-basics)
      - [**OLTP**](#oltp)
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

### **Database Fundamentals**

#### **Introduction to Databases**

##### **Data**

**What is Data?**

- *Data is a collection of raw facts, figures, observations or values that can be processed to produce meaningful information.*
- *In simple words, data is any piece of information before it is organized and analyzed.*

**Examples of Data:** 
| Roll No | Name | Marks |
| ------- | ---- | ----- |
| 101     | Ravi | 85    |

*Here*
- *101 is data*
- *Ravi is data*
- *85 is data*

---

**Characteristics of Data**

*Good data should be:*

1. **Accurate:** *Correct Information.*
   
    **Example:** *Age=22 Not Age=220*

2. **Complete:** *No missing values.*
   
    **Example for complete data:**
    | Name | Age |
    | ---- | --- |
    | Ravi | 22  |

    **Example for incomplete data:**
    | Name | Age  |
    | ---- | ---- |
    | Ravi | NULL |

3. **Consistent:** *Same data should not conflict.*

    **Example:** *Customer DOB = 01-01-2000*

    **In another system:** *Customer DOB = 05-05-2000*

    *This is inconsistent.*

4. **Relevant:** *Data should be useful.*
    
    **Example:**
     - *For salary calculation we need:*
       - *Employee ID*
       - *Salary* 
     - *Not needed favourite movie.* 

---

**Types of Data**

1. **Structured Data:** *Data stored or organized into rows and columns.*

    **Example:**
    | ID | Name | Salary |
    | -- | ---- | ------ |
    | 1  | Ravi | 50000  |
    
    **Examples:** *SQL Databases, MySQL, PostgreSQL.*

2. **Semi-Structured Data:** *Data that has some organization but isn't stored as tables.*

    **Example:**
     ```json
      {
        "name":"Ravi",
        "age":22
      }
     ```

     **Examples:** *JSON, XML*

3. **Unstructured Data:** *Data without a fixed format.*

    **Examples:**

     - *Images*
     - *Videos*
     - *Audio*
     - *PDFs*
     - *Emails*
  
    **Example:** *Vacation photo.jpg this is data but not in rows and columns.*

---

**Data vs Information**

**Data:** *Raw facts.*

 **Example:** 

    100
    200
    300

**Information:** *Processed and meaningful data.*

 **Example:** *Total Sales = ₹600.*

**Example:** *Suppose Amazon stores:*
 - *Order1 = ₹1000*
 - *Order2 = ₹2000*
 - *Order3 = ₹3000*
  
*These are data.*

*After calculation: Total sales = ₹6000*

*This becomes information.*

---

**Why data is important?**

*Modern companies run completely on data.*

**Example:**
 - **Netflix:** *Stores watch history, likes, search history. Used data for recommendations.*
 - **Amazon:** *Stores purchases, cart items, search history. Used data for product recommendations.*
 - **Google Maps:** *Stores locations, traffic, speed. Used data for route optimization.*
 - **Banks:** *Stores transactions, balances, loans. Used data for customer management.*

---

##### **Database**

**What is Database?**

- *A Database is an organized collection of related data that is stored electronically so it can be easily accessed, managed, updated and retrieved.*

**Example:** *Imagine you have these details written on separate pieces of paper.*

*Rahul - 22 - Vijayawada*
*Priya - 21 - Hyderabad*
*Arjun - 23 - Chennai*

*Finding one student's information among hundreds of papers is difficult. Instead, if you store everything in a table like this:*

| Student ID | Name  | Age | City       |
| ---------- | ----- | --- | ---------- |
| 101        | Rahul | 22  | Vijayawada |
| 102        | Priya | 21  | Hyderabad  |
| 103        | Arjun | 23  | Chennai    |

*Now it's easy to Search, Update, Delete, Add new students. This organized collection is called a Database.*

---

**Why do we need database?**

**🔹*Without database:*** *Data is stored in files, difficult to search, data duplication, no security with database.*

**🔹*With database:*** *Fast retrieval (getting something), Organized data, Secure, Multi-user access.*

**Example:** *Imagine instagram has 500 million users.*
*Each user has:*
- *Username*
- *Password*
- *Profile photo*
- *Followers*
- *Following*
- *Posts*
- *Likes*
- *Comments*

*If instagram stored all this in text files, it would be Very slow, Difficult to search, Hard to update, Easy to lose data, Difficult to maintain relationships between users. Instead, Instagram stores everything in databases.*

---

**Examples:**

1. **Banking System:** *When you check your account balance, the bank retrieves information from its database.*

**Example:**
| Account No | Customer | Balance   |
| ---------- | -------- | --------- |
| 12345      | Ravi     | ₹25,000   |
| 67890      | Priya    | ₹1,20,000 |

*Operations: Deposit money, Withdraw money, Transfer money, View transaction history. All are performed using the database.*

2. **Amazon:** *Amazon stores:*

| Product ID | Product | Price   | Stock |
| ---------- | ------- | ------- | ----- |
| P101       | Laptop  | ₹60,000 | 25    |
| P102       | Mouse   | ₹800    | 120   |

*When you search for "Laptop" amazon searches this database and displays matching products.*

3. **Hospital:** *A hospital database stores:*

| Patient ID | Name  | Disease  | Doctor     |
| ---------- | ----- | -------- | ---------- |
| 201        | Ravi  | Fever    | Dr. Sharma |
| 202        | Priya | Diabetes | Dr. Kumar  |

*Doctors can quickly retrieve patient records.*

4. **College:** *A college database stores:*

| Roll No | Name  | Branch  | CGPA |
| ------- | ----- | ------- | ---- |
| 1001    | Rahul | AI & DS | 9.2  |
| 1002    | Priya | CSE     | 8.8  |

*The college uses this information for attendance, exams and results.*

---

**Characteristics of Database**

*A good database should have these qualities:*

1. **Organized:** *Data is stored in a structured manner.*

**Example:** *Instead of random notes: Rahul 22 Hyderabad. Store it as:*
| ID | Name | City |
| -- | ---- | ---- |

*This is much easier to manage.*

2. **Easy to Search:** 

**Example:** *Search for Employee ID= 105. The database can find the employee within milliseconds.*

3. **Easy to update:** 
- *Suppose Ravi changes his phone number. Old=9876543210. New 9988776655.*
- *You update only one record instead of searching through many files.*

4. **Secure:** *Databases allow different access levels.*

**Example:**
- *Customer: Can view their account.*
- *Bank Employee: Can update customer details.*
- *Manager: Can approve loans.*
- *Administrator: Full access.*

*Not everyone can perform every operation.*

5. **Reduces Data Duplication:** *Suppose the same employee is stored five times.*

**Example:**
| ID  | Name  |
| --- | ----- |
| 101 | Rahul |
| 101 | Rahul |
| 101 | Rahul |

*This waste storage. A Database minimizes unnecessary duplicate data.*

6. **Data Integrity:** *The database helps ensure data remains accurate and consistent.*

**Example:**
- *Employee ID 101*
- *Should not suddenly become ABC101 if the column only accepts numeric values.*

---

**Advantages of using a Database**

- *Organized storage*
- *Faster searching*
- *Easy updates*
- *Easy deletion*
- *Multi-user access*
- *Better security*
- *Reduced redundancy*
- *Data consistency*
- *Backup and recovery support*
- *Supports very large amounts of data*

---

**Database vs File System**

| File System                         | Database                            |
| ----------------------------------- | ----------------------------------- |
| Stores data in separate files       | Stores data in organized tables     |
| Searching is slower                 | Searching is much faster            |
| Higher chance of duplicate data     | Reduces duplication                 |
| Limited security                    | Better security and permissions     |
| Difficult to maintain relationships | Supports relationships between data |
| Suitable for small applications     | Suitable for large applications     |

**Example:**
**File System:** *You have student1.txt student2.txt. To find Rahul, you may need to open multiple files.*

**Database:** *Run a query like SELECT * FROM Students WHERE Name='Rahul'; The database returns the result quickly.*

---

##### **DBMS**

**Why was DBMS invented?**

- *Imagine you have 500 books in your house.* 
  - *Can books Organize themselves?*
  - *Can books tell you where another book is?*
  - *Can books issue themselves?*
- *No. You need someone to manage them. Similarly, A database stores data. Someone must manage it. That "someone " is called DBMS.*

---

**What is DBMS (Database Management System)?**

- *A DBMS is Software that allows users and applications to create, store, retrieve, update and manage data in a database.*
- *Without a DBMS, interacting with the database would be extremely difficult.*
- *In simple, A DBMS is software that acts as a bridge between the user/application and the database.*

**Example:** *Imagine a library.*
- *Books=Data*
- *Library=Database*
- *Librarian=DBMS*
- *Student=User*

*If you want a book, you don't search every shelf yourself. You ask the librarian.*

*The librarian:*
- *Finds the book*
- *Issues the book*
- *Updates records*
- *Maintains organization*

*Similarly, a DBMS:*
- *Finds data*
- *Stores data*
- *Updates data*
- *Deletes data*
- *Maintain security*

---

**How does a DBMS work?**

*Suppose you open a banking app and check your balance.*

- **Step-1:** *User Request. You tap "Check Balance".*
- **Step-2:** *Application. The banking app send a request.*
- **Step-3:** *DBMS. The DBMS receives the request and understands what data is needed.*
- **Step-4:** *Database. The DBMS retrieves your account information from the database.*
- **Step-5:** *Result. The DBMS sends the balance back to the banking app, which displays it.*

**Flow:** *User -> Application -> DBMS -> Database <- DBMS -> Application <- User.*

*The user never interacts with the database directly. The DBMS handles all communication.*

---

**Why do we need a DBMS?**

- *Imagine storing employee data in Excel file.*
- *Problems:*
  - *Duplicate records*
  - *Slow Searching*
  - *Difficult updates*
  - *Poor security*
  - *Multiple users editing the same file*
  - *No relationships between files*

*A DBMS solves these problems.*

---

**Functions of a DBMS**

*These are the main responsibilities of a DBMS.*

1. **Data Storage:** *Stores data efficiently.*

**Example:** *Employee details are stored in database tables instead of random files.*

2. **Data Retrieval:** *Fetch required information quickly.*

**Examples:** 
```sql
SELECT * FROM Employees;
```
*The DBMS retrieves all employee records.*

3. **Data Insertion:** *Add new records.*

**Example:** *A new employee joins the company. The DBMS inserts the employee into the database.*

4. **Data Update:** *Modifies existing records.*

**Example:** *Employee salary changes. The DBMS updates only that employee's record.*

5. **Data Deletion:** *Removes records.*

**Example:** *An employee resigns. The DBMS deletes the employee's details if required.*

6. **Security:** *Controls who can access data.*

**Example:**
| User     | Permission           |
| -------- | -------------------- |
| Customer | View own account     |
| Employee | Update customer data |
| Manager  | Approve loans        |
| DBA      | Full access          |

*Not everyone gets the same permission.*

7. **Backup & Recovery:** *Protects against data loss.*

**Example:** *If the database server crashes, backups help restore the data.*

8. **Concurrency Control:** *Allows many users to access the database at the same time safely.*

**Example:** *Imagine two ATM machines accessing the same account. Balance = ₹10,000. Person A withdraws ₹2,000. Person B withdraws ₹3,000 at the same time. The DBMS ensures the final balance becomes ₹10,000 - ₹2,000 - ₹3,000 = ₹5,000 without losing or corrupting data.*

9.  **Data Integrity:** *Ensures stored data remains accurate and valid.*

**Example:** *Age should not be -10. A DBMS can prevent invalid values.*

---

**Components of a DBMS**

*A DBMS consists of several components.*
1. **Hardware:** *The physical devices.*

**Example:**
- *Servers*
- *Hard disks*
- *SSDs*
- *Network devices*


2. **Software:** *The DBMS software itself.*

**Example:**
- *MySQL*
- *PostgreSQL*
- *Oracle Database*
- *Microsoft SQL Server*


3. **Database:** *The actual stored data.*

**Example:**
- *Employee table*
- *Customer table*
- *Orders table*


4. **Users:** *People who use the database.*

**Example:**
- *Customers*
- *Developers*
- *Database Administrators(DBAs)*
- *Data Analysis*


5. **Procedures:** *Rules and instructions for using and maintaining the database.*

**Example:**
- *Daily backup procedure*
- *Password policy*
- *Data entry guidelines*

---

**Advantages of a DBMS**

- *Reduces data redundancy (duplicate data)*
- *Provides better security*
- *Enables data sharing*
- *Supports multiple users*
- *Improves data consistency*
- *Offers backup and recovery*
- *Supports relationships between data*
- *Makes data retrieval faster*
- *Simplifies database management*

**Disadvantages of a DBMS**

- *Can be expensive*
- *Requires skilled administrators*
- *Consumes system resources*
- *Initial setup can be complex*
- *Maintenance costs may be high*

---

**Examples of DBMS usage:**

**Banking:** *Stores:*
- *Customer accounts*
- *Transactions*
- *Loans*

**Hospital:** *Stores:*
- *Patient records*
- *Doctors*
- *Appointments*
- *Medical history*

**College:** *Stores:*
- *Students*
- *Faculty*
- *Courses*
- *Attendance*
- *Results*

--- 

**Popular DBMS Software**

| DBMS                 | Common Usage                    |
| -------------------- | ------------------------------- |
| MySQL                | Web applications                |
| PostgreSQL           | Enterprise applications         |
| Oracle Database      | Large enterprises               |
| Microsoft SQL Server | Business applications           |
| SQLite               | Mobile and desktop applications |

*These are examples of DBMS Software.*

---

**Database vs DBMS**

| Database                     | DBMS                                 |
| ---------------------------- | ------------------------------------ |
| Collection of organized data | Software used to manage the database |
| Stores information           | Performs operations on the data      |
| Passive (stores data)        | Active (manages data)                |
| Example: Employee database   | Example: MySQL                       |

---
 
##### **RDBMS**

**What is an RDBMS?**

*RDBMS(Relational Database Management System) is a type of DBMS that stores data in the form of tables (relations) and maintains relationships between those tables.*

  **Example:**

  |   ID   |  Name  |  Marks  |
  |--------|--------|---------|
  |    1   |  Sara  |   89    |

---

**Why are tables used?**

*Tables make data easy to read, easy to search, easy to update, easy to organize.*

---

**DBMS** vs **RDBMS**

| DBMS                            | RDBMS                           |
| ------------------------------- | ------------------------------- |
| Stores data                     | Stores data in tables           |
| May not support relationships   | Supports relationships          |
| Less structured                 | Highly structured               |
| Suitable for small applications | Suitable for large applications |

---

**Popular RDBMS Software**

| Software             | Company               |
| -------------------- | --------------------- |
| MySQL                | Oracle                |
| PostgreSQL           | Open Source Community |
| Oracle Database      | Oracle                |
| Microsoft SQL Server | Microsoft             |

---

##### **SQL**

**What is SQL?**

- *SQL (Structured Query Language) is a standard language used to communicate with relational databases for storing, retrieving, updating and managing data.*

---

**Examples:**

- **Amazon:** *Customer searches "Laptop". Amazon sends an SQL query to the database. The database returns matching products.*
- **Instagram:** *You log in. SQL helps retrieve your account information.*
- **Netflix:** *You search "Money Heist" SQL helps find that show.*
- **Banking:** *You check your balance. The banking app sends a request. SQL helps retrieve your account details.*

---

**How SQL works?**

*User -> Application -> SQL Query -> RDBMS -> Database -> RDBMS -> Application -> User*

- **Step-1:** *You search for Laptop.*
- **Step-2:** *Amazon converts your request into SQL.*
- **Step-3:** *SQL asks the RDBMS*
- **Step-4:** *The RDBMS seraches the database.*
- **Step-5:** *Results comeback*
- **Step-6:** *You see the laptops. Simple*

---

**Is SQL a programming language?**

*No. SQL is not a general-purpose programming language like Python or Java. It is a query language. Its main purpose is to work with relational databases.*

---

**What can SQL do?**

*SQL can perform many operations.*

1. **Retrieve Data:** *Find all employees.*

**Example:** 
```sql
SELECT * FROM Employees;
```

2. **Insert Data:** *A new customer signs up. SQL can add the customer's information.*
3. **Update Data:** *Rahul changes his phone number. SQL updates only rahul's record.*
4. **Delete Data:** *An employee resigns. SQL can remove the employee's record if required.*
5. **Filter Data:** *Suppose your manager says "Show employees whose salary is greater than ₹50,000". SQL can filter those records.*
6. **Sort Data:** *Show employees from highest salary to lowest salary. SQL can sort the results.*
7. **Calculate Data:** *Average salary, Total sales, Maximum marks, Minimum price. SQL performs these calculations quickly.*

---

**Where is SQL used?**

- **Banking:** *Check account balance, View transactions, Transfer money.*
- **Amazon:** *Search outputs, Place orders, Track deliveries.*
- **Instagram:** *Login, Show posts, Display followers, Load comments.*
- **Netflix:** *Search movies, Watch history, Recommendations.*
- **Hospital:** *Patient records, Appointments, Doctors, Billing.*
- **Colleges:** *Student details, Attendance, Marks, Fees*
- **Airlines:** *Flight bookings, Seat availability, Passenger information*

---

##### **Features of SQL**

1. **Easy to Learn:** *SQL has very simple syntax.*
2. **Easy to read:** *Even without learning SQL you can understand.*
3. **Standard Language:** *Most SQL commands remain the same in any software.*
4. **Fast Data Retrieval:** *SQL is optimized to retrieve data efficiently when used with an RDBMS.*
5. **Supports Large Databases:** *SQL-based databases can handle very large amounts of data (with the right database system and hardware).*
6. **Data Manipulation:** *"Manipulation" simply means changing data. SQL allows us to Add new data, Update existing data, Delete data, Retrieve data.*
7. **Security:** *SQL databases support security features through the DBMS, such as User accounts, Permissions, Roles, Access control.*
8. **Multi-user support:** *SQL databases are designed to support many users simultaneously when managed by an RDBMS.*
9. **Data Integrity:** *This helps maintain accurate and consistent data.*
10. **Supports Relationships:** *SQL makes it easy to work with these related tables.*

---

##### **Database Applications**

**What is a Database Application?**

*A database application is a software application that interacts with a database to perform operations such as storing, retrieving, updating and deleting data.*

---

##### **Types of Databases**

###### **Relational Database**

**What is a Relational Database?**

*A Relational Database is a type of database that stores data in the form of tables (relations) and uses relationships between tables to organize and retrieve data efficiently.*

**Example:** 

|   ID   |  Name  |  Marks  |
|--------|--------|---------|
|    1   |  Sara  |   89    |

---

**Characteristics of a Relational Database**

*A Relational database:*

- **Stores data in tables:** *Everything is organized into rows and columns.*
- **Uses relationships:** *Tables are connected using IDs.*
- **Reduces duplicate data:** *The same information doesn't need to be stored repeatedly.*
- **Maintains Consistency:** *One update can automatically keep related information consistent.*
- **Supports SQL:** *Relational databases use SQL to communicate and manage data.*

---

**Popular Relational Databases**

| Database             | Used For                |
| -------------------- | ----------------------- |
| MySQL                | Web Applications        |
| PostgreSQL           | Enterprise Applications |
| Oracle Database      | Large Companies         |
| Microsoft SQL Server | Business Applications   |
| SQLite               | Mobile & Desktop Apps   |

---

**Advantages of Relational Databases**

- *Organized data*
- *Easy Searching*
- *Easy Updating*
- *Reduces duplication*
- *Supports Relationships*
- *Strong security*
- *Data consistency*

**Disadvantages**

- *More complex to design*
- *Less flexible if the data structure changes frequently*
- *Harder to scale for some very large distributed systems*

---

###### **Non-Relational database(NoSQL)** 

**What is NoSQL?**

*A NoSQL database is a non-relational database designed to store and manage large volumes of flexible or unstructured data using models such as documents, key-value pairs, columns or graphs.*

---

**Types of NoSQL Databases**

*There are four major types.*

1. **Document Database:** *Stores data like documents.*

**Example:**

```json
{
  "name": "Rahul",
  "age": 22,
  "city": "Hyderabad"
}
```

*No rows, no columns. Just one document.*

**Examples:** *MongoDB, CouchDB*

2. **Key-Value Database:** *Every value has one key.*

**Example:**

Key

Rahul

↓

Value

Hyderabad

*Like a dictionary in Python.*

**Examples:** *Redis, Amazon DynamoDB*

3. **Column-Family Database:** *Stores data by columns instead of traditional rows. Used for very large datasets.*

**Examples:** *Apache Cassandra, Apache HBase.*

4. **Graph Database:** *Used when relationships are the most important thing.*

**Example:** *Facebook*

Rahul

↓

Friend

↓

Priya

↓

Friend

↓

Aman

*This network is naturally represented as a graph.*

**Examples:** *Neo4j, Amazon Neptune*

---

**Advantages of NoSQL**

- *Flexible Structure*
- *Handles very large amounts of data*
- *Can scale across many servers*
- *Good for rapidly changing data*
- *Fast for certain types of applications*

**Disadvantages**

- *Relationships can be more complex*
- *Standard SQL usually cannot be used directly*
- *Data consistency models may differ depending on the database.*

---

##### **SQL vs NoSQL**

**SQL vs NoSQL**

| SQL                         | NoSQL                                                                          |
| --------------------------- | ------------------------------------------------------------------------------ |
| Relational Database         | Non-Relational Database                                                        |
| Stores data in tables       | Stores data in documents, key-value pairs, columns, or graphs                  |
| Uses SQL language           | Uses database-specific query methods/APIs (some also support SQL-like queries) |
| Fixed schema                | Flexible schema                                                                |
| Best for structured data    | Best for flexible or rapidly changing data                                     |
| Strong relationships        | Flexible relationships depending on the database                               |
| Examples: MySQL, PostgreSQL | Examples: MongoDB, Redis                                                       |

---

**Which one is better?**

*Neither, It depends on the problem.*

---

**When should we use SQL?**

*Use SQL when:*
- *Data is highly structured*
- *Relationships are important*
- *Accuracy is critical*

**Examples:** *Banks, Hospitals, Colleges, Payroll. (Accounting Systems)*

---

**When should we use NoSQL?**

*Use NoSQL when:*
- *Data changes frequently*
- *The structure is flexible*
- *Very large-scale distributed systems are needed*

**Examples:** *Social Media, Gaming, Real-Time Analytics. (Caching) Some recommendation systems.*

---

##### **Client-Server Architecture**

**What is Client?**

*A Client is a computer, mobile device, or software application that sends requests to a server to access data or services.*

**Examples:** *Laptop, Mobile Phone, Web Browser (Chrome, Edge, Firefox), Instagram App, Amazon App. Whenever these request data, they act as clients.*

---

**What is a Server?**

*A Server is a computer or software system that provides services, resources, or data to clients over a network.*

**Example:** *Imagine YouTube millions of users request videos. The YouTube server:*
- *Stores videos*
- *Receives requests*
- *Finds the requested video*
- *Sends it back*

---

**Client vs Server**

| Client                  | Server               |
| ----------------------- | -------------------- |
| Requests data           | Provides data        |
| Starts communication    | Responds to requests |
| Example: Chrome Browser | Example: Web Server  |

---

**Complete flow**

*Suppose you search for Laptop on Amazon.*

**Step-1:** *You type Laptop*

**Step-2:** *Amazon App sends a request*

**Step-3:** *The server receives a request*

**Step-4:** *The server sends an SQL query to the RDBMS*

**Step-5:** *The RDBMS searches the database*

**Step-6:** *The database returns the data*

**Step-7:** *The server sends the result back*

**Step-8:** *Amazon app displays the products*

---

**Why don't we connect directly to the database?**

*Because of Security, Validation, Performance, User management. If everyone could connect directly to the database, anyone could Delete records, Change balances, Read private data. The server protects the database.*

---

**Advantages of Client-Server Architecture**

- **Better Security:** *Clients cannot directly modify the database.*
- **Centralized data:** *All data is stored in one place.*
- **Easy Maintenance:** *Update the server, and every client benefits.*
- **Multi-user Support:** *Millions of users can access the system simultaneously*
- **Better Performance:** *The server manages requests efficiently*

---

##### **Database Architecture Basics**

###### **OLTP**

**What is OLTP?**

*OLTP stands for Online Transaction Processing. OLTP is a database system optimized for processing a large number of short, real-time transactions such as inserts, updates, deletes and lookups.*





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