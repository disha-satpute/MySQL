## What is Database ?

The Meaning of Database is organized collection of data so that it can be easily accessed.<br>
To manage this databases , **DBMS (database management system)** is used.

Types of DBMS :
1)	Relational Database.
2)	Non-Relational Database.

o	Relational Database : <br>
In this Database,data stored in table (rows & columns) format.<br>
e.g. MySql,Oracle,PostgreSQL,SQLite,SQLserver<br>
  ```sql

+-------+----------+-------------------+--------------+
| Id    | username | email             | password     |
+------------------+-------------------+--------------+
| 101   |  Disha   | disha44@gmail.com | di1234       |
|       |          |                   |              |
+-------+----------+-------------------+--------------+

   ```
o	Non-Relational Database :<br>
In this Database , data stored in Key-Value pair.<br>
e.g. MongoDB,Redis,Firebase Realtime Database<br>

```sql
    {
        "Id":101,
        "name":"Disha",
        "email": "disha.g@gmail.com",
        "password": "disha";
    };
```
<hr/>

## Structure Query Language (SQL)

It’s a standardized language used for managing and manipulating relational databases. SQL allows users to perform a variety of tasks, such as querying data, updating records, deleting data, and creating or modifying database structures.<br>

**MySQL** : MySQL is an open-source relational database management system (RDBMS) that uses SQL as its primary language for managing databases.<br>

DDL, DML, and DCL are subsets of Structured Query Language used to interact with and manage relational databases. Each subset serves a distinct purpose in database management:

o	DDL: Defines and manages database schema and structure.<br>
o	DML: Manages and manipulates data within the database tables.<br>
o	DCL: Controls access and permissions to the database and its objects.<br>
o TCL: Manages database transactions, allowing control over committing, rolling back, and setting savepoints.<br>
o DQL: Focuses on querying and retrieving data from the database, primarily using the SELECT statement.<br>


## DDL

Data Definition Language (DDL) commands are used to define and manage the structure of database objects such as tables, indexes, and schemas. They deal with the schema of the database and manage the metadata, rather than the data itself. <br>Here’s an overview of the main DDL commands:

1. CREATE -

The CREATE command is used to create new database objects. This includes tables, indexes, views, and schemas.<br>
```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```
2. ALTER -

The ALTER command is used to modify existing database objects.<br>
```sql
ALTER TABLE table_name
ADD column_name datatype constraints;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
MODIFY COLUMN column_name datatype constraints;

ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_definition;
```

3. DROP -

The DROP command removes database objects. It permanently deletes the object and its data.<br>
```sql
DROP TABLE table_name;
```

4. TRUNCATE -

While not strictly part of DDL in all SQL dialects, TRUNCATE is often included for completeness. It removes all rows from a table but does not remove the table structure itself. It is typically faster than a DELETE operation.<br>
```sql
TRUNCATE TABLE table_name;
```

5. RENAME -

The RENAME command is used to change the name of an existing database object.<br>
```sql
RENAME TABLE old_table_name TO new_table_name;
```
__________________________________________________________________________________________________________________________________________________

## DML

Data Manipulation Language (DML) commands are used to manage and manipulate data within the tables of a database. Unlike Data Definition Language (DDL), which deals with the structure of the database, DML commands focus on the data itself.<br> Here’s a detailed look at the main DML commands:

1. SELECT -

The SELECT command retrieves data from one or more tables and is the most commonly used DML command. <br>It can fetch specific columns, all columns, or aggregated data.

```sql
SELECT column1, column2 FROM table_name;
```
o	With Conditions:
```sql
SELECT column1, column2 FROM table_name WHERE condition;
```
o	With Sorting:
```sql
SELECT column1, column2 FROM table_name ORDER BY column1 ASC|DESC;
```
o	With Aggregation:
```sql
SELECT COUNT(*), AVG(column_name) FROM table_name;
```
o	With Joins:
```sql
SELECT columns FROM table1 JOIN table2 ON table1.column = table2.column;
```
o	With Grouping:
```sql
SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name;
```
o	With Subqueries:
```sql
SELECT column1 FROM table_name WHERE column2 IN (SELECT column2 FROM another_table);
```

2. INSERT INTO -

The INSERT INTO command adds new rows of data into a table.

o	Inserting Specific Columns:
```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
```
o	Inserting All Columns:
```sql
INSERT INTO table_name VALUES (value1, value2, ...);
```
o	Inserting from Another Table:
```sql
INSERT INTO table_name (column1, column2)
SELECT column1, column2 FROM another_table WHERE condition;
```

3. UPDATE -

The UPDATE command modifies existing data in a table.

