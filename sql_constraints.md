## SQL Constraints

SQL constraints are rules enforced on data columns in a database table to ensure the integrity, accuracy, and reliability of the data. Constraints are used to prevent invalid data from being inserted into the database.

Types of SQL Constraints :

NOT NULL <br>
UNIQUE <br>
PRIMARY KEY <br>
FOREIGN KEY <br>
CHECK <br>
DEFAULT <br>
AUTO_INCREMENT<BR>

1. NOT NULL -

The NOT NULL constraint ensures that a column cannot have a NULL value. It forces the field to always contain a value.
```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100)
);
```
Here, FirstName and LastName cannot be null.
<hr/>

2. UNIQUE -

The UNIQUE constraint ensures that all the values in a column are different. This is similar to PRIMARY KEY, but a table can have multiple UNIQUE constraints, while it can only have one PRIMARY KEY.

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);
```
In this example, the Email field must have unique values for each employee.
<hr/>

3. PRIMARY KEY -

The PRIMARY KEY constraint uniquely identifies each record in a table. A table can only have one primary key, which can be a single column or a combination of multiple columns (composite key).

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);
```
The EmployeeID is a unique identifier for each employee.
<hr/>

4. FOREIGN KEY -

The FOREIGN KEY constraint is used to link two tables. It is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table.
```sql
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
```
Here, DepartmentID in the Employees table is a foreign key referencing DepartmentID in the Departments table.
<hr/>

5. CHECK -

The CHECK constraint ensures that all values in a column satisfy a specific condition.
```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2),
    CHECK (Age >= 18),
    CHECK (Salary > 0)
);
```
This example ensures that the Age is at least 18 and the Salary is greater than 0.
<hr/>

6. DEFAULT -

The DEFAULT constraint provides a default value for a column when no value is specified during the insert operation.
```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    StartDate DATE DEFAULT CURRENT_DATE
);
```
Here, StartDate will default to the current date if no date is provided.

7. AUTO_INCREMENT -

<hr/>

### Using Constraints in Table Creation :

When creating a table, constraints are defined at the column level or table level:

- Column-Level Constraints:

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10, 2) CHECK (Salary > 0)
);
```

- Table-Level Constraints:

```sql
CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    UNIQUE (Email),
    CHECK (Salary > 0)
);
```

SQL constraints are essential for maintaining the integrity of the data in a database. By using constraints like NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK and DEFAULT you can ensure that the data stored in your database is valid, unique, and consistent.