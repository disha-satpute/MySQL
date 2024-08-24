# SQL Errors

In SQL, errors can occur for various reasons, such as syntax issues, constraint violations, or invalid operations. <br>Here’s a brief overview of common types of SQL errors:

**1. Syntax Errors -**

These occur when SQL commands are not written in the correct format or order.

Example: Missing a semicolon at the end of a statement.

```sql
SELECT * FROM Employees
-- Error: SQL syntax error due to missing semicolon.
```

Example: Misspelling a keyword or identifier.
```sql
SELCT * FROM Employees;
-- Error: "SELCT" is not recognized as a valid SQL keyword.
```

**2. Constraint Violations -**

These occur when data being inserted or updated violates constraints defined on the table.

Primary Key Violation:

```sql
INSERT INTO Employees (EmployeeID, FirstName, LastName) VALUES (1, 'John', 'Doe');
INSERT INTO Employees (EmployeeID, FirstName, LastName) VALUES (1, 'Jane', 'Smith');
-- Error: Duplicate entry '1' for key 'PRIMARY'.
```

Foreign Key Violation:
```sql
INSERT INTO Orders (OrderID, CustomerID) VALUES (101, 9999);
-- Error: Foreign key constraint fails because CustomerID 9999 does not exist in the Customers table.
```

**3. Data Type Errors -**

These occur when there is a mismatch between the data type of a column and the data being inserted or updated.

Example: Trying to insert a string into a numeric column.
```sql
INSERT INTO Employees (Salary) VALUES ('TenThousand');
-- Error: Incorrect data type; expects a numeric value.
```

**4. Null Constraint Violations -**
These occur when a NULL value is inserted into a column that has a NOT NULL constraint.

Example:
```sql
INSERT INTO Employees (FirstName, LastName) VALUES ('John', NULL);
-- Error: Column 'LastName' cannot be null.
```

**5. Permission Errors -**

These occur when the user does not have the necessary permissions to perform an action.

Example: Trying to delete a table without proper permissions.
```sql
DROP TABLE Employees;
-- Error: You don't have permission to drop this table.
```

**6. Division by Zero Error -**
This occurs when a division operation has a denominator of zero.

Example:
```sql
SELECT 10 / 0 AS Result;
-- Error: Division by zero.
```

**7. Subquery Errors -**

These occur when a subquery returns more rows than expected, particularly in contexts expecting a single value.

Example:
```sql
SELECT * FROM Employees WHERE EmployeeID = (SELECT EmployeeID FROM Departments);
-- Error: Subquery returns more than one row.
```

**8. Deadlock Errors -**

These occur when two or more transactions are waiting for each other to release resources, leading to a deadlock.

Example:
```sql
-- Transaction 1 locks Table A and waits for Table B.
-- Transaction 2 locks Table B and waits for Table A.
-- Error: Deadlock detected.
```

**9. Query Timeout Errors -**

These occur when a query takes too long to execute, typically due to complex queries or large data sets.

Example:
```sql
SELECT * FROM LargeTable;
-- Error: Query execution exceeded the timeout limit.
```

**10. Invalid Operation Errors -**

These occur when attempting to perform operations that are not allowed or make no sense in context.

Example: Trying to update a view directly.
```sql
UPDATE MyView SET Column1 = 'NewValue';
-- Error: Cannot modify a view directly; update the underlying table.
```

Understanding these errors can help diagnose issues in SQL statements and fix them effectively.