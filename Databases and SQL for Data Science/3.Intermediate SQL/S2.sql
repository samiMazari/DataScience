/*
- You can use the WHERE clause to refine your query results. 

- The search condition of the WHERE clause uses a predicate to refine the search. 

- You can use the wildcard character (%) as a substitute for unknown characters in a pattern. 

- You can use BETWEEN ... AND ... to specify a range of numbers. 

- You can sort query results into ascending or descending order, using the ORDER BY clause to specify the column to sort on. 

- You can group query results by using the GROUP BY clause.  */

-- Viewing the Table 
Select * from DataScienceSalaries ;

-- Where experience level begins with M
Select Count(job_title) from DataScienceSalaries WHERE experience_level like 'M%';

--WHERE salary is between 350000 and 700000 

Select * from DataScienceSalaries WHERE salary >= 350000 and salary <= 700000 ;

-- OR 

Select * from DataScienceSalaries WHERE salary between 350000 and 700000 ;

Select * from DataScienceSalaries WHERE experience_level ='SE' or experience_level ='MI' ; 

-- OR 

Select * from DataScienceSalaries WHERE experience_level in ('SE' , 'MI') ; 


----- Sorting the Table 
-- in ascending way 
Select * from DataScienceSalaries Order by salary ; 
-- in a descending way 
Select * from DataScienceSalaries Order by salary DESC ; 

--- ADDING A CONDITION 
Select * from DataScienceSalaries WHERE experience_level in ('SE' , 'MI') Order by salary DESC ; 


--------- GROUP BY 

--- Number of each position 
Select job_title , count(job_title) as count from DataScienceSalaries Group by job_title ;


--- Average salary per job title 
Select job_title , avg(salary) as average from DataScienceSalaries GROUP BY job_title ;

-- Built in Functions : 

