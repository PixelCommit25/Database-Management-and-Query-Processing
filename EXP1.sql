-- Expt. No. : 01

-- Query 1: Create a simple table country
CREATE TABLE country (
    country_id INT,
    country_name VARCHAR(100),
    region_id INT
);

-- Query 2: Display the structure of country table
DESC country;

-- Query 3: Create a duplicate copy of country table (structure + data)
CREATE TABLE dup_country AS SELECT * FROM country;

-- Query 4: Display the structure of dup_country table
DESC dup_country;

-- Query 5: Create the jobs table with constraints
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL UNIQUE,
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2),
    CHECK (max_salary <= 25000)
);

-- Query 6: Display the structure of jobs table
DESC jobs;

-- Query 7: Rename the table country to country_new
RENAME TABLE country TO country_new;

-- Query 8: Display the structure of country_new table
DESC country_new;

-- Query 9: Add a column area to the country_new table
ALTER TABLE country_new ADD area INT;

-- Query 10: Display the structure of country_new table
DESC country_new;

-- Query 11a: Add primary key constraint to country_id
ALTER TABLE country_new ADD PRIMARY KEY (country_id);

-- Query 11b: Display structure
DESC country_new;

-- Query 11c: Modify the length of country_id (e.g., from INT to BIGINT)
ALTER TABLE country_new MODIFY country_id BIGINT;

-- Query 11d: Display structure
DESC country_new;

-- Query 11e: Rename the column region_id to regionid
ALTER TABLE country_new CHANGE region_id regionid INT;

-- Query 11f: Display structure
DESC country_new;

-- Query 11g: Drop the column area
ALTER TABLE country_new DROP COLUMN area;

-- Query 11h: Display structure
DESC country_new;

-- Query 12: Insert 5 records into country_new
INSERT INTO country_new (country_id, country_name, regionid) VALUES
(1, 'India', 101),
(2, 'USA', 102),
(3, 'Brazil', 103),
(4, 'Germany', 104),
(5, 'Japan', 105);

-- Query 13: Display the details of country_new table
SELECT * FROM country_new;

-- Query 14: Truncate country_new (remove all rows, keep structure)
TRUNCATE TABLE country_new;

-- Query 15: Display details again (should show empty)
SELECT * FROM country_new;

-- Query 16: Display structure of country_new
DESC country_new;

-- Query 17: Drop the table country_new
DROP TABLE country_new;

-- Query 18: Try displaying structure again (should error if table is dropped)
DESC country_new;
