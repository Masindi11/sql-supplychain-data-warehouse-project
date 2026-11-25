
/*
===============================================================================
Create Database and Schemas
===============================================================================

Script Purpose:
    This script creates a new database called 'SupplyChain_DW'.
    It first checks if the database already exists.

    If the database exists, it will be dropped and created again.
    The script also creates three schemas inside the database:
    'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will delete the existing 'SupplyChain_DW'
    database if it already exists.

    All data inside the database will be permanently deleted.
    Make sure you have a backup before running this script.
*/


USE master;
GO
--Drop and recreate the 'SupplyChain_DW' database
  IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SupplyChain_DW')
  BEGIN
  ALTER DATABASE SupplyChain_DW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE SupplyChain_DW;
END;
GO

-- Create the 'SupplyChain_DW' database
CREATE DATABASE SupplyChain_DW;

USE SupplyChain_DW;
GO
  --Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
