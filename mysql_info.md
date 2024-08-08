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

#### MySQL

MySQL is an open-source relational database management system (RDBMS) that uses SQL as its primary language for managing databases.<br>

DDL, DML, and DCL are subsets of SQL (Structured Query Language) used to interact with and manage relational databases. Each subset serves a distinct purpose in database management:

•	DDL: Defines and manages database schema and structure.
•	DML: Manages and manipulates data within the database tables.
•	DCL: Controls access and permissions to the database and its objects.



