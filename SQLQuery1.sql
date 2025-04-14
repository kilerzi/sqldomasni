
USE SEDCACADEMYDB;
--tuka site tabeli gi pravev kopirav od prilika toa od cas sto go pravevte vo class 1 demo
create table students1(
studentsID INT NOT NULL,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
DateOfBirth DATE,
EnrolledDate DATE,
Gender NVARCHAR(10),
NationalIDNUMBER INT NOT NULL,
StudentCardNumber INT NOT NULL,
)


create table Teacher(
ID INT NOT NULL,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
DateOfBirth DATE,
AcademicRank NVARCHAR(50) NOT NULL,
Hiredate DATE,
)
create table Grade(
ID INT NOT NULL,
StudentID INT NOT NULL,
CourseID INT NOT NULL,
TeacherID INT NOT NULL,
Grade INT NOT NULL,
Comment NVARCHAR(50) NOT NULL,
CreatedDate DATE,
)
create table GradeDetails(
ID INT NOT NULL,
GradeID INT NOT NULL,
AchievementTypeID INT NOT NULL,
AchievementPoints INT NOT NULL,
AchievmentMaxPoints INT NOT NULL,
AchievmentDate Date,
)
create table Achievementype(
ID INT NOT NULL,
Name NVARCHAR(30) NOT NULL,
Description NVARCHAR(30) NOT NULL,
ParticipationRate INT NOT NULL,



)

--tuka insertav values vo niv sto chat gpt mi gi generirase
INSERT INTO students1 VALUES 
(1, 'John', 'Doe', '2000-05-12', '2018-09-01', 'Male', 123456, 1001),
(2, 'Jane', 'Smith', '2001-07-22', '2019-09-01', 'Female', 789012, 1002);


INSERT INTO Teacher VALUES 
(1, 'Alice', 'Johnson', '1980-04-15', 'Professor', '2010-08-20'),
(2, 'Bob', 'Williams', '1975-11-30', 'Associate Professor', '2008-03-01');


INSERT INTO Grade VALUES 
(1, 1, 101, 1, 85, 'Good job', '2023-06-10'),
(2, 2, 102, 2, 92, 'Excellent', '2023-06-12');


INSERT INTO Achievementype VALUES 
(1, 'Homework', 'Completed all HW', 80),
(2, 'Project', 'Final project', 100);

INSERT INTO GradeDetails VALUES 
(1, 1, 1, 40, 50, '2023-05-01'),
(2, 1, 2, 45, 50, '2023-05-15');
GO
--ova tuka go koristam za da gi selectnam podatocite od sekoja tabela
SELECT * FROM students1
select * From Teacher
Select * From Grade
Select* From Achievementype
Select * From GradeDetails