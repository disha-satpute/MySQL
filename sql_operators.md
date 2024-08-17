# SQL Operators -

SQL operators are used in SQL statements to perform various operations on data. These operators can be categorized into several types based on their functionality. <br>

**1. Arithmetic Operators -**

These operators are used to perform basic arithmetic operations on numeric data.

'+' (Addition): Adds two values.
```sql
SELECT 5 + 3 AS Sum;
-- Result: 8
```

'-' (Subtraction): Subtracts the second value from the first.
```sql
SELECT 10 - 4 AS Difference;
-- Result: 6
```

'*' (Multiplication): Multiplies two values.
```sql
SELECT 7 * 6 AS Product;
-- Result: 42
```

'/' (Division): Divides the first value by the second.
```sql
SELECT 20 / 4 AS Quotient;
-- Result: 5
```

'%' (Modulus): Returns the remainder of a division.
```sql
SELECT 10 % 3 AS Remainder;
-- Result: 1
```
**2. Comparison Operators -**

These operators are used to compare two values.

'=' (Equal to): Checks if two values are equal.
```sql
SELECT * FROM Employees WHERE DepartmentID = 3;
-- Returns all employees in department 3
```

'<>' or '!'= (Not equal to): Checks if two values are not equal.
```sql
SELECT * FROM Employees WHERE DepartmentID <> 3;
-- Returns all employees not in department 3
```

'>' (Greater than): Checks if the left value is greater than the right value.
```sql
SELECT * FROM Employees WHERE Salary > 50000;
-- Returns employees with a salary greater than 50,000
```

'<' (Less than): Checks if the left value is less than the right value.
```sql
SELECT * FROM Employees WHERE Salary < 40000;
-- Returns employees with a salary less than 40,000
```

'>=' (Greater than or equal to): Checks if the left value is greater than or equal to the right value.
```sql
SELECT * FROM Employees WHERE Salary >= 60000;
-- Returns employees with a salary of 60,000 or more
```

'<=' (Less than or equal to): Checks if the left value is less than or equal to the right value.
```sql
SELECT * FROM Employees WHERE Salary <= 30000;
-- Returns employees with a salary of 30,000 or less
```

'BETWEEN' : Checks if a value is within a range of values (inclusive).
```sql
SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 60000;
-- Returns employees with a salary between 40,000 and 60,000
```

'IN': Checks if a value matches any value in a list.
```sql
SELECT * FROM Employees WHERE DepartmentID IN (1, 3, 5);
-- Returns employees in departments 1, 3, or 5
```

'LIKE': Searches for a specified pattern in a column. Wildcards are often used:

% represents zero or more characters.
_ represents a single character.

```sql
SELECT * FROM Employees WHERE FirstName LIKE 'J%';
-- Returns employees whose first name starts with 'J'
```

'IS NULL': Checks if a value is NULL.
```sql
SELECT * FROM Employees WHERE ManagerID IS NULL;
-- Returns employees who have no manager
```

'IS NOT NULL': Checks if a value is not NULL.
```sql
SELECT * FROM Employees WHERE ManagerID IS NOT NULL;
-- Returns employees who have a manager
```
