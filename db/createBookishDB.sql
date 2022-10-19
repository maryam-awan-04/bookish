USE master
GO

IF NOT EXISTS (
  SELECT name
  FROM sys.databases
  WHERE name = N'BookishDB'
 )

CREATE DATABASE [BookishDB];
GO

IF SERVERPROPERTY('ProductVersion') > '12'
  ALTER DATABASE [BookishDB] SET QUERY_STORE=ON;
GO
