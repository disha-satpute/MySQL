
create database clg_procedeures;

use clg_procedeures;

-- create 3 tables

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- procedure to add new student

DELIMITER $$

CREATE PROCEDURE AddStudent(
    IN p_StudentID INT,
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_DateOfBirth DATE
)
BEGIN
    INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth)
    VALUES (p_StudentID, p_FirstName, p_LastName, p_DateOfBirth);
END $$

DELIMITER ;

--Procedure to Add a New Course

DELIMITER $$

CREATE PROCEDURE AddCourse(
    IN p_CourseID INT,
    IN p_CourseName VARCHAR(100),
    IN p_Credits INT
)
BEGIN
    INSERT INTO Courses (CourseID, CourseName, Credits)
    VALUES (p_CourseID, p_CourseName, p_Credits);
END $$

DELIMITER ;

-- Procedure to Enroll a Student in a Course

DELIMITER $$

CREATE PROCEDURE EnrollStudent(
    IN p_StudentID INT,
    IN p_CourseID INT
)
BEGIN
    INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
    VALUES (p_StudentID, p_CourseID, CURDATE());
END $$

DELIMITER ;

-- Executing the Procedures

CALL AddStudent(1, 'Disha', 'Satpute', '1998-05-15');

select * from students;

CALL AddCourse(101, 'Java Programming', 3);

select * from courses;

CALL EnrollStudent(1, 101);

select * from enrollments;