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

__________________________________________________________________________________________________________________________________________________

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
(Not equal to) <> or != -

Retrieve employees who are not in a specific department :

```sql
SELECT * FROM Employees
WHERE DepartmentID <> 5;
```


(Greater than)> -

Retrieve employees with a salary greater than 50,000 :

```sql
SELECT * FROM Employees
WHERE Salary > 50000;
```


(Less than) <  -

Retrieve employees who were hired before the year 2020 :

```sql
SELECT * FROM Employees
WHERE HireDate < '2020-01-01';
```


(Greater than or equal to) >=  -

Retrieve employees with a salary of at least 50,000 :

```sql
SELECT * FROM Employees
WHERE Salary >= 50000;
```


(Less than or equal to) <= -

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
Retrieve employees whose first name has 'o' as the second letter :
```sql
SELECT * FROM Employees
WHERE FirstName LIKE '_o%';
```
IN -
Retrieve employees who work in departments 1, 3, or 5 :
```sql
SELECT * FROM Employees
WHERE DepartmentID IN (1, 3, 5);
```
BETWEEN -
Retrieve employees whose salary is between 40,000 and 60,000 :
```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 40000 AND 60000;
```

**o Null Handling: IS NULL, IS NOT NULL**

IS NULL -
Retrieve employees whose email address is not provided (NULL) :
```sql
SELECT * FROM Employees
WHERE Email IS NULL;
```

IS NOT NULL -
Retrieve employees whose email address is provided (not NULL) :
```sql
SELECT * FROM Employees
WHERE Email IS NOT NULL;
```