o	Updating Specific Rows:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```
o	Updating All Rows:
```sql
UPDATE table_name
SET column1 = value1;
```
o	Conditional Updates:
```sql
UPDATE table_name
SET column1 = value1
WHERE column2 = condition;
```

4. DELETE -

The DELETE command removes rows from a table. Be cautious with DELETE as it can permanently remove data.

o	Deleting Specific Rows:
```sql
DELETE FROM table_name WHERE condition;
```
o	Deleting All Rows:
```sql
DELETE FROM table_name;
```
__________________________________________________________________________________________________________________________________________________

## DCL

Data Control Language (DCL) commands are used to control access to data within a database. They manage permissions and access rights, ensuring that only authorized users can perform specific actions on database objects. <br>Here’s a detailed look at the main DCL commands:

1. GRANT -

The GRANT command is used to provide specific permissions or rights to users or roles on database objects. This command allows administrators to control who can perform operations such as querying, updating, or modifying the data.

Granting Permissions:

GRANT privilege_type ON object TO user_or_role;

o	Privilege Types: Examples include SELECT, INSERT, UPDATE, DELETE, EXECUTE, etc.<br>
o	Object: This could be a table, view, schema, or other database objects.<br>
o	User or Role: Specifies the user or role to whom the privileges are granted.<br>

Examples:

o	Granting SELECT permission on a table:
```sql
GRANT SELECT ON employees TO john_doe;
```
o	Granting INSERT and UPDATE permissions on a table:
```sql
GRANT INSERT, UPDATE ON employees TO manager_role;
```
o	Granting EXECUTE permission on a stored procedure:
```sql
GRANT EXECUTE ON procedure_name TO user_role;
```

2. REVOKE -

The REVOKE command is used to remove previously granted permissions from users or roles. This helps maintain security by ensuring that users no longer have access to data or operations they should not perform.

o	Revoking Permissions:
```sql
REVOKE privilege_type ON object FROM user_or_role;
```
Examples:

o	Revoking SELECT permission from a user:
```sql
REVOKE SELECT ON employees FROM john_doe;
```
o	Revoking INSERT and UPDATE permissions from a role:
```sql
REVOKE INSERT, UPDATE ON employees FROM manager_role;
```
o	Revoking EXECUTE permission on a procedure:
```sql
REVOKE EXECUTE ON procedure_name FROM user_role;
```
__________________________________________________________________________________________________________________________________________________

## TCL
Transaction Control Language (TCL)
TCL commands are used to manage transactions in a database. A transaction is a sequence of one or more SQL statements that are executed as a single unit of work.<br> TCL commands help in controlling the execution of these transactions, ensuring the integrity and consistency of the database.

Common TCL Commands:
COMMIT<br>
ROLLBACK<br>
SAVEPOINT<br>
SET TRANSACTION<br>

o COMMIT:

The COMMIT command is used to save all changes made during the current transaction. Once committed, the changes are permanent and cannot be undone.
```sql
BEGIN;

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary)
VALUES ('John', 'Doe', 1, 50000);

COMMIT;
```

In this example, the INSERT operation is part of a transaction, and the COMMIT command saves the changes permanently.

o ROLLBACK:

The ROLLBACK command is used to undo changes made in the current transaction. It reverts the database to the last committed state, effectively canceling the changes.
```sql
BEGIN;

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary)
VALUES ('Jane', 'Doe', 2, 60000);

ROLLBACK;
```
In this case, the ROLLBACK command undoes the INSERT operation, so the new record is not saved.

o SAVEPOINT:

The SAVEPOINT command sets a point within a transaction to which you can later roll back without affecting the entire transaction. It allows for more granular control of transaction management.
```sql
BEGIN;

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary)
VALUES ('Alice', 'Smith', 3, 70000);

SAVEPOINT savepoint1;

INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary)
VALUES ('Bob', 'Brown', 4, 55000);

ROLLBACK TO savepoint1;

COMMIT;
```

Here, after the second INSERT, the transaction is rolled back to savepoint1, so the second insert is undone, but the first insert remains.

o SET TRANSACTION:

The SET TRANSACTION command is used to specify the characteristics of the transaction, such as isolation level.

```sql
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN;

-- Transaction statements

