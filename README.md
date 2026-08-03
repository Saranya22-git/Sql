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
1. *You type Laptop is the search box*
2. *The application converts your request into an SQL query*
3. *SQL sends the request to the RDBMS*
4. *The RDBMS searche the database*
5. *The matching products are returned.*

*Without SQL, we cannot communicate with an RDBMS.*

---