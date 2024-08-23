# SQL Joins

SQL Joins are used to combine rows from two or more tables based on a related column between them.<br> There are several types of joins that allow you to retrieve data from multiple tables, depending on the relationship between the tables and the desired result set.

Types of SQL Joins :

INNER JOIN <br>
LEFT (OUTER) JOIN <br>
RIGHT (OUTER) JOIN <br>
FULL (OUTER) JOIN <br>
CROSS JOIN <br>
SELF JOIN <br>

Let’s explore each of these joins in detail with examples.

## 1. INNER JOIN -
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


| EmployeeID  |  FirstName   |  LastName  |	DepartmentID   |
| ----------- | ------------ | ---------- | -------------- |
|      1      |   Sanika	 |   Bhor	  |       1        |
|      2      |   Disha	     |  Satpute   |       2        |
|      3      |  Darshan     |   Shinde	  |       3        |


Departments:


|  DepartmentID  | DepartmentName |
| -------------- | -------------- |
|  1	         |     HR	      |
|  2	         |  Finance       |
|  3             |     IT         |


Query to get employee names along with their department names:

```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

Result:

| FirstName      | LastName | DepartmentName |
| -------------- | -------- | -------------- |
| Sanika         | Bhor     |   HR           |
| Disha          | Satpute  |  Finance       |
| Darshan        | Shinde   | IT             |

Explanation :<br>
The INNER JOIN returns only the rows where there is a match between Employees.DepartmentID and Departments.DepartmentID.



## 2. LEFT (OUTER) JOIN -
The LEFT JOIN (or LEFT OUTER JOIN) returns all rows from the left table (table1), along with matching rows from the right table (table2). If there is no match, the result is NULL for columns from the right table.

Syntax:

```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```

Example:

Adding another employee to the Employees table who does not belong to any department:

|EmployeeID	|FirstName |	LastName | DepartmentID  |
|-----------|----------|-------------|---------------|
|4	        |Sara	   |    Muluk	 |NULL           |

Query to get all employees and their department names:

```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

Result:
| FirstName      | LastName | DepartmentName |
| -------------- | -------- | -------------- |
| Sanika         | Bhor     |   HR           |
| Disha          | Satpute  |  Finance       |
| Darshan        | Shinde   |    IT          |
|  Sara          | Muluk    | NULL           |

Explanation:<br> The LEFT JOIN returns all rows from the Employees table, including Sara, even though she has no department. The DepartmentName column for her is NULL.



## 3. RIGHT (OUTER) JOIN -
The RIGHT JOIN (or RIGHT OUTER JOIN) is similar to the LEFT JOIN, but it returns all rows from the right table (table2), along with matching rows from the left table (table1). If there is no match, the result is NULL for columns from the left table.

Syntax:

```sql
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;
```

Example:

Suppose we add a new department to the Departments table that has no employees:

|DepartmentID|	DepartmentName |
|------------|-----------------|
|4	         |Legal            |

Query to get all departments and their employees:

```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

Result:

| FirstName      | LastName | DepartmentName |
| -------------- | -------- | -------------- |
| Sanika         | Bhor     |   HR           |
| Disha          | Satpute  |  Finance       |
| Darshan        | Shinde   |    IT          |
|  NULL          | NULL     | Legal          |

Explanation: <br>The RIGHT JOIN returns all rows from the Departments table, including the new "Legal" department, even though there are no employees in it. The FirstName and LastName columns for that department are NULL.



## 4. FULL (OUTER) JOIN - 
The FULL JOIN (or FULL OUTER JOIN) returns all rows when there is a match in either left (table1) or right (table2) table. If there is no match, the result is NULL on the side where there is no match.

Syntax:

```sql
SELECT columns
FROM table1
FULL JOIN table2
ON table1.column = table2.column;
```

Example:

Combine the previous scenarios where Sarah has no department, and the Legal department has no employees:

```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
FULL JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

Result:

| FirstName      | LastName | DepartmentName |
| -------------- | -------- | -------------- |
| Sanika         | Bhor     |   HR           |
| Disha          | Satpute  |  Finance       |
| Darshan        | Shinde   |    IT          |
|  Sara          | Muluk    |    NULL        |
|  NULL          | NULL     |   Legal        |

Explanation:<br> The FULL JOIN returns all rows from both the Employees and Departments tables. Sarah is included even though she doesn't belong to a department, and the Legal department is included even though it has no employees.

## 5. CROSS JOIN -
The CROSS JOIN returns the Cartesian product of two tables, meaning it combines each row from the first table with every row from the second table. This results in all possible combinations of rows between the two tables.

Syntax:

```sql
SELECT columns
FROM table1
CROSS JOIN table2;
```

Example:

Query to combine all employees with all departments:
```sql
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;
```
Result:

| FirstName      | LastName | DepartmentName |
| -------------- | -------- | -------------- |
| Sanika         | Bhor     |   HR           |
| Sanika         | Bhor     |  Finance       |
| Sanika         | Bhor     |    IT          |
| Sanika         | Bhor     |    Legal       |
|  Disha         | Satpute  |   HR           |
|  Disha         |Satpute   |finance         |
...	              ...	      ...


Explanation: <br>The CROSS JOIN returns every possible combination of Employees and Departments. For example, Sanika is paired with every department, Disha is paired with every department, and so on.

## 6. SELF JOIN -
A SELF JOIN is a join where a table is joined with itself. This can be useful in scenarios where you need to compare rows within the same table.

Syntax:

```sql
SELECT columns
FROM table1 alias1
INNER JOIN table1 alias2
ON alias1.column = alias2.column;
```

Example:

Suppose we have an Employees table with a ManagerID column that references the EmployeeID of the employee's manager.

| EmployeeID  |  FirstName   |  LastName  |	DepartmentID   |
| ----------- | ------------ | ---------- | -------------- |
|      1      |   Sanika	 |   Bhor	  |     NULL       |
|      2      |   Disha	     |  Satpute   |       1        |
|      3      |  Darshan     |   Shinde	  |       1        |
|      4      |   Sara       |   Muluk    |       2        |

Query to get a list of employees along with their managers:
```sql
SELECT e1.FirstName AS Employee, e2.FirstName AS Manager
FROM Employees e1
INNER JOIN Employees e2
ON e1.ManagerID = e2.EmployeeID;
```
Result:
|Employee |	Manager  |
|---------|----------|
|Disha	  |Sanika    |
|Darshan  |Sanika    |
|Sarah    |Disha     |

Explanation: <br>The SELF JOIN joins the Employees table with itself, allowing us to match employees with their managers.

***************************************************************************************************************************************<br>

**Summary:**<br>

INNER JOIN: Returns only the rows with matching data in both tables.<br>

LEFT JOIN: Returns all rows from the left table and matched rows from the right table; unmatched rows from the right table will have NULL.<br>

RIGHT JOIN: Returns all rows from the right table and matched rows from the left table; unmatched rows from the left table will have NULL.<br>

FULL JOIN: Returns all rows when there is a match in either table; unmatched rows will have NULL.<br>

CROSS JOIN: Returns the Cartesian product of the two tables, i.e., all possible combinations of rows.<br>

SELF JOIN: Joins a table to itself to compare rows within the same table.<br>


These different types of joins allow you to perform complex queries across multiple tables and retrieve data based on relationships and conditions.


# Implementation 
o You can Implement all commands of Joins by giving reference of 'join.sql' script which is available in this Repository.<br>

o You can also <a href="https://github.com/disha-satpute/MySQL/blob/main/join.sql">Click Here</a> To get direct access to that Sql Script.






