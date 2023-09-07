# Class 2 HomeWork Review
<!--  
## Are there any employees that went to Boston College? Who?
```
    SELECT * from Employees 
    WHERE NOTES like '%Boston College%'
```
## How many orders used “Speedy Express” Shipper?
```
SELECT ShipperName, count(*)
FROM Orders
INNER Join Shippers ON Shippers.ShipperID = Orders.ShipperID
WHERE ShipperName == "Speedy Express"
GROUP BY ShipperName
```
## Joining Orders and OrderDetails table
```
SELECT Orders.OrderID, OrderDetails.OrderID as DetailOrder
FROM Orders
INNER JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
```
## Joing Orders, OrderDetails and Customer
-- Class Work: Joining Orders, OrderDetails and Customer tables
```
select * 
FROM orders 
JOIN orderdetails  ON orders.orderid = orderdetails.orderid
JOIN customers  ON orders.customerid = customers.customerid
```
## Joing Orders, OrderDetails, Customer, Products

```
SELECT *
FROM orders 
JOIN orderdetails  ON orders.orderid = orderdetails.orderid
JOIN customers  ON orders.customerid = customers.customerid
JOIN Products ON orderdetails.productid = products.productid
```

-->