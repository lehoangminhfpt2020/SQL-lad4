CREATE DATABASE QLSV
GO

USE QLSV
GO

CREATE TABLE Student 
(
	StudentID INT,
	STName NVARCHAR(50),
	Email NVARCHAR(50),
	Birthday DATE,
	CONSTRAINT PK_STN PRIMARY KEY (STName)
)
GO

CREATE TABLE Class
(
	ClassID INT,
	CName NVARCHAR(50),
	CONSTRAINT PK_CN PRIMARY KEY (CName)
)
GO

CREATE TABLE StudentClass
(
	STName NVARCHAR(50),
	CName NVARCHAR(50),
	CONSTRAINT FK_STN FOREIGN KEY (STName) REFERENCES Student (STName),
	CONSTRAINT FK_CN FOREIGN KEY (CName) REFERENCES Class (CName)
)
GO

INSERT INTO Student (StudentID,STName,Email,Birthday) VALUES (1,'minh','MINH1@gmail.com', '12-12-1996')
INSERT INTO Student (StudentID,STName,Email,Birthday) VALUES (2,'anh','anh1@gmail.com', '02-02-1994')
INSERT INTO Student (StudentID,STName,Email,Birthday) VALUES (3,'manh','manh1@gmail.com', '08-09-1993')
INSERT INTO Student (StudentID,STName,Email,Birthday) VALUES (4,'linh','linh1@gmail.com', '12-04-1999')
INSERT INTO Student (StudentID,STName,Email,Birthday) VALUES (5,'tung','tung1@gmail.com', '01-10-2000')

SELECT * FROM Student
GO
UPDATE Student SET STName = 'nam' WHERE StudentId = 2
GO

DELETE FROM Student WHERE STName = N'minh'
GO