COMMIT;
```
This sets the isolation level of the transaction, which controls how changes made in the transaction are visible to other transactions.
__________________________________________________________________________________________________________________________________________________

## DQL

DQL is primarily concerned with the retrieval of data from the database. It consists of the SELECT statement, which is used to query the database and fetch the desired data.

o SELECT:

The SELECT command is used to query data from one or more tables in a database. It allows you to specify columns, apply filters, sort results, and perform joins.
```sql
SELECT FirstName, LastName, Salary
FROM Employees
WHERE DepartmentID = 1
ORDER BY Salary DESC;
```

This query selects the FirstName, LastName, and Salary columns from the Employees table where the DepartmentID is 1, and sorts the results by Salary in descending order.

## ☑️Implementation

o You can Implement all commands of DDL,DML,DCL by giving reference of 'companyDB.sql' script which is available in this Repository.<br>

o You can also <a href="https://github.com/disha-satpute/MySQL/blob/main/companyDB.sql">Click Here</a> To get direct access to that Sql Script.

## SQL Constraints

SQL constraints are rules enforced on data columns in a database table to ensure the integrity, accuracy, and reliability of the data. Constraints are used to prevent invalid data from being inserted into the database.

Types of SQL Constraints :

NOT NULL <br>
UNIQUE <br>
PRIMARY KEY <br>
FOREIGN KEY <br>
CHECK <br>
DEFAULT <br>

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

__________________________________________________________________________________________________________________________________________________

## SQL Datatypes

SQL data types define the kind of data that can be stored in a table's columns. Choosing the appropriate data type is crucial for data integrity, performance, and storage optimization.

Common SQL Data Types :

**1. Numeric Data Types -**

INT / INTEGER : Stores whole numbers (e.g., 10, 200).

SMALLINT : Stores smaller whole numbers, uses less storage than INT.

BIGINT : Stores large whole numbers, larger range than INT.

DECIMAL(p, s) / NUMERIC(p, s) : Stores fixed-point numbers with precision p and scale s (e.g., DECIMAL(10, 2) for monetary values).

FLOAT / REAL / DOUBLE PRECISION : Stores floating-point numbers, used for approximate values.

**2. Character String Data Types -**

CHAR(n) / CHARACTER(n) : Fixed-length string (e.g., CHAR(10) always uses 10 characters).

VARCHAR(n) / CHARACTER VARYING(n) : Variable-length string (e.g., VARCHAR(50) can store up to 50 characters).

TEXT : Variable-length string of any size, often used for large text fields.

**3. Binary Data Types -**

BINARY(n) : Fixed-length binary data.

VARBINARY(n) : Variable-length binary data.

BLOB : Binary Large Object, used to store large binary data such as images or files.

**4. Date and Time Data Types -**

DATE : Stores a date (year, month, day) (e.g., '2024-08-10').

TIME : Stores a time (hours, minutes, seconds) (e.g., '12:30:45').

DATETIME : Stores both date and time (e.g., '2024-08-10 12:30:45').

TIMESTAMP : Similar to DATETIME, often includes time zone information.

YEAR : Stores a year value (e.g., 2024).

**5. Boolean Data Type -**

BOOLEAN : Stores TRUE or FALSE values.

**6. Enumerated Data Type -**

ENUM : Stores one value from a list of predefined values (e.g., ENUM('small', 'medium', 'large')).

**7. Spatial Data Types -**

GEOMETRY : Stores geometric data (points, lines, polygons).

POINT : Stores a single point in 2D space.

LINESTRING : Stores a sequence of points forming a line.

POLYGON : Stores a shape defined by multiple points.

**8. JSON Data Type -**

JSON : Stores JSON (JavaScript Object Notation) formatted data.

---------------------------------------------------------------------------------------------------------------------------------
o Example of Defining Data Types in a Table -

```sql

CREATE TABLE DataTypeExamples (
    -- Numeric Data Types
    SmallNumber SMALLINT,
    LargeNumber BIGINT,
    ExactNumber DECIMAL(10, 2),
    ApproxNumber FLOAT,

    -- Character String Data Types
    FixedString CHAR(10),
    VariableString VARCHAR(50),
    LargeText TEXT,

    -- Binary Data Types
    FixedBinary BINARY(10),
    VariableBinary VARBINARY(50),
    LargeBinaryData BLOB,

    -- Date and Time Data Types
    BirthDate DATE,
    EventTime TIME,
    DateTimeInfo DATETIME,
    TimeStampInfo TIMESTAMP,
    YearOnly YEAR,

    -- Boolean Data Type
    IsActive BOOLEAN,

    -- Enumerated Data Type
    Size ENUM('small', 'medium', 'large'),

    -- Spatial Data Types
    LocationPoint POINT,
    Route LINESTRING,
    Area POLYGON,

    -- JSON Data Type
    JsonData JSON
);

