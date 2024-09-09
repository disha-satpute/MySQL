USE collage;

  /* Create View */
CREATE VIEW Clg_Teacher AS
SELECT Teacher_id,first_name,last_name
FROM Teacher
WHERE DeptID= 3;

select * from Clg_Teacher;

SET SQL_SAFE_UPDATES = 0;


  /* Update View */

UPDATE Clg_Teacher
SET first_name = "madhuri"
WHERE Teacher_id = 25;

select * from Clg_Teacher;

  /* Drop View */

Drop view Clg_Teacher;

select * from Clg_Teacher;