CREATE DATABASE Academy

USE Academy

CREATE TABLE Status(
	Id INT PRIMARY KEY IDENTITY,
	[Status] NVARCHAR(30) NOT NULL CHECK([Status] IN('Aktiv','Pending','Deaktiv','Deleted','Completed'))
)


CREATE TABLE Student (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30),
	Surname NVARCHAR(50),
	Phone NVARCHAR(50),
	SeriaNumber INT UNIQUE,
	Mail NVARCHAR(50) UNIQUE,
	Username NVARCHAR(50) UNIQUE,
	[Password] NVARCHAR(50),
	RegisteredDate DATETIME,
	LastModifiedDate DATETIME,
	DeletedDate DATETIME,
	StatusId INT FOREIGN KEY REFERENCES Status(Id)
)


CREATE TABLE Teacher (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30),
	Surname NVARCHAR(50),
	Phone NVARCHAR(50),
	SeriaNumber INT UNIQUE,
	[Address] NVARCHAR(255),
	VOEN INT,
	Mail NVARCHAR(50) UNIQUE,
	Username NVARCHAR(50) UNIQUE,
	[Password] NVARCHAR(50),
	Salary DECIMAL(7,2),
	RegisteredDate DATETIME,
	LastModifiedDate DATETIME,
	DeletedDate DATETIME,
	StatusId INT FOREIGN KEY REFERENCES Status(Id)
)


CREATE TABLE [Group] (
	Id INT PRIMARY KEY IDENTITY,
	GroupCode NVARCHAR(10),
	Capacity INT,
	RegisteredDate DATE,
	LastModifiedDate DATETIME,
	DeletedDate DATETIME,
	FinishedDate DATE,
	StatusId INT FOREIGN KEY REFERENCES Status(Id)
)


CREATE TABLE GroupStudent (
    GroupId INT NOT NULL FOREIGN KEY (GroupId) REFERENCES [Group](Id),
    StudentId INT NOT NULL FOREIGN KEY (StudentId) REFERENCES Student(Id),
    PRIMARY KEY (GroupId, StudentId),
	UNIQUE (GroupId, StudentId)
)



CREATE TABLE GroupTeacher (
    GroupId INT NOT NULL FOREIGN KEY (GroupId) REFERENCES [Group](Id),
    TeacherId INT NOT NULL FOREIGN KEY (TeacherId) REFERENCES Teacher(Id),
    PRIMARY KEY (GroupId, TeacherId)
)


CREATE TABLE Class (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30),
	Capacity INT,
	LastModifiedDate DATE,
	DeletedDate DATETIME,
	StatusId INT FOREIGN KEY REFERENCES Status(Id)
)


CREATE TABLE Lesson (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(30),
	StartDate DATE,
	EndDate DATE,
	ClassId INT NOT NULL FOREIGN KEY (ClassId) REFERENCES Class(Id),
	GroupId INT NOT NULL FOREIGN KEY (GroupId) REFERENCES [Group](Id),
	RegisteredDate DATE,
	LastModifiedDate DATETIME,
	DeletedDate DATETIME,
	StatusId INT FOREIGN KEY REFERENCES Status(Id)
)