--               ## Data Cleaning Using SQL ##

-- Creating a Database to import a data table in this database 
CREATE DATABASE data_cleaning_eda;

-- importing loptop dataset manually by clicking table import wizard
SELECT * FROM data_cleaning_eda.laptop;

-- STEP-1 : create a backup or copy of the data 
USE data_cleaning_eda;
CREATE TABLE laptop_backup LIKE laptop;

INSERT INTO data_cleaning_eda.laptop_backup
SELECT * FROM data_cleaning_eda.laptop;

SELECT * FROM data_cleaning_eda.laptop_backup;

-- STEP-2 : Count number of rows in the dataset
SELECT COUNT(*) FROM data_cleaning_eda.laptop;

-- STEP-3 : Check memory consumtion for reference
SELECT * FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'data_cleaning_eda'
AND TABLE_NAME = 'laptop';

SELECT DATA_LENGTH AS 'bytes_length', DATA_LENGTH/1024 AS 'kb'
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'data_cleaning_eda'
AND TABLE_NAME = 'laptop';


USE data_cleaning_eda;
CREATE TABLE cleaned_laptop LIKE data_cleaning_eda.laptop;

-- inserting clean data
INSERT INTO data_cleaning_eda.cleaned_laptop
SELECT * FROM data_cleaning_eda.laptop;
