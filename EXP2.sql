-- EXP 2: Employee Table Management System
-- Database Management System Project

-- 1. Create EMPLOYEE table with specified schema
CREATE TABLE EMPLOYEE (
    Emp_no INT(2),
    E_name VARCHAR(50),
    E_address VARCHAR(100),
    E_ph_no VARCHAR(15),
    E_emailid VARCHAR(50),
    Dept_no VARCHAR(10),
    Dept_name VARCHAR(20),
    Job_id VARCHAR(20),
    Salary INT(5)
);

-- 2. Insert data (10+ rows total)

-- Insert 3 records using single record insertion
INSERT INTO EMPLOYEE VALUES (1, 'John Smith', 'Mumbai', '9876543210', 'john@email.com', 'D10', 'COMP', 'DEV001', 12000);
INSERT INTO EMPLOYEE VALUES (2, 'Mary Johnson', 'Delhi', '9876543211', 'mary@email.com', 'D20', 'SALES', 'SAL001', 15000);
INSERT INTO EMPLOYEE VALUES (3, 'James Wilson', 'Pune', '9876543212', 'james@email.com', 'D30', 'MECH', 'ENG001', 8000);

-- Insert 3 records using specific columns
INSERT INTO EMPLOYEE (Emp_no, E_name, E_address, Dept_no, Dept_name, Salary) 
VALUES (4, 'Sarah Davis', 'Bangalore', 'D10', 'COMP', 14000);
INSERT INTO EMPLOYEE (Emp_no, E_name, E_address, Dept_no, Dept_name, Salary) 
VALUES (5, 'Mike Brown', 'Chennai', 'D20', 'SALES', 11000);
INSERT INTO EMPLOYEE (Emp_no, E_name, E_address, Dept_no, Dept_name, Salary) 
VALUES (6, 'Lisa Garcia', 'Hyderabad', 'D30', 'MECH', 13000);

-- Insert 4 records using multiple rows
INSERT INTO EMPLOYEE VALUES 
(7, 'David Miller', 'Kolkata', '9876543217', 'david@email.com', 'D10', 'COMP', 'DEV002', 16000),
(8, 'Emma Wilson', 'Mapusa', '9876543218', 'emma@email.com', 'D10', 'COMP', 'DEV003', 9500),
(9, 'Robert Taylor', 'Goa', '9876543219', 'robert@email.com', 'D20', 'SALES', 'SAL002', 17000),
(10, 'Jennifer Lee', 'Panaji', '9876543220', 'jennifer@email.com', 'D30', 'MECH', 'ENG002', 12500);

-- Additional records to meet requirements
INSERT INTO EMPLOYEE VALUES (11, 'Alex Cooper', 'Mapusa', '9876543221', 'alex@email.com', 'D10', 'COMP', 'DEV004', 7500);
INSERT INTO EMPLOYEE VALUES (12, 'Rachel Green', 'Mumbai', '9876543222', 'rachel@email.com', 'D20', 'SALES', 'SAL003', 13500);

-- 3. Display all information of EMP table
SELECT * FROM EMPLOYEE;

-- 4. Display records of employees who work in department D10
SELECT * FROM EMPLOYEE WHERE Dept_no = 'D10';

-- 5. Update the city of Emp_no-12 with current city as Nagpur
UPDATE EMPLOYEE SET E_address = 'Nagpur' WHERE Emp_no = 12;

-- 6. Display details of Employee who works in department MECH
SELECT * FROM EMPLOYEE WHERE Dept_name = 'MECH';

-- 7. Delete the employee James
DELETE FROM EMPLOYEE WHERE E_name = 'James Wilson';

-- 8. Display complete record of employees working in SALES Department
SELECT * FROM EMPLOYEE WHERE Dept_name = 'SALES';

-- 9. Display details of Employee who works in department COMP and staying in Mapusa
SELECT * FROM EMPLOYEE WHERE Dept_name = 'COMP' AND E_address = 'Mapusa';

-- 10. Delete employees having salary less than 10000
DELETE FROM EMPLOYEE WHERE Salary < 10000;

-- 11. Display all employee details having salary between 10000 and 15000
SELECT * FROM EMPLOYEE WHERE Salary BETWEEN 10000 AND 15000;

-- Additional useful queries for verification:

-- Check remaining records after deletions
SELECT * FROM EMPLOYEE;

-- Count total employees
SELECT COUNT(*) AS Total_Employees FROM EMPLOYEE;

-- Display employees by department
SELECT Dept_name, COUNT(*) AS Employee_Count FROM EMPLOYEE GROUP BY Dept_name;

-- Display salary statistics
SELECT 
    MIN(Salary) AS Min_Salary,
    MAX(Salary) AS Max_Salary,
    AVG(Salary) AS Avg_Salary
FROM EMPLOYEE;