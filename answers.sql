-- ### Question 1 Achieving 1NF (First Normal Form) 🛠️
CREATE DATABASE OrderManagement;

USE OrderManagement;
CREATE TABLE ProductDetail(
OrderID INT,
CustomerName VARCHAR(100),
Product VARCHAR(100)
);

-- Insert rows manually
INSERT INTO ProductDetail
VALUES (101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Check the table structure and data
SELECT * FROM ProductDetail;



-- ### Question 2 Achieving 2NF (Second Normal Form) 🧩
-- Create Order table
USE OrderManagement;
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(100)
);

-- Create OrderItems table
CREATE TABLE OrderItems(
OrderID INT,
Product VARCHAR(100),
Quantity INT,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Adding values to Orders
INSERT INTO Orders
VALUES (101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Adding values to OrderItems
INSERT INTO OrderItems
VALUES (101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

-- Check the tables structure and data for Orders and Orders
SELECT * FROM Orders;

-- Check the tables structure and data for Orders and OrderItems
SELECT * FROM OrderItems;

-- The above will be after removing partial dependencies
