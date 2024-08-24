CREATE DATABASE collage;

USE collage;

CREATE TABLE teacher(
Teacher_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
DeptID INT
);

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

SHOW TABLES;

INSERT INTO Teacher(Teacher_id,first_name,last_name,DeptID) VALUES
(21 ,"disha" ,"satpute",1 ) ,
(22 ,'sanika' ,'bhor',2) ,
(23 ,'kirti' ,'kale' ,3) ,
(24 ,'darshan' ,'shinde' ,2) ,
(25 ,'raj' ,'satkar' ,3),
(25 ,'shreya' ,'gholap' ,3) ,
(26 ,"sara ","salunke",NULL );


INSERT INTO Departments (DeptID, DeptName) VALUES (1, 'Computer');
INSERT INTO Departments (DeptID, DeptName) VALUES (2, 'Automobile');
INSERT INTO Departments (DeptID, DeptName) VALUES (3, 'IT');


SELECT * FROM Teacher;

SELECT * FROM Departments;


/* Inner Join - The INNER JOIN returns only the rows which is a match between
				Teacher.DeptID and Departments.DeptID      */

SELECT first_name,last_name,Departments.DeptName
FROM Teacher
INNER JOIN Departments
ON Teacher.DeptID = Departments.DeptID;


/* Left (outer) Join - The LEFT JOIN returns all rows from the Teacher Table even The DepartmentName
                       column for Teacher is NULL or does not match. */

SELECT first_name,last_name,Departments.DeptName
FROM Teacher
LEFT JOIN Departments
ON Teacher.DeptID = Departments.DeptID;

/* Right (outer) Join - The RIGHT JOIN returns all rows from the Departments table,
                        including the new department, even though there are no employees in it.
                        The FirstName and LastName columns for that department are NULL. */

INSERT INTO Departments (DeptID, DeptName) VALUES (5, 'Electrical');

SELECT first_name,last_name,Departments.DeptName
FROM Teacher
RIGHT  JOIN Departments
ON Teacher.DeptID = Departments.DeptID;


/* Full (outer) Join - The FULL JOIN returns all rows from both the Teacher and Departments tables.
                      Teachers that has no department names and department that has no teachers. 

In databases like MySQL, where FULL JOIN (also called FULL OUTER JOIN) is not supported, 
you can simulate the same effect by combining the results of 
LEFT JOIN and RIGHT JOIN using a UNION  */

SELECT first_name, last_name, Departments.DeptName
FROM Teacher
LEFT JOIN Departments ON Teacher.DeptID = Departments.DeptID
UNION
SELECT first_name, last_name, Departments.DeptName
FROM Teacher
RIGHT JOIN Departments ON Teacher.DeptID = Departments.DeptID;

/* Cross Join - The CROSS JOIN returns the Cartesian product of two tables, meaning it combines each
                row from the first table with every row from the second table. 
                This results in all possible combinations of rows between the two tables. */

SELECT first_name, last_name, DeptName
FROM Teacher
CROSS JOIN Departments;

/* Self 