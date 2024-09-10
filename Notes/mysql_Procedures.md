# MySQL Procedure

A stored procedure in MySQL is a set of SQL statements that are stored and executed on the database server.Stored procedures help improve performance by reducing the number of calls between the client and the server. They can include control structures, parameters, and can be used to encapsulate complex business logic.

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

sql
Copy code
DELIMITER $$

CREATE PROCEDURE GetTotalSalaryByDept(IN dept_id INT, OUT total_salary DECIMAL(10, 2))
BEGIN
    SELECT SUM(Salary) INTO total_salary
    FROM Employees
    WHERE DepartmentID = dept_id;
END $$

DELIMITER ;
Explanation:

The procedure GetTotalSalaryByDept takes an IN parameter dept_id and an OUT parameter total_salary.
It calculates the total salary for the given department and stores the result in total_salary.
To call this procedure:

sql
Copy code
CALL GetTotalSalaryByDept(3, @total_salary);
SELECT @total_salary;  -- To retrieve the output value
