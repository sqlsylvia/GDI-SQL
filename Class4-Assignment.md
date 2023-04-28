## Class Practice
Create a table for your project.  
### Design  
   - What columns/attributes would your table have?
   - What data would you load into your table?
 
### Develop it!
  - Develop a CREATE TABLE statement for your table with a PRIMARY KEY, NOT 
  NULL Contraints
  - Develop two or more INSERT statements to load your table.
  - What kind of queries can you create to answer questions about your table?


### What if I can't think of table?
If you can't think of a table create one to called <b>States</b> and load State information into the table.



# Amber's Example
CREATE TABLE Venue(
VenueID int NOT NULL PRIMARY KEY,
Name varchar(255) NOT NULL UNIQUE,  
Addy varchar(255) NOT NULL,  
ContactName varchar(255) NULL, 
ContactPhone varchar(255) NULL
ProductID int FOREIGN KEY REFERENCES Products(ProductID)
);
``` sql
INSERT INTO Venue (Name,Addy,ContactName,ContactPhone)
VALUES ("A Venue", "55 Place Cir", "That Guy", "888-888-8888");
```
INSERT INTO Venue (Name,Addy,ContactName,ContactPhone)
VALUES ("A Venue", "55 Place Cir", "That Guy", "888-888-8888");
