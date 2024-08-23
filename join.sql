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
				Teacher.DeptID and Departments.DeptID       */

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

/*Full (outer) Join - The FULL JOIN returns all rows from both the Teacher and Departments tables. 
                      Teachers that has no department names and department that has no teachers. */
                      
SELECT first_name,last_name,Departments.DeptName
FROM Teacher
FULL JOIN Departments
ON Teacher.DeptID = Departments.DeptID;
