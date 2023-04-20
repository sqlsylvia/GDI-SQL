# SQL Queries from Class

Use the SQL editor at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor

## WW3School Database Schema




## JOIN Example
``` sql
SELECT CategoryID, Avg(Price), Count(*) as NumberOfProducts
FROM [Products]
Group BY CategoryID
ORDER BY CategoryID
```
<img width="939" alt="image" src="https://user-images.githubusercontent.com/3587423/233473064-b6c8b7b4-e8c7-45ef-b85d-281ecd0c05d2.png">
