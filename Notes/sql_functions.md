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

## 3. Date and Time Functions

**NOW() :**
 Returns the current date and time.

```sql
SELECT NOW(); -- Output: '2024-08-29 14:50:00'
```

**CURDATE() :**
 Returns the current date.

```sql
SELECT CURDATE(); -- Output: '2024-08-29'
```

**CURTIME() :**
 Returns the current time.

```sql
SELECT CURTIME(); -- Output: '14:50:00'
```

**DATE_ADD() :**
 Adds a time/date interval to a date.

```sql
SELECT DATE_ADD('2024-08-29', INTERVAL 7 DAY); -- Output: '2024-09-05'
```

**DATEDIFF() :**
 Returns the difference in days between two dates.

```sql
SELECT DATEDIFF('2024-09-05', '2024-08-29'); -- Output: 7
```

**YEAR() / MONTH() / DAY() :**
 Extracts the year, month, or day from a date.

```sql
SELECT YEAR(NOW()); -- Output: 2024
SELECT MONTH(NOW()); -- Output: 8
SELECT DAY(NOW()); -- Output: 29
```