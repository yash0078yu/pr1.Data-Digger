CREATE DATABASE DataDigger;
USE DataDigger;

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Address VARCHAR(200)
);

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
TotalAmount DECIMAL(10,2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Price DECIMAL(10,2),
Stock INT
);

CREATE TABLE OrderDetails (
OrderDetailID INT PRIMARY KEY,
OrderID INT,
ProductID INT,
Quantity INT,
SubTotal DECIMAL(10,2),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES
(1,'Alice','alice@gmail.com','Ahmedabad'),
(2,'Rahul','rahul@gmail.com','Surat'),
(3,'Priya','priya@gmail.com','Rajkot'),
(4,'Amit','amit@gmail.com','Vadodara'),
(5,'Sneha','sneha@gmail.com','Mumbai');

INSERT INTO Orders VALUES
(101,1,'2026-01-10',2500),
(102,2,'2026-01-15',1500),
(103,3,'2026-02-01',3000),
(104,1,'2026-02-05',2000),
(105,4,'2026-02-10',1800);

INSERT INTO Products VALUES
(201,'Laptop',50000,10),
(202,'Mobile',20000,15),
(203,'Headphones',1500,30),
(204,'Keyboard',800,25),
(205,'Mouse',500,40);

INSERT INTO OrderDetails VALUES
(1,101,201,1,50000),
(2,102,203,2,3000),
(3,103,202,1,20000),
(4,104,204,3,2400),
(5,105,205,4,2000);

SELECT * FROM Customers;

UPDATE Customers SET Address='Delhi' WHERE CustomerID=2;

DELETE FROM Customers WHERE CustomerID=5;

SELECT * FROM Customers WHERE Name='Alice';

SELECT * FROM Orders WHERE CustomerID=1;

UPDATE Orders SET TotalAmount=2200 WHERE OrderID=104;

DELETE FROM Orders WHERE OrderID=105;

SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT MAX(TotalAmount) AS Highest,
MIN(TotalAmount) AS Lowest,
AVG(TotalAmount) AS Average
FROM Orders;

SELECT * FROM Products ORDER BY Price DESC;

UPDATE Products SET Price=18000 WHERE ProductID=202;

DELETE FROM Products WHERE Stock=0;

SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;

SELECT MAX(Price) AS Most_Expensive,
MIN(Price) AS Cheapest
FROM Products;

SELECT * FROM OrderDetails WHERE OrderID=101;

SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS Total_Ordered
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Ordered DESC
LIMIT 3;

SELECT ProductID, COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID=201
GROUP BY ProductID;
