# MySQL Procedure

A stored procedure in MySQL is a set of SQL statements that are stored and executed on the database server.Stored procedures help improve performance by reducing the number of calls between the client and the server. They can include control structures, parameters, and can be used to encapsulate complex business logic.

**Components of a Stored Procedure -**

Input Parameters (IN): Used to pass values into the procedure.

Output Parameters (OUT): Used to return values from the procedure.

Input-Output Parameters (INOUT): Can be used both to send values into the procedure and get results back.

Body: Contains SQL statements, including queries, updates, control flow constructs (IF, WHILE, etc.), and error handling.


## Simple Stored Procedure

This example creates a stored procedure that takes a department ID as input and returns all employees in that department.

```sql
DELIMITER $$

CREATE PROCEDURE GetEmployeesByDept(IN dept_id INT)
BEGIN
    SELECT EmpID, Name, Salary
    FROM Employees
    WHERE DepartmentID = dept_id;
END $$

DELIMITER ;
```

Explanation:

- DELIMITER $$ allows the use of $$ as a delimiter to define the procedure block since semicolons are used within the procedure.

- The procedure GetEmployeesByDept takes dept_id as an input parameter.

- It selects all employees from the Employees table where the department ID matches the given input.

### To call this procedure:

```sql
CALL GetEmployeesByDept(3);
```
## Stored Procedure with OUT Parameter

This procedure calculates the total salary of all employees in a department and returns the result using an OUT parameter.

```sql
DELIMITER $$

CREATE PROCEDURE GetTotalSalaryByDept(IN dept_id INT, OUT total_salary DECIMAL(10, 2))
BEGIN
    SELECT SUM(Salary) INTO total_salary
    FROM Employees
    WHERE DepartmentID = dept_id;
END $$

DELIMITER ;
```

Explanation:

The procedure GetTotalSalaryByDept takes an IN parameter dept_id and an OUT parameter total_salary.

It calculates the total salary for the given department and stores the result in total_salary.


### To call this procedure:

```sql
CALL GetTotalSalaryByDept(3, @total_salary);
SELECT @total_salary;  -- To retrieve the output value
```

## Procedure with INOUT Parameter

This example demonstrates the use of an INOUT parameter, where the procedure will both receive and modify the input value.

```sql
DELIMITER $$

CREATE PROCEDURE IncrementSalary(INOUT salary DECIMAL(10, 2))
BEGIN
    SET salary = salary * 1.10;
END $$

DELIMITER ;
```

Explanation:

The procedure IncrementSalary takes an INOUT parameter salary.

It increases the input salary by 10% and returns the updated salary.

### To call this procedure:

```sql
SET @emp_salary = 5000;
CALL IncrementSalary(@emp_salary);
SELECT @emp_salary;  -- This will return 5500
```

## Modifying and Dropping Procedures

To Modify a Procedure :

You must drop the procedure first and then recreate it since MySQL does not support the ALTER PROCEDURE statement.

```sql
DROP PROCEDURE IF EXISTS procedure_name;
```

### To Drop a Procedure:

```sql
DROP PROCEDURE procedure_name;
```

<hr/>

## Control Flow Statements in Procedures :

Stored procedures support control flow statements like-

**1. IF...THEN...ELSE Statement -**

The IF...THEN...ELSE statement allows you to execute a block of SQL code based on a specific condition. It works similarly to conditional statements in programming languages.

```sql
sql
Copy code
DELIMITER $$

CREATE PROCEDURE CalculateBonus(IN salary DECIMAL(10, 2), OUT bonus DECIMAL(10, 2))
BEGIN
    IF salary > 5000 THEN
        SET bonus = salary * 0.1;  -- 10% bonus for salary above 5000
    ELSEIF salary BETWEEN 3000 AND 5000 THEN
        SET bonus = salary * 0.05; -- 5% bonus for salary between 3000 and 5000
    ELSE
        SET bonus = salary * 0.03; -- 3% bonus for salary below 3000
    END IF;
END $$

DELIMITER ;
```
In this example, the procedure calculates a bonus based on the salary range.


**2. CASE Statement -**

The CASE statement allows you to choose between multiple conditions and execute specific code for each case. It's similar to the switch statement in other languages.

Simple CASE:

```sql
DELIMITER $$

CREATE PROCEDURE GetDepartmentName(IN dept_id INT, OUT dept_name VARCHAR(100))
BEGIN
    CASE dept_id
        WHEN 1 THEN SET dept_name = 'HR';
        WHEN 2 THEN SET dept_name = 'Sales';
        WHEN 3 THEN SET dept_name = 'IT';
        ELSE SET dept_name = 'Unknown';
    END CASE;
END $$

DELIMITER ;
```

Searched CASE:

```sql
DELIMITER $$

CREATE PROCEDURE GetSalaryCategory(IN salary DECIMAL(10, 2), OUT category VARCHAR(50))
BEGIN
    CASE
        WHEN salary > 5000 THEN SET category = 'High';
        WHEN salary BETWEEN 3000 AND 5000 THEN SET category = 'Medium';
        ELSE SET category = 'Low';
    END CASE;
END $$

DELIMITER ;
```

In this example, the procedure classifies employees into categories based on their salary.

**3. LOOP, WHILE, and REPEAT Statements :**

- LOOP Statement

The LOOP statement repeats a block of code indefinitely, until it's explicitly exited using a LEAVE statement.

```sql
DELIMITER $$

CREATE PROCEDURE LoopExample()
BEGIN
    DECLARE counter INT DEFAULT 0;
    loop_label: LOOP
        SET counter = counter + 1;
        IF counter = 5 THEN
            LEAVE loop_label;
        END IF;
    END LOOP;
END $$

DELIMITER ;
```

In this example, the loop increments a counter until it reaches 5, at which point it exits the loop using LEAVE.

- WHILE Loop

The WHILE loop repeats a block of code as long as the condition is true.

Syntax:

```sql
DELIMITER $$

CREATE PROCEDURE WhileExample()
BEGIN
    DECLARE counter INT DEFAULT 0;
    WHILE counter < 10 DO
        SET counter = counter + 1;
    END WHILE;
END $$

DELIMITER ;
```

In this example, the loop runs until the counter reaches 10.

- REPEAT-UNTIL Loop 

The REPEAT loop is similar to the WHILE loop, but it checks the condition after executing the block of code, so the code runs at least once.

```sql
DELIMITER $$

CREATE PROCEDURE RepeatExample()
BEGIN
    DECLARE counter INT DEFAULT 0;
    REPEAT
        SET counter = counter + 1;
    UNTIL counter = 10
    END REPEAT;
END $$

DELIMITER ;
```

In this example, the loop runs until the counter reaches 10, but it guarantees that the block runs at least once.