# SQL & Relational Database Concepts 

## Relational Database Concepts

**Relational Databases** are a type of database that store data in **tables** (rows and columns). These tables can be **related** to each other via **keys** (primary and foreign keys). 

### Key Concepts:
- **Tables**: Data is stored in rows and columns.
- **Primary Key**: A column (or set of columns) that uniquely identifies each row in a table.
- **Foreign Key**: A column that links to the primary key of another table, creating a relationship between tables.
- **Normalization**: Process of organizing data to reduce redundancy and improve data integrity.
- **Relationships**:
  - One-to-One
  - One-to-Many
  - Many-to-Many


##  Types of SQL Statements

SQL is broadly categorized into the following types:

| Type | Full Form | Purpose |
|------|-----------|---------|
| **DDL** | Data Definition Language | Defines database schema (e.g., `CREATE`, `ALTER`, `DROP`, `TRUNCATE`) |
| **DML** | Data Manipulation Language | Handles data manipulation (e.g., `SELECT`, `INSERT`, `UPDATE`, `DELETE`) |
| **DCL** | Data Control Language | Controls access (e.g., `GRANT`, `REVOKE`) |
| **TCL** | Transaction Control Language | Manages transactions (e.g., `COMMIT`, `ROLLBACK`, `SAVEPOINT`) |


##  CREATE TABLE Statement

Used to create a new table in the database.

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);
