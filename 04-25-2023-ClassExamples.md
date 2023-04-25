

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
WITH SylviaData as
( 
select 99 as SupplierId
, 'Sylvia The Supplier' as SupplierName
, 'Sylvia' as ContactName
, 'One Microsoft Way' as Address
, 'Redmond' as City
, '10481' as PostalCode
, 'USA' as Country
, '(425) 555-1212' as Phone

)
INSERT INTO Suppliers 
    (supplierID, supplierName, ContactName, Address, City, PostalCode, Country, Phone)
SELECT supplierID, supplierName, ContactName, Address, City, PostalCode, Country, Phone
  FROM SylviaData
```
