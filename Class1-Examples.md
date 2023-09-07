# Class 1 - Examples and Assignments

## Database
Use the SQL and database editor at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor

## WW3School Database Schema
<img width="1563" alt="image" src="https://user-images.githubusercontent.com/3587423/233473990-104d95d7-b0fb-46f0-8f0a-5c901cae633a.png">

## WHERE Clause Examples


### Using SELECT 
The SELECT statement informs the database to extract data from one or more tables.

The * indicates to list all columns in table.

``` sql 
SELECT * FROM Customers
```

It is best practice to list all the columns you want in the query.
``` sql 
select CustomerName, City, Country 
  FROM Customers
```

### Using ORDER BY
ORDER BY specifies the order in which rows appear in a report. 

- If you use ORDER BY, it must be the last clause in the entire statement. 
- Any columns named after ORDER BY must also be named after SELECT.
``` sql 
SELECT * FROM [Customers]
ORDER BY Country 
```

### Using EQUAL To 
``` sql 
SELECT * FROM Customers
WHERE Country='UK';
```

### Using ORDER BY
The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. 
- To sort the records in descending order, use the DESC keyword.
- To sort the records in ascending order, use the ASC keyword.
``` sql 
SELECT * FROM [Customers]
where Country = "Argentina" or Country = "Venezuela"
ORDER BY Country 
```

### Using OR
You can select rows based on multiple conditions connected by OR. 

Conditions connected by OR select every row that satisfies any of the conditions.

For more examples: https://www.w3schools.com/sql/sql_or.asp

``` sql 
SELECT * FROM [Customers]
where Country = "Argentina" or Country = "Venezuela"
```

### Using AND

``` sql 
SELECT * FROM [Customers] 
WHER City = "Boston" AND Country = "USA"
```
 
### Using GREATER THAN : >

``` sql 
SELECT * FROM [Products]
where Price > 10
order by Price desc
```

### USING NOT Clause

``` sql 
SELECT * FROM Customers
WHERE NOT Country='Germany';
```


## Group BY Example 

``` sql
SELECT CategoryID, Avg(Price), Count(*) as NumberOfProducts
FROM [Products]
Group BY CategoryID
ORDER BY CategoryID
```

<img width="939" alt="image" src="https://user-images.githubusercontent.com/3587423/233473064-b6c8b7b4-e8c7-45ef-b85d-281ecd0c05d2.png">


## GROUP BY Examples
The GROUP BY statement identifies a selected column to use for grouping results. It divides the data into groups by the values in the column specified, and returns one row of results for each group.

You can use GROUP BY with more than one column name (separate column names with commas). Always place GROUP BY after FROM and WHERE in a query, and before HAVING and ORDER BY.

``` sql
SELECT ProductName, AVG(Price) FROM [Products]
GROUP BY ProductName
ORDER BY ProductName

```

``` sql
SELECT CategoryID, AVG(Price) FROM [Products]
GROUP BY CategoryID
ORDER BY CategoryID
```

``` sql
SELECT CategoryID, Avg(Price), MIN(Price), Max(Price), Count(*) as NumberOfProducts 
FROM [Products] 
GROUP BY CategoryID
```

### HAVING in a GROUP BY 

The HAVING clause filters results obtained by the GROUP BY clause.
``` sql
SELECT Country, COUNT(CustomerID), 
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

```

``` sql
SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

```