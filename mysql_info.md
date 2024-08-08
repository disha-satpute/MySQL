## What is Database ?

Database : It is organized collection of data so that it can be easily accessed.<br>
To manage this databases , **DBMS (database management system)** is used.

Types of DBMS :
1)	Relational Database
2)	Non-Relational Database

•	Relational Database : <br>
In this Database,data stored in table (rows & columns) format<br>
e.g. MySql,Oracle,PostgreSQL,SQLite,SQLserver<br>
  ```bash
+----------------+-------------+----------------------+
| Id    | username | email             | password     |
+----------------+------------+-----------------------+
| 101   |  Disha   | disha.g@gmail.com | disha        |
|       |          |                   |              |
+----------------+-------------+----------------------+
   ```
•	Non-Relational Database :<br>
In this Database , data stored in Key-Value pair<br>
e.g. MongoDB,Redis,Firebase Realtime Database<br>
    ```bash
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

MySQL : MySQL is an open-source relational database management system (RDBMS) that uses SQL as its primary language for managing databases.<br>

DDL, DML, and DCL are subsets of SQL (Structured Query Language) used to interact with and manage relational databases. Each subset serves a distinct purpose in database management:

•	DDL: Defines and manages database schema and structure.
•	DML: Manages and manipulates data within the database tables.
•	DCL: Controls access and permissions to the database and its objects.


## DDL

Data Definition Language (DDL) commands are used to define and manage the structure of database objects such as tables, indexes, and schemas. They deal with the schema of the database and manage the metadata, rather than the data itself. Here’s an overview of the main DDL commands:

1. CREATE -
The CREATE command is used to create new database objects. This includes tables, indexes, views, and schemas.

•	CREATE TABLE: Defines a new table and its columns.
```bash
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```
2. ALTER -
The ALTER command is used to modify existing database objects.

•	ALTER TABLE: Changes the structure of an existing table. Common operations include adding, deleting, or modifying columns, and adding constraints.
```bash
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
The DROP command removes database objects. It permanently deletes the object and its data.
•	DROP TABLE: Deletes a table and all of its data.
```bash
DROP TABLE table_name;
```

4. TRUNCATE -
While not strictly part of DDL in all SQL dialects, TRUNCATE is often included for completeness. It removes all rows from a table but does not remove the table structure itself. It is typically faster than a DELETE operation.

•	TRUNCATE TABLE: Clears all data from a table.
```bash
TRUNCATE TABLE table_name;
```

5. RENAME
The RENAME command is used to change the name of an existing database object.
•	RENAME TABLE: Changes the name of a table.
```bash
RENAME TABLE old_table_name TO new_table_name;
```

Additional Considerations
•	Constraints: When using ALTER TABLE, you can also add or remove constraints (e.g., PRIMARY KEY, FOREIGN KEY, UNIQUE, CHECK).
•	Permissions: Database administrators use DDL commands to control permissions and access to database objects.
DDL commands are crucial for setting up and maintaining the structure of a database, ensuring that it meets the needs of the application and users.




