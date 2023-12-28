create database RainbowSchool

use RainbowSchool

CREATE TABLE Classes (
    ClassId INT PRIMARY KEY,
    ClassName NVARCHAR(50),
    ClassTeacher NVARCHAR(100),
	
);

CREATE TABLE Subjects (
    SubjectId INT PRIMARY KEY,
    SubjectName NVARCHAR(100),
);

CREATE TABLE Students (
    StudentId INT PRIMARY KEY,
    StudentName NVARCHAR(50),
    Gender NVARCHAR(10),
	ClassId int foreign key references Classes(ClassId) on delete Cascade on update Cascade,
    SubjectId int foreign key references Subjects(SubjectId) on delete Cascade on update Cascade,
);

Select * from Classes
Select * from Subjects
select * from Students


