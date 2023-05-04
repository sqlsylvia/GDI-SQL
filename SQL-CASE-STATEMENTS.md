
# SQL CASE Expression
The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

See: https://www.w3schools.com/sql/sql_case.asp

## Examples
Using W3Schools SQL Database: https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor
``` sql 
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;
```
