## What is Database ?

Database : It is organized collection of data so that it can be easily accessed.<br>
To manage this databases , **DBMS (database management system)** is used.

Types of DBMS :
1)	Relational Database
2)	Non-Relational Database

o	Relational Database : <br>
In this Database,data stored in table (rows & columns) format<br>
e.g. MySql,Oracle,PostgreSQL,SQLite,SQLserver<br>
  ```sql

+-------+----------+-------------------+--------------+
| Id    | username | email             | password     |
+------------------+-------------------+--------------+
| 101   |  Disha   | disha44@gmail.com | di1234       |
|       |          |                   |              |
+-------+----------+-------------------+--------------+

   ```
o	Non-Relational Database :<br>
In this Database , data stored in Key-Value pair<br>
e.g. MongoDB,Redis,Firebase Realtime Database<br>

```sql
    {
        "Id":101,
        "name":"Disha",
        "email": "disha.g@gmail.com",
        "password": "disha";
    };
```
<hr/>

## Structure Query Language

It’s a standardized language used for managing and manipulating relational databases. SQL allows users to perform a variety of tasks, such as querying data, updating records, deleting data, and creating or modifying database structures.<br>

**MySQL** : MySQL is an open-source relational database management system (RDBMS) that uses SQL as its primary language for managing databases.<br>

DDL, DML, and DCL are subsets of SQL (Structured Query Language) used to interact with and manage relational databases. Each subset serves a distinct purpose in database management:

o	DDL: Defines and manages database schema and structure.<br>
o	DML: Manages and manipulates data within the database tables.<br>
o	DCL: Controls access and permissions to the database and its objects.<br>


## DDL

Data Definition Language (DDL) commands are used to define and manage the structure of database objects such as tables, indexes, and schemas. They deal with the schema of the database and manage the metadata, rather than the data itself. <br>Here’s an overview of the main DDL commands:

1. CREATE -

The CREATE command is used to create new database objects. This includes tables, indexes, views, and schemas.<br>
```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```
2. ALTER -

The ALTER command is used to modify existing database objects.<br>
```sql
ALTER TABLE table_name
ADD column_name datatype constraints;

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
MODIFY COLUMN column_name datatype constraints;

ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_definition;
```

3. DROP -

The DROP command removes database objects. It permanently deletes the object and its data.<br>
```sql
DROP TABLE table_name;
```

4. TRUNCATE -

While not strictly part of DDL in all SQL dialects, TRUNCATE is often included for completeness. It removes all rows from a table but does not remove the table structure itself. It is typically faster than a DELETE operation.<br>
```sql
TRUNCATE TABLE table_name;
```

5. RENAME -

The RENAME command is used to change the name of an existing database object.<br>
```sql
RENAME TABLE old_table_name TO new_table_name;
```
__________________________________________________________________________________________________________________________________________________

## DML

Data Manipulation Language (DML) commands are used to manage and manipulate data within the tables of a database. Unlike Data Definition Language (DDL), which deals with the structure of the database, DML commands focus on the data itself.<br> Here’s a detailed look at the main DML commands:

1. SELECT -

The SELECT command retrieves data from one or more tables and is the most commonly used DML command. <br>It can fetch specific columns, all columns, or aggregated data.

```sql
SELECT column1, column2 FROM table_name;
```
o	With Conditions:
```sql
SELECT column1, column2 FROM table_name WHERE condition;
```
o	With Sorting:
```sql
SELECT column1, column2 FROM table_name ORDER BY column1 ASC|DESC;
```
o	With Aggregation:
```sql
SELECT COUNT(*), AVG(column_name) FROM table_name;
```
o	With Joins:
```sql
SELECT columns FROM table1 JOIN table2 ON table1.column = table2.column;
```
o	With Grouping:
```sql
SELECT column_name, COUNT(*) FROM table_name GROUP BY column_name;
```
o	With Subqueries:
```sql
SELECT column1 FROM table_name WHERE column2 IN (SELECT column2 FROM another_table);
```

2. INSERT INTO -

The INSERT INTO command adds new rows of data into a table.

o	Inserting Specific Columns:
```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
```
o	Inserting All Columns:
```sql
INSERT INTO table_name VALUES (value1, value2, ...);
```
o	Inserting from Another Table:
```sql
INSERT INTO table_name (column1, column2)
SELECT column1, column2 FROM another_table WHERE condition;
```

3. UPDATE -

The UPDATE command modifies existing data in a table.

o	Updating Specific Rows:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```
o	Updating All Rows:
```sql
UPDATE table_name
SET column1 = value1;
```
o	Conditional Updates:
```sql
UPDATE table_name
SET column1 = value1
WHERE column2 = condition;
```

4. DELETE -

The DELETE command removes rows from a table. Be cautious with DELETE as it can permanently remove data.

o	Deleting Specific Rows:
```sql
DELETE FROM table_name WHERE condition;
```
o	Deleting All Rows:
```sql
DELETE FROM table_name;
```
__________________________________________________________________________________________________________________________________________________

## DCL

Data Control Language (DCL) commands are used to control access to data within a database. They manage permissions and access rights, ensuring that only authorized users can perform specific actions on database objects. <br>Here’s a detailed look at the main DCL commands:

1. GRANT -

The GRANT command is used to provide specific permissions or rights to users or roles on database objects. This command allows administrators to control who can perform operations such as querying, updating, or modifying the data.

Granting Permissions:

GRANT privilege_type ON object TO user_or_role;

o	Privilege Types: Examples include SELECT, INSERT, UPDATE, DELETE, EXECUTE, etc.<br>
o	Object: This could be a table, view, schema, or other database objects.<br>
o	User or Role: Specifies the user or role to whom the privileges are granted.<br>

Examples:

o	Granting SELECT permission on a table:
```sql
GRANT SELECT ON employees TO john_doe;
```
o	Granting INSERT and UPDATE permissions on a table:
```sql
GRANT INSERT, UPDATE ON employees TO manager_role;
```
o	Granting EXECUTE permission on a stored procedure:
```sql
GRANT EXECUTE ON procedure_name TO user_role;
```

2. REVOKE -

The REVOKE command is used to remove previously granted permissions from users or roles. This helps maintain security by ensuring that users no longer have access to data or operations they should not perform.

o	Revoking Permissions:
```sql
REVOKE privilege_type ON object FROM user_or_role;
```
Examples:

o	Revoking SELECT permission from a user:
```sql
REVOKE SELECT ON employees FROM john_doe;
```
o	Revoking INSERT and UPDATE permissions from a role:
```sql
REVOKE INSERT, UPDATE ON employees FROM manager_role;
```
o	Revoking EXECUTE permission on a procedure:
```sql
REVOKE EXECUTE ON procedure_name FROM user_role;
```

## Implementation

o You can Implement all commands of DDL,DML,DCL by giving reference of 'companyDB.sql' script which is available in this Repository.<br>

o You can also <a href="https://github.com/disha-satpute/MySQL/blob/main/companyDB.sql">Click Here</a> To get direct access to that Sql Script.


