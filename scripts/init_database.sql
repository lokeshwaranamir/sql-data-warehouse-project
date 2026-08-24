/*
==========================================
Create Database and Schemas
==========================================

Script Purpose: 
	This script create a new database named "DataWarehouse" after checking if it exists. 
	If the database exists, it is dropped and recreated. Additionall the scripts sets up three schema 
	within the database "bronze", "silver", "gold". 

WARNING: 
	Running this create will drop the entire "DataWarehouse" database if it exists. 
	All data in the database wil be permenantly deleted. Proceed with caution and 
	ensure you have a proper backups before running this script.

*/


USE master;
GO

-- Drop and Recreate the "DataWarehouse" Database
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END; 
GO


-- Create Datawarehouse Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO 

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO