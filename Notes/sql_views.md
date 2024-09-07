# SQL Views

- A view in SQL is a virtual table based on the result of a SELECT query. 
- It does not store data physically like a regular table but instead displays the data from one or more underlying tables dynamically when queried. 
- A view can be thought of as a saved query that can be used as a table within SQL statements.

Key Characteristics of Views :

- Virtual Table: A view is not a physical table. It doesn’t hold any data itself but pulls data from the underlying tables when accessed.

- Stored Query: A view stores a SELECT query. When you query a view, SQL runs the stored query and returns the result as if it were a table.

- Abstraction Layer: Views provide an abstraction layer to simplify complex queries or restrict access to certain data.

- Security: Views can be used to expose only specific columns or rows to users, hiding sensitive data from direct access.

- Reusability: Once created, a view can be reused in other queries, making complex queries simpler.

Advantages of Using Views:

- Simplifies Complex Queries: Instead of writing complex queries multiple times, you can create a view and use it as a simple reference in future queries.

- Data Security: Views can limit the access to specific columns or rows, improving security by controlling what data is exposed to users.

- Data Aggregation: Views can aggregate data (using GROUP BY, JOIN, etc.) and present it in a summarized form.

- Data Independence: If the structure of the underlying tables changes, you can modify the view without altering queries that use the view.

- Improves Readability: Views can improve the readability of queries by breaking down complex logic into smaller, reusable components.