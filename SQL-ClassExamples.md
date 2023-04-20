# SQL Queries from Class

Use the SQL editor at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor

## WW3School Database Schema


<img width="1563" alt="image" src="https://user-images.githubusercontent.com/3587423/233473990-104d95d7-b0fb-46f0-8f0a-5c901cae633a.png">


## JOIN Example
``` sql
SELECT CategoryID, Avg(Price), Count(*) as NumberOfProducts
FROM [Products]
Group BY CategoryID
ORDER BY CategoryID
```
<img width="939" alt="image" src="https://user-images.githubusercontent.com/3587423/233473064-b6c8b7b4-e8c7-45ef-b85d-281ecd0c05d2.png">


## GROUP BY Examples

SELECT ProductName, AVG(Price) FROM [Products]
GROUP BY ProductName
ORDER BY ProductName

SELECT CategoryID, AVG(Price) FROM [Products]
GROUP BY CategoryID
ORDER BY CategoryID

SELECT CategoryID, Avg(Price), MIN(Price), Max(Price), Count(*) as NumberOfProducts 
FROM [Products] 
group by CategoryID





## WHERE Clause Examples
SELECT * FROM [Products]
where Price > 10
order by Price desc


SELECT * FROM [Products]
where Price > 10
order by Price desc


SELECT * FROM [Customers]
where Country = "Argentina" or Country = "Venezuela"

## NOT Clause
SELECT * FROM Customers
WHERE NOT Country='Germany';
