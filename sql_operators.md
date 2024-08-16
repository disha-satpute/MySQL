# SQL Operators -

SQL operators are used in SQL statements to perform various operations on data. These operators can be categorized into several types based on their functionality. <br>
Below is a list of all the main SQL operators grouped by type:

1. Arithmetic Operators -

These operators are used to perform mathematical operations.

+ : Addition 
- : Subtraction
* : Multiplication
/ : Division
% : Modulus (returns the remainder of a division)


2. Comparison Operators -

These operators are used to compare two values and return a boolean result (TRUE or FALSE).

= : Equal to
<> or != : Not equal to
> : Greater than
< : Less than
>= : Greater than or equal to
<= : Less than or equal to
BETWEEN : Checks if a value is within a range of values
IN : Checks if a value matches any value in a list
LIKE : Searches for a specified pattern in a column
IS NULL : Checks if a value is NULL
IS NOT NULL : Checks if a value is not NULL

3. Logical Operators -

These operators are used to combine multiple conditions.

AND : Returns TRUE if all conditions are TRUE
OR : Returns TRUE if any condition is TRUE
NOT : Reverses the result of a condition (i.e., TRUE becomes FALSE, and FALSE becomes TRUE)

4. Bitwise Operators -

These operators are used to perform bit-level operations on binary numbers.

& : Bitwise AND
| : Bitwise OR
^ : Bitwise XOR
~ : Bitwise NOT
<< : Bitwise left shift
>> : Bitwise right shift

5. Set Operators -

These operators are used to combine the results of two or more SELECT statements.

UNION : Combines the results of two or more SELECT statements and removes duplicates.
UNION ALL : Combines the results of two or more SELECT statements, including duplicates.
INTERSECT : Returns the common rows from two SELECT statements (supported in some databases like Oracle and SQL Server, but not in MySQL).
MINUS : Returns rows from the first SELECT statement that are not in the second (available in Oracle; SQL Server equivalent is EXCEPT).

6. String Operators -

These operators are used to concatenate strings or perform other string operations.

|| or + : Concatenates two strings (syntax varies depending on the database)
LIKE : Performs pattern matching with wildcards (% for any number of characters, _ for a single character)
ILIKE : Case-insensitive LIKE (available in some databases like PostgreSQL)

7. Other Operators -

These are miscellaneous operators used in specific contexts.

EXISTS : Checks if a subquery returns any rows
ANY : Compares a value to any value in a list or subquery
ALL : Compares a value to all values in a list or subquery
SOME : Similar to ANY, used to compare a value to a list or subquery