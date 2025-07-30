--------------------------------- Welcome to SQL Basics -------------------------------------------------------------------------------------

-- Trying the SELECT commend 
SELECT * FROM DataScienceSalaries ;
-- There is 14838 rows 

-- LIMIT FIRST 22 ROWS 
SELECT TOP 25 * FROM DataScienceSalaries ;

--Adding a condition 
SELECT * FROM DataScienceSalaries WHERE job_title = 'Data Scientist' ;
-- There is 3015 rows 

-- Number of Rows available in my dataset
SELECT COUNT(*) FROM DataScienceSalaries;

-- The different job titles present in my table 
SELECT DISTINCT job_title FROM DataScienceSalaries ;

-- How much job titles are available 
SELECT COUNT(DISTINCT job_title) FROM DataScienceSalaries ; -- i have 153 different job titles

-- Insert Commend
INSERT INTO DataScienceSalaries(work_year, experience_level, employee_residence, employment_type, job_title, salary,salary_currency,salary_in_usd,remote_ratio)
VALUES(4, 'KI', 'FL','FT', 'Data Scientit', 9587158214 , 'CLL', 47824, 'KL', 50 );

-- Update statement 
UPDATE DataScienceSalaries SET job_title = 'Head of Machine Learning' WHERE experience_level = 'SE';

-- DELETE STATEMENT
DELETE FROM DataScienceSalaries WHERE company_size = 'L';