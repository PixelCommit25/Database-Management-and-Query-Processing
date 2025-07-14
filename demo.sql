-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS empdata;

-- Step 2: Use the newly created database
USE empdata;

-- Step 3: Create the 'emp' table
CREATE TABLE emp (
    empid INT PRIMARY KEY,
    ename VARCHAR(50),
    dob DATE,
    designation VARCHAR(50),
    empexp DECIMAL(5,1)
);

-- Step 4: Rename column 'empexp' to 'experience'
ALTER TABLE emp CHANGE empexp experience DECIMAL(5,1);

-- Step 5: Add new column 'address'
ALTER TABLE emp ADD address VARCHAR(20);

-- Step 6: Modify 'address' column size to 50 characters
ALTER TABLE emp MODIFY address VARCHAR(50);

-- Step 7: Drop the 'experience' column
ALTER TABLE emp DROP experience;

-- Step 8: Rename table from 'emp' to 'employees'
RENAME TABLE emp TO employees;

-- Step 9: Insert sample employee records
INSERT INTO employees VALUES (101, 'helen', STR_TO_DATE('12-04-2001', '%d-%m-%Y'), 'manager', 'mapusa');
INSERT INTO employees VALUES (102, 'rose', STR_TO_DATE('25-08-2005', '%d-%m-%Y'), 'employee', 'anjuna');

-- Step 10: Drop the primary key
ALTER TABLE employees DROP PRIMARY KEY;

-- Step 11: Re-add the primary key on 'empid'
ALTER TABLE employees ADD PRIMARY KEY (empid);

-- Step 12: View data in the table
SELECT * FROM employees;

-- Step 13: View the structure of the table
DESC employees;