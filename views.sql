USE collage;

CREATE VIEW Clg_Teacher AS
SELECT Teacher_id,first_name,last_name
FROM Teacher
WHERE DeptName = 'IT';