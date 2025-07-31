
#  Built-in Database Functions in SQL

Built-in database functions are **predefined functions** provided by a **Database Management System (DBMS)** to perform operations on data. These functions help manipulate, calculate, and analyze data efficiently during queries.

---

##  1. Aggregate Functions
Used to perform calculations on multiple values and return a single value.

| Function | Description |
|----------|-------------|
| `COUNT()` | Counts the number of rows |
| `SUM()` | Adds values |
| `AVG()` | Calculates average |
| `MIN()` | Finds the minimum value |
| `MAX()` | Finds the maximum value |

**Example:**
```sql
SELECT AVG(salary) FROM employees;
```

---

##  2. String Functions
Used to manipulate text/string values.

| Function | Description |
|----------|-------------|
| `UPPER()` / `LOWER()` | Converts text to upper/lower case |
| `CONCAT()` | Combines strings |
| `SUBSTRING()` / `SUBSTR()` | Extracts part of a string |
| `LENGTH()` or `LEN()` | Finds the length of a string |
| `TRIM()` | Removes whitespace |

**Example:**
```sql
SELECT UPPER(first_name) FROM employees;
```

---

##  3. Numeric Functions
Used to perform operations on numeric data.

| Function | Description |
|----------|-------------|
| `ROUND()` | Rounds a number |
| `FLOOR()` | Rounds down |
| `CEILING()` / `CEIL()` | Rounds up |
| `ABS()` | Absolute value |
| `POWER()` | Raises to a power |
| `MOD()` | Modulus (remainder) |

**Example:**
```sql
SELECT ROUND(salary, 2) FROM employees;
```

---

##  4. Date and Time Functions
Used to handle date/time data.

| Function | Description |
|----------|-------------|
| `NOW()` / `CURRENT_TIMESTAMP` | Returns current date and time |
| `CURDATE()` / `CURRENT_DATE` | Returns current date |
| `DATEDIFF()` | Difference between two dates |
| `DATEADD()` | Adds a time interval |
| `GETDATE()` (SQL Server) | Current system date and time |
| `EXTRACT()` | Extracts year, month, day, etc. |

**Example:**
```sql
SELECT DATEDIFF(CURDATE(), hire_date) FROM employees;
```

---

##  5. Conversion Functions
Used to convert one data type to another.

| Function | Description |
|----------|-------------|
| `CAST()` | Converts one data type to another |
| `CONVERT()` | Similar to `CAST`, but SQL Server-specific |
| `TO_CHAR()` / `TO_DATE()` (Oracle) | Format and convert date and numbers |

**Example:**
```sql
SELECT CAST(salary AS VARCHAR(10)) FROM employees;
```

---

##  6. Control Flow Functions
Used for conditional logic.

| Function | Description |
|----------|-------------|
| `CASE` | Conditional expressions |
| `IF()` | MySQL only (e.g., `IF(condition, true_value, false_value)`) |
| `COALESCE()` | Returns the first non-null value |
| `NULLIF()` | Returns NULL if two expressions are equal |

**Example:**
```sql
SELECT CASE 
           WHEN salary > 5000 THEN 'High' 
           ELSE 'Low' 
       END AS salary_category 
FROM employees;
```

---
