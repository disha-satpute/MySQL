## SQL Joins
SQL Joins are used to combine rows from two or more tables based on a related column between them.<br> There are several types of joins that allow you to retrieve data from multiple tables, depending on the relationship between the tables and the desired result set.

Types of SQL Joins :

INNER JOIN
LEFT (OUTER) JOIN
RIGHT (OUTER) JOIN
FULL (OUTER) JOIN
CROSS JOIN
SELF JOIN


Let’s explore each of these joins in detail with examples.

1. INNER JOIN
The INNER JOIN keyword selects records that have matching values in both tables. It returns only the rows where there is a match on the join condition.

Syntax:
```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

Example:

Suppose we have two tables:

Employees:

```sql
+-------------+----------------+----------+----------------+
| EmployeeID  |  FirstName    | LastName  |	DepartmentID   |
+-------------+-----------------+---------------------------+
|      1      |   John	      |   Doe	  |       1        |
|      2      |   Jane	      |  Smith	  |       2        |
|      3      |    Jim        |   Beam	  |       3        |
+-------------+---------------+-----------+----------------+
```

Departments:

```sql
+----------------+----------------+
|   DepartmentID | DepartmentName |
+----------------+----------------+
|  1	         |     HR	      |
|  2	         |  Finance       |
|  3             |     IT         |
+---------------------------------+
```

Result:

Query to get employee names along with their department names:

```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

Result:
```sql
+----------- -+----------+------------------+
| FirstName   | LastName  |	DepartmentName  |
+---------+----------+----------------------+
|   John	  |   Doe	  |       HR        |
|   Jane	  |  Smith	  |     Finance     |
|   Jim       |   Beam	  |       IT        |
+-------------------------------------------+
```

Explanation :
 The INNER JOIN returns only the rows where there is a match between Employees.DepartmentID and Departments.DepartmentID.

 2. LEFT (OUTER) JOIN
The LEFT JOIN (or LEFT OUTER JOIN) returns all rows from the left table (table1), along with matching rows from the right table (table2). If there is no match, the result is NULL for columns from the right table.

Syntax:
sql
Copy code
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
Example:
Adding another employee to the Employees table who does not belong to any department:

EmployeeID	FirstName	LastName	DepartmentID
4	Sarah	Connor	NULL
Query to get all employees and their department names:

sql
Copy code
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
Result:
FirstName	LastName	DepartmentName
John	Doe	HR
Jane	Smith	Finance
Jim	Beam	IT
Sarah	Connor	NULL
Explanation: The LEFT JOIN returns all rows from the Employees table, including Sarah, even though she has no department. The DepartmentName column for her is NULL.