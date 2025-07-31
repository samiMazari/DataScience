------- Create Table
CREATE TABLE table_name (col1 datatype optional keyword, col2 datatype optional keyword, col3 datatype optional keyword, ..., coln datatype optional keyword);

-------- ALTER TABLE - ADD COLUMN
-- Option 1:
ALTER TABLE table_name ADD column_name_1 datatype;
-- Option 2:
ALTER TABLE table_name ADD COLUMN column_name_1 datatype, ... ADD COLUMN column_name_n datatype;

----- ALTER TABLE - ALTER COLUMN
-- MySQL:
ALTER TABLE table_name MODIFY column_name_1 new_data_type;
-- DB2:
ALTER TABLE table_name ALTER COLUMN column_name_1 SET DATA TYPE datatype;

------ ALTER TABLE - DROP COLUMN
-- MySQL/DB2:
ALTER TABLE table_name DROP COLUMN column_name_1;

-- MySQL:
ALTER TABLE table_name CHANGE COLUMN current_column_name new_column_name datatype [optional keywords];
-- DB2:
ALTER TABLE table_name RENAME COLUMN current_column_name TO new_column_name;

-- TRUNCATE TABLE :

-- MySQL:
TRUNCATE TABLE table_name;
-- DB2:
TRUNCATE TABLE table_name IMMEDIATE;

------- DROP TABLE	:
DROP TABLE table_name;








