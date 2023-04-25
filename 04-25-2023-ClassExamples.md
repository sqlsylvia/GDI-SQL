
# OVERVIEW

Run these examples in the W3 School database at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor

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



## REFERENCES
### SQL JOINS
- FreeCodeCamp SQL - https://www.freecodecamp.org/news/sql-join-types-inner-join-vs-outer-join-example/#:~:text=There%20are%20three%20types%20of,RIGHT%20JOIN%20%2C%20and%20FULL%20JOIN%20
