/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Drop the database if it exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    PRINT 'Setting database to SINGLE_USER mode with rollback...';

    ALTER DATABASE [DataWarehouse] 
    SET SINGLE_USER 
    WITH ROLLBACK IMMEDIATE;

    PRINT 'Dropping existing DataWarehouse database...';
    DROP DATABASE [DataWarehouse];

    PRINT 'Database dropped successfully.';
END
ELSE
BEGIN
    PRINT 'Database "DataWarehouse" does not exist. Skipping drop.';
END;

GO

-- Create the 'DataWarehouse' database
PRINT 'Creating new DataWarehouse database...';
CREATE DATABASE [DataWarehouse];
GO

-- Switch to the new database
USE [DataWarehouse];
GO

-- Create Schemas
PRINT 'Creating schemas: bronze, silver, gold...';

CREATE SCHEMA [bronze];
GO

CREATE SCHEMA [silver];
GO

CREATE SCHEMA [gold];
GO

PRINT 'Setup complete: Database and schemas are ready.';
