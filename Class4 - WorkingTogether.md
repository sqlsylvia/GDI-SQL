
# Quiz 1: Add 2 new customers to the Customers’ table.
Example 1: 
INSERT INTO Customers
(CustomerID,	CustomerName, ContactName,	Address,	City,	PostalCode,	Country)
VALUES  (1000, 'Joelene Kease', 'Joelene', 'Somewhere' , 'Shenzhen', '999999', 'China')

INSERT INTO Customers
(CustomerID,	CustomerName, ContactName,	Address,	City,	PostalCode,	Country)
 (1111, 'Name', 'Contact', 'Somewhere' , 'Shenzhen', '999999', 'China')


Example 2: 
INSERT INTO Customers
(CustomerID,	CustomerName, ContactName,	Address,	City,	PostalCode,	Country)
SELECT 1000, 'Joelene Kease', 'Joelene', 'Somewhere' , 'Shenzhen', '999999', 'China'
UNION
SELECT 10220, 'Sylvia', 'Sylvia', 'New York' , 'Shenzhen', '999999', 'China'



# Quiz 2: Add 1 new supplier to the Suppliers’ table.

INSERT INTO Suppliers
(SupplierID,		SupplierName,		ContactName,		Address,	City,	PostalCode,	Country,	Phone)
SELECT 1000, 'Lily Supplier', 'Lily', 'Somewhere' , 'Detroit', NULL, 'USA', '111-123-1234'

# Quiz 3: 
- Add a new column for Country in the Employees table and
  ALTER TABLE Employees
     ADD COLUMN Country VARCHAR(100)
- Update 2 or more records in the Employees table with values for Country.
UPDATE Employees
SET Country = 'Germany'
WHERE EmployeeID = 8;

UPDATE Employees
SET Country = 'UK'
WHERE EmployeeID = 10;



