-- Sample SQL to use with SQL Docker: https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-2017&pivots=cs1-bash

--
-- SQLCMD: See docker/use.h
--   /opt/mssql-tools/bin/sqlcmd -S localhost -U SA 
--


/** Create database **/
CREATE DATABASE TestDB
SELECT Name from sys.Databases
GO

/** Create sample table **/
USE TestDB
CREATE TABLE Inventory (id INT, name NVARCHAR(50), quantity INT)
GO


/** Insert data **/
USE TestDB
INSERT INTO Inventory VALUES (1, 'banana', 150); INSERT INTO Inventory VALUES (2, 'orange', 154);
GO

/** Select data **/
SELECT * FROM Inventory WHERE quantity > 152;
GO

/** BYE, BYE **/
QUIT


