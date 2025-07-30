| Term                  | Definition |
|-----------------------|------------|
| **SQL**               | Structured Query Language – a programming language used to communicate with and manipulate databases. |
| **Data**              | Raw facts or information stored in a structured format, often in rows and columns. |
| **Database**          | A collection of organized data that can be easily accessed, managed, and updated. |
| **Relational Database** | A type of database that stores data in tables with rows and columns, and uses relationships between those tables. |
| **RDBMS**             | Relational Database Management System – software used to manage relational databases (e.g., MySQL, PostgreSQL, SQL Server). |

###  🗄️ Basic SQL Commands Reference

| **Command** | **Syntax** | **Description** | **Example** |
|-------------|------------|-----------------|-------------|
| **SELECT** | `SELECT column1, column2, ... FROM table_name;` | `SELECT` statement is used to fetch data from a database. | `SELECT city FROM placeofinterest;` |
| **WHERE** | `SELECT column1, column2, ... FROM table_name WHERE condition;` | `WHERE` clause is used to extract only those records that fulfill a specified condition. | `SELECT * FROM placeofinterest WHERE city = 'Rome';` |
| **COUNT** | `SELECT COUNT(*) FROM table_name;` | `COUNT` is a function that takes the name of a column as argument and counts the number of rows when the column is not `NULL`. | `SELECT COUNT(country) FROM placeofinterest WHERE country='Canada';` |
| **DISTINCT** | `SELECT DISTINCT columnname FROM table_name;` | `DISTINCT` function is used to return unique values in specified columns. | `SELECT DISTINCT country FROM placeofinterest WHERE type='historical';` |
| **LIMIT** | `SELECT * FROM table_name LIMIT number;` | `LIMIT` is a clause to specify the maximum number of rows the result set must have. | `SELECT * FROM placeofinterest WHERE airport='pearson' LIMIT 5;` |
| **INSERT** | `INSERT INTO table_name (column1, column2, column3...) VALUES (value1, value2, value3...);` | `INSERT` is used to insert new rows in the table. | `INSERT INTO placeofinterest (name, type, city, country, airport) VALUES ('Niagara Waterfalls', 'Nature', 'Toronto', 'Canada', 'Pearson');` |
| **UPDATE** | `UPDATE table_name SET column1 = value WHERE condition;` | `UPDATE` is used to update rows in the table. | `UPDATE placeofinterest SET name = 'Niagara Falls' WHERE name = 'Niagara Waterfalls';` |
| **DELETE** | `DELETE FROM table_name WHERE condition;` | `DELETE` statement is used to remove rows from the table that meet the `WHERE` condition. | `DELETE FROM placeofinterest WHERE city IN ('Rome', 'Vienna');` |

