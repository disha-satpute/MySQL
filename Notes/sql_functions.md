# SQL Functions

MySQL functions are built-in operations that perform a variety of tasks on data within a MySQL database. These functions can be categorized based on their purpose and usage.

Here’s a summary of the most commonly used MySQL functions :


## 1. String Functions
**CONCAT() :**
 Concatenates two or more strings.

```sql
SELECT CONCAT('Hello', ' ', 'World'); -- Output: 'Hello World'
```

**SUBSTRING() :**
 Extracts a substring from a string.

```sql
SELECT SUBSTRING('Hello World', 1, 5); -- Output: 'Hello'
```

**LENGTH() :** Returns the length of a string.

```sql
SELECT LENGTH('Hello'); -- Output: 5
```
**LOWER() :**
 Converts a string to lowercase.

```sql
SELECT LOWER('HELLO'); -- Output: 'hello'
```

**UPPER() :**
 Converts a string to uppercase.

```sql
SELECT UPPER('hello'); -- Output: 'HELLO'
```

**TRIM() :**
 Removes leading and trailing spaces from a string.

```sql
SELECT TRIM('  Hello  '); -- Output: 'Hello'
```

## 2. Numeric Functions

**ABS() :**
 Returns the absolute value of a number.

```sql
SELECT ABS(-10); -- Output: 10
```

**ROUND() :**
 Rounds a number to a specified number of decimal places.

```sql
SELECT ROUND(123.456, 2); -- Output: 123.46
```

**CEIL() / CEILING() :**
 Returns the smallest integer greater than or equal to a number.

```sql
SELECT CEIL(1.2); -- Output: 2
```

**FLOOR() :**
 Returns the largest integer less than or equal to a number.

```sql
SELECT FLOOR(1.8); -- Output: 1
```

**POWER():**
 Returns a number raised to the power of another number.

```sql
SELECT POWER(2, 3); -- Output: 8
```

**MOD():**
 Returns the remainder of a division.

```sql
SELECT MOD(10, 3); -- Output: 1
```