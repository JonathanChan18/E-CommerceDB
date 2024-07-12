INSERT INTO Categories (CategoryName)
VALUES 
('Electronics'),
('Books'),
('Clothing');

INSERT INTO Products (ProductName, Price, StockQuantity, CategoryID)
VALUES 
('Smartphone', 699.99, 50, 1),
('Laptop', 999.99, 30, 1),
('Novel', 19.99, 100, 2),
('T-Shirt', 9.99, 200, 3),
('Jeans', 39.99, 150, 3);

INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber)
VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321'),
('Alice', 'Johnson', 'alice.johnson@example.com', '5556667777');

INSERT INTO Orders (OrderDate, CustomerID, TotalAmount)
VALUES 
('2024-07-01', 1, 719.98),
('2024-07-02', 2, 39.98),
('2024-07-03', 3, 29.98);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(1, 1, 1, 699.99),
(1, 4, 2, 9.99),
(2, 5, 1, 39.99),
(3, 4, 3, 9.99);

INSERT INTO CUSTOMERS (FirstName,LastName,Email,PhoneNumber) 
VALUES ('Jonathan','Chan','example@gmail.com',1234578);