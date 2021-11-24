create database EMPLOYEES
GO
use EMPLOYEES
begin
create table Departments (
    Id int not null IDENTITY (1, 1), 
    Name varchar(250),
    PRIMARY KEY (Id)  
)
create table Projects (
    Id int not null IDENTITY (1, 1), 
    ProjectName varchar(250), 
    StartDate date,
    EndDate date, 
    PRIMARY KEY (Id) 
)
create table Positions (
    Id int not null IDENTITY (1, 1), 
    Name varchar(250), 
    PRIMARY KEY (Id) 
)
create table Employee (
    Id int not null IDENTITY (1, 1), 
    Name varchar(250), 
    Surname varchar(250) not null,
    Salary float(53),
	StartDate date,
    EndDate date, 
    PositionId int FOREIGN KEY REFERENCES Positions(Id),
    DepartmentId int FOREIGN KEY REFERENCES Departments(Id),
    PRIMARY KEY (Id)
)
create table ProjectEmployee (
    ProjectId int not null FOREIGN KEY REFERENCES Projects(Id), 
    EmployeeId int not null FOREIGN KEY REFERENCES Employee(Id), 
    PRIMARY KEY (ProjectId,EmployeeId)
)
end