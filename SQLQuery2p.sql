/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    Creates a new database 'DataWarehouseAnalytics', drops if exists.
    Creates schema 'gold' and required tables.
    Loads data from CSV files.

WARNING:
    Running this script will DROP and recreate the database.
    All data will be permanently deleted. Ensure backups before running.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouseAnalytics' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouseAnalytics')
BEGIN
    ALTER DATABASE DataWarehouseAnalytics SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouseAnalytics;
END;
GO

-- Create the 'DataWarehouseAnalytics' database
CREATE DATABASE DataWarehouseAnalytics;
GO

USE DataWarehouseAnalytics;
GO

-- Create Schema
CREATE SCHEMA gold;
GO

-- Create Tables
CREATE TABLE gold.dim_customers(
    customer_key INT,
    customer_id INT,
    customer_number NVARCHAR(50),
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    country NVARCHAR(50),
    marital_status NVARCHAR(50),
    gender NVARCHAR(50),
    birthdate DATE,
    create_date DATE
);
GO

CREATE TABLE gold.dim_products(
    product_key INT,
    product_id INT,
    product_number NVARCHAR(50),
    product_name NVARCHAR(50),
    category_id NVARCHAR(50),
    category NVARCHAR(50),
    subcategory NVARCHAR(50),
    maintenance NVARCHAR(50),
    cost INT,
    product_line NVARCHAR(50),
    start_date DATE
);
GO

CREATE TABLE gold.fact_sales(
    order_number NVARCHAR(50),
    product_key INT,
    customer_key INT,
    order_date DATE,
    shipping_date DATE,
    due_date DATE,
    sales_amount INT,
    quantity TINYINT,
    price INT
);
GO

-- =========================================================
-- BULK LOAD DATA FROM CSV FILES
-- =========================================================

-- ? OPTION 1: Use your original Downloads folder path
-- (Might require extra permissions for SQL Server)

TRUNCATE TABLE gold.dim_customers;
GO
BULK INSERT gold.dim_customers
FROM 'C:\Users\Kinja\Downloads\sql-data-analytics-project (1)\sql-data-analytics-project\datasets\csv-files\gold.dim_customers.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001',
    TABLOCK
);
GO

TRUNCATE TABLE gold.dim_products;
GO
BULK INSERT gold.dim_products
FROM 'C:\Users\Kinja\Downloads\sql-data-analytics-project (1)\sql-data-analytics-project\datasets\csv-files\gold.dim_products.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001',
    TABLOCK
);
GO

TRUNCATE TABLE gold.fact_sales;
GO
BULK INSERT gold.fact_sales
FROM 'C:\Users\Kinja\Downloads\sql-data-analytics-project (1)\sql-data-analytics-project\datasets\csv-files\gold.fact_sales.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001',
    TABLOCK
);
GO
---------------------------------
