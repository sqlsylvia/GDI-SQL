
# OVERVIEW

Run these examples in the W3 School database at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor

## JOIN Examples

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
## GROUP BY and HAVING
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
DELETE Suppliers
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

