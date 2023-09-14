

## CREATE TABLE FROM SQL Query
``` sql
CREATE TABLE CountryData as
    SELECT 'Customer' as PersonType, CustomerName, City, Country 
    FROM Customers
    UNION
    SELECT 'Supplier' as PersonType,  SupplierName, City, Country 
    FROM Suppliers;
``` 
 - What business scenarios would require to create a TABLE from a SQL query?
   - Testing data/queries
   - Creating new table with data 
- Note: Most companies limit the number of people the ability to create/update a database.
  
## DROP TABLE
``` sql
DROP TABLE CountryData;

```
- Before dropping a table always ensure that there is a backup of the database!  If not everything is permanently LOST!

## CREATE VIEW
``` sql
CREATE VIEW CountryData as
    SELECT 'Customer' as PersonType, CustomerName, City, Country 
    FROM Customers
    UNION
    SELECT 'Supplier' as PersonType,  SupplierName, City, Country 
    FROM Suppliers;
```
### Why create a view?
 - To focus, simplify, and customize the perception each user has of the database. You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
 - A security mechanism by allowing users to access data through the view, without granting the users permissions to directly access the underlying base tables.
 - To provide a backward compatible interface to emulate a table whose schema has changed.
   
### Other references for CREATE VIEW 
- https://learn.microsoft.com/en-us/sql/t-sql/statements/create-view-transact-sql?view=sql-server-ver16
- https://www.sqlshack.com/create-view-sql-creating-views-in-sql-server/
- https://www.w3schools.com/sql/sql_view.asp
  
### How do I remove a VIEW?
``` sql
DROP VIEW CountryData;
``` 

## Data Types
In addition to the PDF in this REPO, check out the following for information on data types.
- https://www.w3schools.com/sql/sql_datatypes.asp
- https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql 
- https://www.geeksforgeeks.org/sql-data-types/


## CREATE TABLE and PRIMARY KEY Example
Also notice the use of NOT NULL.

``` sql
CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255) NOT NULL,
Age int,
PRIMARY KEY(ID)
);
```

## UNIQUE KEY Example
``` sql
DROP TABLE Persons

```

``` sql
CREATE TABLE Persons (
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirsName varchar(255) NOT NULL,
Age int,
PRIMARY KEY(ID),
UNIQUE(LastName,FirstName)
);

```

## CREATE INDEX Example
``` sql

CREATE INDEX idx_lastname
ON Persons (LastName);
```

### What is the purpose of a SQL Index
- To improve the performance of queries to a table as well as improve the performance of joins.
  
### Other references for SQL Indexes
- https://www.simplilearn.com/tutorials/sql-tutorial/index-in-sql
- https://learn.microsoft.com/en-us/sql/relational-databases/indexes/clustered-and-nonclustered-indexes-described?view=sql-server-ver16
- https://www.geeksforgeeks.org/sql-indexes/



## CHECK CONSTRAINT
The purpose of SQL constraints are used to specify rules for data in a table.

``` sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);
```

### Test insert for check contraint.
``` sql
INSERT INTO Persons
  (ID, LastName, FirstName, Age) VALUES ( 5, 'Simon', 'Paul', 6);
```
### References for SQL Contraints

- [W3Schools Check Constraint]( https://www.w3schools.com/sql/sql_constraints.asp#:~:text=SQL%20constraints%20are%20used%20to%20specify%20rules%20for%20the%20data,action%2C%20the%20action%20is%20aborted)
- https://www.w3schools.com/sql/sql_constraints.asp
- https://www.ibm.com/docs/en/db2-for-zos/11?topic=integrity-check-constraints
- 
## DEFAULT Contraint
``` sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'New York'
);
```

### Example: INSERT without AUTO INCREMENT/IDENTITY
``` sql
INSERT INTO Persons(ID, LastName, FirstName, Age)
SELECT 1, 'Johnson' , 'Peter', 45
UNION
SELECT 99, 'Rodriguez', 'Sally', 22

```
##  Auto-Increment
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

Often this is the primary key field that we would like to be created automatically every time a new record is inserted.


### INCREMENT/IDENTITY (SQL SERVER VERSION)
To run the SQL Server Version, go to http://sqlfiddle.com/#!18/1de21/1
``` sql
CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

```

### INCREMENT (MySQL)
Use https://www.db-fiddle.com/ to run the following:

``` sql
CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);
```


### Example: INSERT with AUTO INCREMENT/IDENTITY
``` sql
INSERT INTO Persons(LastName, FirstName, Age)
SELECT 'Johnson' , 'Peter', 45
UNION
SELECT 'Rodriguez', 'Sally', 22

```

## How to improve a query performance?

Improving query performance requires a lot of experience and understanding of 
- The number of tables in the database as well how is the data stored for the various tables. For information refer to https://www.pragimtech.com/blog/sql-optimization/how-is-data-stored-in-sql-database/
- The tables sizes of the tables in the database and query where the performance is in question.
- How much memory, disk space and cache space does the database have for performing the query.
- What other transactions/users are happening in the database that maybe impacting query performance.

### But what if I want my query to run faster?
- Define what fast is.   How much time does the query take?  How much data is expected to return, specifically how many rows and columns.  Approximately how much data is that in MB/GB?
- Limit the results of your query using a WHERE clause or if you are doing a GROUP BY using the HAVING clause.
- Get Explain plan results for your query.
   - If using SQL Server, see https://www.sqlshack.com/how-to-obtain-sql-execution-plans-using-different-methods/#gallery-1
   - If using ORACLE, research using EXPLAIN PLAN.

### General Best Practices include:
1. Do Not Use * In Select Statment.  Specify the column names required for your query.
2. Use proper INNER JOINS or CTE instead of SubQueries.
3. Limit your results with a WHERE statement.
4. Only apply Indexes on Necessary Columns only.

   
