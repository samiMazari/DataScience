
# SQL Cheat Sheet: Intermediate - LIKE, ORDER BY, GROUP BY

| **Command** | **Syntax (MySQL/DB2)** | **Description** | **Example (MySQL/DB2)** |
|-------------|-------------------------|------------------|--------------------------|
| **LIKE** | ```sql
SELECT column1, column2, ... FROM table_name WHERE columnN LIKE pattern;
``` | `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column. <br><br> Two wildcards often used in conjunction with the `LIKE` operator are percent sign (`%`) and underscore sign (`_`). | ```sql
SELECT f_name , l_name FROM employees WHERE address LIKE '%Elgin,IL%';
``` <br>This command will output all entries with `Elgin, IL` in the Address. |
| **BETWEEN** | ```sql
SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
``` | The `BETWEEN` operator selects values within a given range. The values can be numbers, text, or dates. The `BETWEEN` operator is inclusive: begin and end values are included. | ```sql
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 80000;
``` <br>This generates all records of employees with salaries between 40000 and 80000. |
| **ORDER BY** | ```sql
SELECT column1, column2, ... FROM table_name ORDER BY column1, column2, ... ASC|DESC;
``` | `ORDER BY` keyword is used to sort the result-set in ascending or descending order. Default is ascending. In case of multiple columns, sorting is done in order of appearance. | ```sql
SELECT f_name, l_name, dep_id FROM employees ORDER BY dep_id DESC, l_name;
``` <br>This displays employees ordered by department ID (descending), then by last name (alphabetically). |
| **GROUP BY** | ```sql
SELECT column_name(s) FROM table_name GROUP BY column_name(s);
``` | `GROUP BY` clause is used in collaboration with the `SELECT` statement to arrange data with identical values into groups. | ```sql
SELECT dep_id, COUNT(*) FROM employees GROUP BY dep_id;
``` <br>This returns the department IDs and the number of employees in them. |
| **HAVING** | ```sql
SELECT column_name(s) FROM table_name GROUP BY column_name(s) HAVING condition;
``` | `HAVING` clause is used in conjunction with `GROUP BY` to filter the data as per a condition, then group as per identical values of a specified parameter. | ```sql
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM employees GROUP BY DEP_ID HAVING COUNT(*) < 4 ORDER BY AVG_SALARY;
``` |

