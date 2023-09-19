
# SQL Formatting Functions
Each database management system (MySQL, SQL Server, Oracle, SQLLite, Postgres. etc.) has its own variations on the formatting of text, numbers, and dates. However, once you understand the basic concept, it becomes easier to learn the nuances and apply the formatting.
## Practicing

To test MySQL or SQL Server examples, go http://sqlfiddle.com/ and select the database type you want to experiment and paste the SQL into the right hand pane after building an empty schema file.

To test SQLLite examples, use the REPLIT site: https://replit.com/@sqlSylvia/Instagram-Database#main.sql

## MySQL
**References:**
- https://www.w3schools.com/sql/func_mysql_format.asp
- https://www.mysqltutorial.org/mysql-format-function/

### Example
``` sql
SELECT FORMAT(12500.2015, 0);  -- Prints as Integer
SELECT FORMAT(12500.2015, 2);  -- Prints with 2 decimal points
```



## MS SQL Server
**References:**
- https://www.mssqltips.com/sqlservertip/7021/sql-format-number/


| Query | Result|
| --- | -- |
|SELECT CAST(5634.6334 as int) as number|	5634 |
|SELECT CAST(5634.6334 as numeric) as number	|5635|
|SELECT CAST(5634.6334 as numeric(10,1)) as number	|5634.6|
|SELECT CAST(5634.6334 as numeric(10,2)) as number	|5634.63|

### Examples
``` sql
SELECT CAST(5634.6334 as int) as number
```

## SQLLite

### Example
``` sql
SELECT FORMAT("Decimals: %d %i", 200, 300);
```

**References:**

- https://www.alphacodingskills.com/sqlite/notes/sqlite-func-format.php
  
### Example
``` sql
SELECT FORMAT("Decimals: %d %i", 200, 300);
```
