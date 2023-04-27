

## CREATE TABLE FROM SQL 
``` sql
CREATE TABLE CountryData as
    SELECT 'Customer' as PersonType, CustomerName, City, Country 
    FROM Customers
    UNION
    SELECT 'Supplier' as PersonType,  SupplierName, City, Country 
    FROM Suppliers;
``` 

## DROP TABLE
``` sql
DROP TABLE CountryData;

```

## CREATE VIEW
``` sql
CREATE VIEW CountryData as
    SELECT 'Customer' as PersonType, CustomerName, City, Country 
    FROM Customers
    UNION
    SELECT 'Supplier' as PersonType,  SupplierName, City, Country 
    FROM Suppliers;
``` 
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
FirsName varchar(255) NOT NULL,
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

## CHECK CONSTRAINT
``` sql
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);
```

Test insert for check contraint.
``` sql
INSERT INTO Persons
  (ID, LastName, FirstName, Age) VALUES ( 5, 'Simon', 'Paul', 6
```


## INCREMENT (SQL SERVER VERSION)
To run the SQL Server Version, go to http://sqlfiddle.com/#!18/1de21/1
``` sql
CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

```

## INCREMENT (MySQL)
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


### INSERT to INCREMENT/IDENTITY
``` sql
INSERT INTO Persons(LastName, FirstName, Age)
SELECT 'Johnson' , 'Peter', 45
UNION
SELECT 'Rodriguez', 'Sally', 22

```

   
