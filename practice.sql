CREATE DATABASE mysqlfiles;
USE mysqlfiles;
CREATE TABLE students(
stu_id INT,
stu_name VARCHAR(20),
stu_branch VARCHAR(20),
stu_cgpa float
);

DROP TABLE students;

INSERT INTO students
VALUES(1,'Saran','AIDS',9.9),
	  (2,'addu','ECE',9.9),
      (3,'tej','IT',9.0),
      (4,'mohi','BCOM',8.9),
      (5,'shri','AIDS',8.9);
 
 SELECT * FROM students;
 
-- SHOW ALL COLUMNS OF STUDENTS WHOSE CGPA IS GREATER THAN 9.
SELECT * FROM students
WHERE stu_cgpa>9;

-- SHOW ONLY stu_name and stu_branch for students whose cgpa is greater than or equal to 9 AND branch is AIDS.
SELECT stu_name, stu_branch FROM students
WHERE stu_cgpa>=9 AND stu_branch='AIDS';

-- SHOW ALL COLUMNS for students whose branch is AIDS OR cgpa is less than 9
SELECT * FROM students
WHERE stu_branch='AIDS' OR stu_cgpa<9
ORDER BY stu_cgpa DESC;

-- Find total number of students in the students table.
SELECT COUNT(*)
FROM students;

-- Find number of students in each branch
SELECT stu_branch, COUNT(*) AS total_students
FROM students
GROUP BY stu_branch;

-- Show branches having more than 1 student
SELECT stu_branch, COUNT(*) AS total_students
FROM students
GROUP BY stu_branch
HAVING COUNT(*)>1;

CREATE TABLE marks(
stu_id INT,
marks INT);

INSERT INTO marks
VALUES (1,95),
	   (2,88);

-- Show student name with marks

SELECT * FROM students;

SELECT * FROM marks;