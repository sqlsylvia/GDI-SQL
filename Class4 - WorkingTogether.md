
--Add 2 new customers to the Customers’ table.
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


# Quiz 3: Add a new column for Country in the Employees table and Update 2 or more records in the Employee table with values for Country.
