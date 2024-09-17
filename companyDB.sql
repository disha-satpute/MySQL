-- DDL
CREATE DATABASE CompanyDB;
USE CompanyDB;

show TABLES;

-- Create Departments table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

-- Create Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100) NOT NULL,
    DeptID INT,
    HireDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Add a new column to the Employees table
ALTER TABLE Employees ADD Salary DECIMAL(10, 2);

-- Remove all rows from Departments table but keep the table structure
TRUNCATE TABLE Departments;

-- Drop the Employees table
DROP TABLE Employees;

-- Rename Employees table to Staff
RENAME TABLE Employees TO Staff;
RENAME TABLE Staff TO Employees;

-- DML

-- Insert data into Departments table
INSERT INTO Departments (DeptID, DeptName) VALUES (1, 'Human Resources');
INSERT INTO Departments (DeptID, DeptName) VALUES (2, 'IT');

-- Insert data into Employees table
INSERT INTO Employees (EmpID, EmpName, DeptID, HireDate, Salary)
VALUES (101, 'John Doe', 1, '2023-01-15', 50000.00);
INSERT INTO Employees (EmpID, EmpName, DeptID, HireDate, Salary)
VALUES (102, 'Jane Smith', 2, '2023-02-20', 60000.00);

-- Update salary for a specific employee
UPDATE Employees
SET Salary = 55000.00
WHERE EmpID = 101;

-- Delete an employee record
DELETE FROM Employees
WHERE EmpID = 102;

-- Retrieve all employees with their department names
SELECT e.EmpID, e.EmpName, d.DeptName, e.HireDate, e.Salary
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID;

-- DCL

-- Create a new user with access from host
CREATE USER 'username'@'host' IDENTIFIED BY 'password';
-- Create a new user with access from localhost
CREATE USER 'disha'@'localhost' IDENTIFIED BY 'securepassword123';

-- Grant SELECT and INSERT permissions on all tables in the 'companyDB' database
GRANT SELECT, INSERT ON companyDB.* TO 'disha'@'localhost';

-- Revoke INSERT permission on all tables in the 'companyDB' database
REVOKE INSERT ON companyDB.* FROM 'disha'@'localhost';

-- Show all grants for the user 'disha'
SHOW GRANTS FOR 'disha'@'localhost';

-- Drop the user 'disha'
DROP USER 'disha'@'localhost';

-- query to show users
SELECT User, Host FROM mysql.user;