```
Breakdown of the Table :

o SmallNumber uses the *SMALLINT* data type to store smaller integers.

o LargeNumber uses the *BIGINT* data type to store larger integers.

o ExactNumber uses the *DECIMAL* data type to store exact numerical values with two decimal places.

o ApproxNumber uses the *FLOAT* data type to store approximate numerical values.

o FixedString uses the *CHAR* data type to store a fixed-length string of 10 characters.

o VariableString uses the *VARCHAR* data type to store a variable-length string of up to 50 characters.

o LargeText uses the *TEXT* data type for large amounts of text data.

o FixedBinary uses the *BINARY* data type for a fixed-length binary data of 10 bytes.

o VariableBinary uses the *VARBINARY* data type for variable-length binary data of up to 50 bytes.

o LargeBinaryData uses the *BLOB* data type to store large binary data, such as files or images.

o BirthDate uses the *DATE* data type to store a date (year, month, day).

o EventTime uses the *TIME* data type to store a time (hours, minutes, seconds).

o DateTimeInfo uses the *DATETIME* data type to store both date and time.

o TimeStampInfo uses the *TIMESTAMP* data type to store date and time with time zone info.

o YearOnly uses the *YEAR* data type to store a year.

o IsActive uses the *BOOLEAN* data type to store TRUE or FALSE values.

o Size uses the *ENUM* data type to store one value from a predefined list ('small', 'medium', 'large').

o LocationPoint uses the *POINT* data type to store a geographic point in 2D space.

o Route uses the *LINESTRING* data type to store a line made up of multiple points.

o Area uses the *POLYGON* data type to store a shape defined by multiple points.

o JsonData uses the *JSON* data type to store JSON formatted data.

## SQL Clauses 
SQL clauses are essential components of SQL queries, allowing you to filter, sort, group, and limit the results returned by a query. Below is a deep dive into the most commonly used SQL clauses, how they work, and how they can be combined to perform complex data retrieval tasks.

**1. WHERE Clause** -

The WHERE clause is used to filter records that meet specific criteria. It is typically used with SELECT, UPDATE, and DELETE statements to restrict the rows affected by these operations.
```sql
SELECT * FROM Employees
WHERE DepartmentID = 3;
```
In this example, the query retrieves all columns from the Employees table where the DepartmentID is 3.

Operators Used in WHERE :

**o Comparison Operators: =, <> (not equal), >, <, >=, <=**

```sql
SELECT * FROM Employees
WHERE DepartmentID = 5;
```
 <> or != (Not equal to) -
Retrieve employees who are not in a specific department :
```sql
SELECT * FROM Employees
WHERE DepartmentID <> 5;
```
 > (Greater than) -
Retrieve employees with a salary greater than 50,000 :
```sql
SELECT * FROM Employees
WHERE Salary > 50000;
```
 < (Less than) -
Retrieve employees who were hired before the year 2020 :
```sql
SELECT * FROM Employees
WHERE HireDate < '2020-01-01';
```
 >= (Greater than or equal to) -
Retrieve employees with a salary of at least 50,000 :
```sql
SELECT * FROM Employees
WHERE Salary >= 50000;
```
 <= (Less than or equal to) -
Retrieve employees hired on or before January 1, 2020 :
```sql
SELECT * FROM Employees
WHERE HireDate <= '2020-01-01';
```

**o Logical Operators: AND, OR, NOT**

AND -
Retrieve employees who work in department 5 and have a salary greater than 50,000 :
```sql
SELECT * FROM Employees
WHERE DepartmentID = 5 AND Salary > 50000;
```
OR -
Retrieve employees who either work in department 5 or have a salary greater than 50,000 :
```sql
SELECT * FROM Employees
WHERE DepartmentID = 5 OR Salary > 50000;
```
NOT -
Retrieve employees who do not work in department 5 :
```sql
SELECT * FROM Employees
WHERE NOT DepartmentID = 5;
```


**o Pattern Matching: LIKE, IN, BETWEEN**

LIKE -
Retrieve employees whose first name starts with 'J':
```sql
SELECT * FROM Employees
WHERE FirstName LIKE 'J%';
```
% is a wildcard that matches zero or more characters.<br>
_ is a wildcard that matches exactly one character.
Retrieve employees whose first name has 'o' as the second letter:
```sql
SELECT * FROM Employees
WHERE FirstName LIKE '_o%';
```
IN -
Retrieve employees who work in departments 1, 3, or 5:
```sql
SELECT * FROM Employees
WHERE DepartmentID IN (1, 3, 5);
```
BETWEEN -
Retrieve employees whose salary is between 40,000 and 60,000:
```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 40000 AND 60000;
```

**o Null Handling: IS NULL, IS NOT NULL**

IS NULL -
Retrieve employees whose email address is not provided (NULL):
```sql
SELECT * FROM Employees
WHERE Email IS NULL;
```

IS NOT NULL -
Retrieve employees whose email address is provided (not NULL):
```sql
SELECT * FROM Employees
WHERE Email IS NOT NULL;
```





