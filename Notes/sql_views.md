# SQL Views

- A view in SQL is a virtual table based on the result of a SELECT query.

- It does not store data physically like a regular table but instead displays the data from one or more underlying tables dynamically when queried.

- A view can be thought of as a saved query that can be used as a table within SQL statements.

Key Characteristics of Views :

- Virtual Table: A view is not a physical table. It doesn’t hold any data itself but pulls data from the underlying tables when accessed.

- Stored Query: A view stores a SELECT query. When you query a view, SQL runs the stored query and returns the result as if it were a table.

- Abstraction Layer: Views provide an abstraction layer to simplify complex queries or restrict access to certain data.

- Security: Views can be used to expose only specific columns or rows to users, hiding sensitive data from direct access.

- Reusability: Once created, a view can be reused in other queries, making complex queries simpler.

## Creating Views

syntax :

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Example :

Suppose we have a table called Employees with columns EmpID, Name, Department, Salary, and we want to create a view to show only the employees in the IT department.

```sql
CREATE VIEW IT_Employees AS
SELECT EmpID, Name, Salary
FROM Employees
WHERE Department = 'IT';
```

You can now query the IT_Employees view as if it were a table:

```sql
SELECT * FROM IT_Employees;
```

This will return all employees from the IT department with their EmpID, Name, and Salary.

## Updating Views

- Views can sometimes be updated, which means you can use an UPDATE, INSERT, or DELETE statement on a view, and the changes will reflect in the underlying table.

- However, not all views are updatable. If the view contains complex joins, aggregations, or uses DISTINCT, GROUP BY, HAVING, or subqueries, the view might not be updatable.

Example of an Updatable View:

If you create a simple view like:
```sql
CREATE VIEW Salary_View AS
SELECT EmpID, Salary
FROM Employees;
```

You can update the salary for an employee through the view:

```sql
UPDATE Salary_View
SET Salary = 75000
WHERE EmpID = 101;
```

This will update the Salary in the underlying Employees table.

## Dropping Views

To remove a view, use the DROP VIEW statement:

```sql
DROP VIEW view_name;
```

Example:

```sql
DROP VIEW IT_Employees;
```

## Advantages and Limitations:

**Advantages:**<br>

Simplifies complex queries.<br>
Enhances security by controlling data exposure.<br>
Facilitates better management of access to sensitive data.<br>


**Limitations:**<br>

Views can sometimes be slow if based on very large datasets because they don’t store data and must recompute results every time.<br>
Some views may not be updatable, depending on the complexity of the query.