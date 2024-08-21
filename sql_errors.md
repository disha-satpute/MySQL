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