
# 📘 Reading: Examples to CREATE and DROP Tables

## 🎯 Objective(s)

- Understand what data you can define in a table.
- Create and Drop tables in the database.

---

## 🏗️ CREATE TABLE Statement

Use the `CREATE TABLE` statement to generate and create a table.

### General syntax:
```sql
CREATE TABLE table_name (
  column_name datatype(size),
  column_name datatype(size),
  ...
);
```

---

### 🧪 Example 1

Create a table called `COUNTRY` with the columns: `ID` (integer), and `NAME` (type: variable length string up to 40 characters):

```sql
CREATE TABLE COUNTRY (
  ID INT,
  NAME VARCHAR(40)
);
```

---

### 🧪 Example 2

Create a `COUNTRY` table with a primary key on the `ID` column:

```sql
DROP TABLE COUNTRY;

CREATE TABLE COUNTRY (
  ID INT PRIMARY KEY,
  NAME VARCHAR(40)
);
```

---

### 🧪 Example 3

Add a column after defining the table:

```sql
DROP TABLE COUNTRY;

CREATE TABLE COUNTRY (
  ID INT PRIMARY KEY,
  NAME VARCHAR(40),
  CAPITAL VARCHAR(40)
);
```

📝 Note: In the above example, the `ID` column has a `PRIMARY KEY`. This means:
- It must contain unique values.
- It **cannot** contain `NULL` values.

---

## 🗑️ DROP TABLE Statement

Use the `DROP TABLE` statement to **remove a table** and its structure from the database.

```sql
DROP TABLE table_name;
```

⚠️ **Warning:** This will remove the **entire table**, not just its data.

If a table already exists in your schema, and you try to create a table with the **same name**, you will get an error:

```
SQL Error: table already exists.
```

To avoid this, drop the table first:

```sql
DROP TABLE COUNTRY;
```

Then recreate it:

```sql
CREATE TABLE COUNTRY (
  ID INT PRIMARY KEY,
  NAME VARCHAR(40),
  CAPITAL VARCHAR(40)
);
```

---

### ⚠️ Warning

Before dropping a table:
- Make sure the structure or data is not needed anymore.
- You will **lose all data** stored in it, and it **cannot be undone** unless you have a backup.

Use `DROP TABLE` with caution in production databases.
