# Optional Homework Assignments

To complete the following assignment, use JOINS to various tables in the W3Schools database at https://www.w3schools.com/sql/trysql.asp?filename=trysql_editor.


# 1. How many products are there by category?  List out CategoryName, and number of products?

<!-- 
``` sql
SELECT Categories.CategoryName, Count(Products.ProductID) as NumberOfProducts
FROM Products
INNER Join Categories ON Categories.CategoryID = Products.CategoryID
Group by Categories.CategoryName
ORDER BY 1
```
-->
# 2. Which customer has the most number of Orders?
<!-- 
``` sql
Select  Customers.CustomerName, Customers.customerId, count(orderID) cnt
FROM ORders
JOIN Customers ON Customers.customerID = Orders.CustomerID
GROUP BY Customers.CustomerID
ORDER BY cnt desc
```
-->
# 3. Which customer has spent the most money in Orders?
<!-- 
``` sql

SELECT C.CustomerID, C.CustomerName
   , COUNT(DISTINCT O.OrderID) AS NumOfOrders
   , ROUND(SUM(P.Price * OD.Quantity), 2) AS AMOUNT
FROM [Orders] O
INNER JOIN [Customers] C
 ON O.CustomerID = C.CustomerID
INNER JOIN [OrderDetails] OD
 ON O.OrderID = OD.OrderID    
INNER JOIN [Products] P
 ON P.ProductID = OD.ProductID
GROUP BY C.CustomerID
ORDER BY Amount DESC
LIMIT 1
```
-->
