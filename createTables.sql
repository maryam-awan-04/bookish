-- add Books table
IF OBJECT_ID('dbo.Books', 'U') IS NOT NULL
    DROP TABLE dbo.Books;
GO

CREATE TABLE dbo.Books (
    bookId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    bookTitle varchar(30) NOT NULL,
    author varchar(30) NOT NULL,
    isbn int NOT NULL, 
    copies int NOT NULL,
    availableCopies int NOT NULL,
    available bit NOT NULL,
);
GO

-- add Users table
IF OBJECT_ID('dbo.Users', 'U') IS NOT NULL
    DROP TABLE dbo.Users;
GO

CREATE TABLE dbo.Users (
    userId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    firstname varchar(30) NOT NULL,
    surname varchar(30) NOT NULL,
);
GO

-- add Copies table
IF OBJECT_ID('dbo.Copies', 'U') IS NOT NULL
    DROP TABLE dbo.Copies;
GO

CREATE TABLE dbo.Copies (
    copyId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    bookId int NOT NULL,
    barcode int NOT NULL UNIQUE, 
    borrowedId int NOT NULL,
);
GO

-- add Borrowed table
IF OBJECT_ID('dbo.Borrowed', 'U') IS NOT NULL
    DROP TABLE dbo.Borrowed;
GO

CREATE TABLE dbo.Borrowed (
    borrowedId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    userId int NOT NULL,
    dateBorrowed date NOT NULL,
    dateDue date NOT NULL,
    barcode int NOT NULL,
);
GO
