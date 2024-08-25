# MySQL Safe Update Mode

When performing UPDATE or DELETE operations, MySQL's safe update mode can prevent queries that might inadvertently affect many rows. The error encountered :

```sql
Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.
```

Solution Steps :

a. Temporarily Disable Safe Update Mode :

```sql
SET SQL_SAFE_UPDATES = 0;
```

Perform the Update :

```sql
UPDATE Teacher SET MentorID = 21 WHERE Teacher_id IN (22, 24);
```

Re-enable Safe Update Mode :

```sql
SET SQL_SAFE_UPDATES = 1;
```

b. Permanently Disable Safe Update Mode :

Using MySQL Workbench:

Navigate to Edit > Preferences.<br>
Select the SQL Editor tab.<br>
Uncheck the Safe Updates option.<br>
Reconnect to the database for changes to take effect.<br>

Note : Disabling safe update mode permanently is not generally recommended as it can lead to accidental mass updates or deletions.