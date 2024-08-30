# SQL Functions

MySQL functions are built-in operations that perform a variety of tasks on data within a MySQL database. These functions can be categorized based on their purpose and usage.

Here’s a summary of the most commonly used MySQL functions :


## 1. String Functions :

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