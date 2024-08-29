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
**3. Logical Operators -**

Logical operators are used to combine multiple conditions in a query.

AND: Returns TRUE if all conditions are TRUE.
```sql
SELECT * FROM Employees WHERE Salary > 50000 AND DepartmentID = 3;
-- Returns employees who have a salary greater than 50,000 and are in department 3
```

OR: Returns TRUE if any condition is TRUE.
```sql
SELECT * FROM Employees WHERE Salary > 50000 OR DepartmentID = 3;
-- Returns employees who have a salary greater than 50,000 or are in department 3
```

NOT: Reverses the result of a condition.
```sql
SELECT * FROM Employees WHERE NOT DepartmentID = 3;
-- Returns employees who are not in department 3
```

**4. Bitwise Operators -**

These operators perform bit-level operations on integer values.

'&' (Bitwise AND): Compares each bit of two numbers. The result is 1 if both bits are 1, otherwise 0.

```sql
SELECT 5 & 3 AS BitwiseAnd;
-- Result: 1 (Binary: 0101 & 0011 = 0001)
```

'|' (Bitwise OR): Compares each bit of two numbers. The result is 1 if either bit is 1, otherwise 0.
```sql
SELECT 5 | 3 AS BitwiseOr;
-- Result: 7 (Binary: 0101 | 0011 = 0111)
```

'^' (Bitwise XOR): Compares each bit of two numbers. The result is 1 if one bit is 1 and the other is 0, otherwise 0.
```sql
SELECT 5 ^ 3 AS BitwiseXor;
-- Result: 6 (Binary: 0101 ^ 0011 = 0110)
```

'~' (Bitwise NOT): Inverts all the bits of the number.
```sql
SELECT ~5 AS BitwiseNot;
-- Result: -6 (Binary: ~0101 = 1010)
```

'<<' (Bitwise left shift): Shifts the bits of the number to the left by a specified number of positions.
```sql
SELECT 5 << 1 AS BitwiseLeftShift;
-- Result: 10 (Binary: 0101 << 1 = 1010)
```

'>>' (Bitwise right shift): Shifts the bits of the number to the right by a specified number of positions.
```sql
SELECT 5 >> 1 AS BitwiseRightShift;
-- Result: 2 (Binary: 0101 >> 1 = 0010)
```

**5. Set Operators -**

Set operators are used to combine the results of two or more SELECT queries.

UNION: Combines the result sets of two queries and removes duplicates.
```sql
SELECT FirstName FROM Employees WHERE DepartmentID = 1
UNION
SELECT FirstName FROM Employees WHERE DepartmentID = 2;
-- Returns the combined result of employees from department 1 and 2, with no duplicates
```

UNION ALL: Combines the result sets of two queries, including duplicates.
```sql
SELECT FirstName FROM Employees WHERE DepartmentID = 1
UNION ALL
SELECT FirstName FROM Employees WHERE DepartmentID = 2;
-- Returns the combined result of employees from department 1 and 2, with duplicates
```

INTERSECT: Returns only the rows that appear in both result sets (supported in databases like Oracle and SQL Server, not in MySQL).
```sql
SELECT FirstName FROM Employees WHERE DepartmentID = 1
INTERSECT
SELECT FirstName FROM Employees WHERE DepartmentID = 2;
-- Returns the names of employees who are in both department 1 and 2
```

MINUS (or EXCEPT in SQL Server): Returns the rows from the first result set that are not in the second result set.
```sql
SELECT FirstName FROM Employees WHERE DepartmentID = 1
MINUS
SELECT FirstName FROM Employees WHERE DepartmentID = 2;
-- Returns employees in department 1 who are not in department 2 (Oracle syntax)
```

**6. String Operators -**

These operators are used to perform operations on string data.

'||' or '+' (Concatenation): Concatenates two strings (syntax varies by database).
```sql
SELECT FirstName || ' ' || LastName AS FullName FROM Employees;
-- Returns the full name of employees by concatenating the first and last names (Oracle/PostgreSQL syntax)
```
```sql
SELECT FirstName + ' ' + LastName AS FullName FROM Employees;
-- Returns the full name of employees by concatenating the first and last names (SQL Server syntax)
```

LIKE: Searches for a specified pattern in a column, using wildcards.
```sql
SELECT * FROM Employees WHERE LastName LIKE '_oe';
-- Returns employees whose last name is three characters long and ends with 'oe' (e.g., "Doe")
```

**7. Other Operators -**
These operators are used in specific contexts, often involving subqueries.

EXISTS: Returns TRUE if a subquery returns any rows.
```sql
SELECT * FROM Employees WHERE EXISTS (SELECT * FROM Departments WHERE DepartmentID = Employees.DepartmentID);
-- Returns employees who belong to an existing department
```

ANY: Compares a value to any value in a list or subquery.
```sql
SELECT * FROM Employees WHERE Salary > ANY (SELECT Salary FROM Employees WHERE DepartmentID = 3);
-- Returns employees whose salary is greater than any employee in department 3
```

ALL: Compares a value to all values in a list or subquery.
```sql
SELECT * FROM Employees WHERE Salary > ALL (SELECT Salary FROM Employees WHERE DepartmentID = 3);
-- Returns employees whose salary is greater than all employees in department 3
```

SOME: Synonym for ANY, used to compare a value to a list or subquery.
```sql
SELECT * FROM Employees WHERE Salary > SOME (SELECT Salary FROM Employees WHERE DepartmentID = 3);
-- Returns employees whose salary is greater than at least one employee in department 3
```

These are the main SQL operators, each serving different purposes depending on the context of your query
