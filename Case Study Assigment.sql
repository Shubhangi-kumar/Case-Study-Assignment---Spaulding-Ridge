create database Casestudy;
use casestudy;

CREATE TABLE Role (
    RoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    LocationID INT PRIMARY KEY AUTO_INCREMENT,
    LocationName VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeName VARCHAR(100) NOT NULL,
    RoleID INT,
    LocationID INT,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active',
    Compensation DECIMAL(10,2),

    FOREIGN KEY (RoleID) REFERENCES Role(RoleID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

