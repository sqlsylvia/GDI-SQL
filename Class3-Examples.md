
# OVERVIEW

Run these examples in the W3 School database at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor

## GROUP BY and HAVING

The GROUP BY statement identifies a selected column to use for grouping results. It divides the data into groups by the values in the column specified, and returns one row of results for each group.

The HAVING keyword must be used with grouped data in a GROUP BY query.

The HAVING keyword behaves like the WHERE clause in the GROUP BY query.


``` sql
  SELECT ShipperName, Count(Orders.OrderID) cnt
  FROM Orders
  INNER Join Shippers ON Shippers.ShipperID = Orders.ShipperID
  --WHERE ShipperName == "Speedy Express"
  GROUP BY ShipperName
  -- HAVING cnt > 60
  HAVING ShipperName == "Speedy Express"
ORDER by 2 asc
```

The following can provide more examples and information on the GROUP BY SQL statements.
- https://www.w3schools.com/sql/sql_groupby.asp
- https://www.tutorialspoint.com/sql/sql-group-by.htm
- https://learn.microsoft.com/en-us/sql/t-sql/queries/select-group-by-transact-sql?view=sql-server-ver16
- https://www.sqltutorial.org/sql-group-by/


## JOIN Examples
See folllowing for more information and examples on JOINS
- W3Schools - https://www.w3schools.com/sql/sql_join.asp 
- FreeCodeCamp SQL - https://www.freecodecamp.org/news/sql-join-types-inner-join-vs-outer-join-example/#:~:text=There%20are%20three%20types%20of,RIGHT%20JOIN%20%2C%20and%20FULL%20JOIN%20


### INNER JOIN Example
``` sql
SELECT Employees.LastName
, Orders.OrderID
FROM Orders
JOIN Employees
 ON orders.EmployeeID = Employees.EmployeeID ;
``` 

### LEFT JOIN Example
``` sql
SELECT Employees.LastName
, Orders.OrderID
FROM Employees
LEFT JOIN Orders
 ON orders.EmployeeID = Employees.EmployeeID ;

``` 

### RIGHT JOIN Example
``` sql
SELECT Employees.LastName
, Orders.OrderID
FROM Orders
RIGHT JOIN Employees
 ON orders.EmployeeID = Employees.EmployeeID ;


``` 

### FULL OUTER JOIN 
``` sql
SELECT Orders.customerID, OrderDetails.ProductID
FROM Orders
JOIN OrderDetails 

``` 



## UNION Example
``` sql
SELECT 'Customer' as PersonType, CustomerName, City, Country 
 FROM Customers
 -- WHERE  Country ='Germany'
UNION
SELECT 'Supplier' as PersonType,  SupplierName, City, Country 
 FROM Suppliers
-- WHERE  Country ='Germany'
```

## Subqueries

### Subquery Example 1
``` sql
SELECT AVG(Total)
FROM (SELECT ProductId, SUM(Quantity) Total
FROM OrderDetails
GROUP BY ProductID
) x
```
### Subquery Example 2
``` sql
SELECT Country, count(*)
FROM (SELECT 'Customer' as PersonType, CustomerName, City, Country 
 FROM Customers
 UNION
SELECT 'Supplier' as PersonType,  SupplierName, City, Country 
 FROM Suppliers
) 
GROUP BY Country
```

### Subquery Example 2 - as Common Table Expression

``` sql
WITH cte_quantity
AS
(SELECT ProductID,
    SUM(Quantity) as Total
FROM OrderDetails
GROUP BY ProductID)
 
SELECT
    AVG(Total) average_product_quantity
FROM cte_quantity;

```
## Assignment
- Use subquery 
Calculate the total amount(price * quantity) of orders by Country.

-- Answer (from Ivy/Laura)
```
 SELECT Country, ROUND(SUM(Total), 2) AS Total_Amount_Per_Country
 FROM (
 SELECT O.OrderID, P.ProductID,  OD.Quantity * P.Price as Total, C.Country
 FROM [OrderDetails] OD 
 JOIN [Products] P  ON OD.ProductID = P.ProductID
 JOIN [Orders] O  ON OD.OrderID = O.OrderID
 JOIN [Customers] C  ON O.CustomerID = C.CustomerID
)
GROUP BY Country

```
-- Useing CTE
```
WITH SUMQuery as 
( Select orderdetails.orderdetailid, orders.orderid, customers.country, (products.price * orderdetails.quantity) as subtotal
FROM Orderdetails
JOIN Products ON products.productid = orderdetails.productid
JOIN Orders ON orders.orderid = orderdetails.orderid
JOIN Customers ON orders.customerid = customers.customerid 
)
 SELECT Country, ROUND(SUM(SubTotal), 2) AS Total_Amount_Per_Country
 FROM SUMQuery
GROUP BY country
ORDER BY country

```
## INSERT EXAMPLES

### Example 1:  INSERT with Values statement
``` sql
INSERT INTO Suppliers (supplierID
          , supplierName
          , ContactName
          , Address, City, PostalCode
         , Country, Phone)
VALUES (99
    ,'Sylvia The Supplier'
    , 'Sylvia'
    , 'One Microsoft Way'
    , 'Redmond', '10481' 
    , 'USA', '(425) 555-1212');
```

### Example 2:  INSERT with SELECT and CTE
``` sql
WITH Data as
( 
SELECT 99 as SupplierId
, 'John The Supplier' as SupplierName
, 'John' as ContactName
, 'One Microsoft Way' as Address
, 'Redmond' as City
, '10481' as PostalCode
, 'USA' as Country
, '(425) 555-1212' as Phone

)
INSERT INTO Suppliers 
    (supplierID, supplierName, ContactName, Address, City, PostalCode, Country, Phone)
SELECT supplierID, supplierName, ContactName, Address, City, PostalCode, Country, Phone
  FROM Data;
```


## UPDATE Example

``` sql
UPDATE Suppliers
SET Phone='(800) 123-4567'
WHERE SupplierID = 99
```

## DELETE Example
``` sql
DELETE FROM Suppliers
WHERE SupplierID = 99;
```
## ALTER TABLE

``` sql
ALTER TABLE [Employees] 
 ADD COLUMN Country VARCHAR(50);
```

## CREATE TABLE
### CREATE Example 1
The following example creates a table and inserts values into the table

``` sql
CREATE TABLE College 
   (college_name text
   , state char(2)
   , enrollment int);
```

``` sql
INSERT INTO College VALUES
  ('Stanford', 'CA', 15000),
  ('Berkeley', 'CA', 36000),
  ('MIT', 'MA', 10000),
  ('Cornell', 'NY', 21000)
;
```

See https://www.w3schools.com/sql/sql_create_table.asp for more information on basic CREATE TABLE commands and examples.

## REFERENCES
### SQL JOINS
- FreeCodeCamp SQL - https://www.freecodecamp.org/news/sql-join-types-inner-join-vs-outer-join-example/#:~:text=There%20are%20three%20types%20of,RIGHT%20JOIN%20%2C%20and%20FULL%20JOIN%20

