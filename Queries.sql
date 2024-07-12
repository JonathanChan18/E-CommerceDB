--INNER JOIN: Retrieve all products with their category names
SELECT P.ProductName, P.Price, P.StockQuantity, C.CategoryName
FROM Products P
INNER JOIN Categories C ON P.CategoryID = C.CategoryID;
GO

-- LEFT JOIN: Retrieve all customers and their orders, including customers who haven't placed any orders
SELECT CU.CustomerID, CU.FirstName, CU.LastName, O.OrderID, O.OrderDate, O.TotalAmount
FROM Customers CU
LEFT JOIN Orders O ON CU.CustomerID = O.CustomerID;
GO

-- RIGHT JOIN: Retrieve all orders and their customers, including orders that do not have associated customers (if any)
SELECT O.OrderID, O.OrderDate, O.TotalAmount, CU.CustomerID, CU.FirstName, CU.LastName
FROM Orders O
RIGHT JOIN Customers CU ON O.CustomerID = CU.CustomerID;
GO

-- SUM: Calculate total sales for each product
SELECT P.ProductName, SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName;
GO

--COUNT: Count the number of products in each category
SELECT C.CategoryName, COUNT(P.ProductID) AS NumberOfProducts
FROM Products P
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName;
GO

-- AVG: Calculate the average price of products in each category
SELECT C.CategoryName, AVG(P.Price) AS AveragePrice
FROM Products P
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName;
GO

-- Handling NULL Values: Retrieve all customers and the total amount they have spent, handling customers with no orders
SELECT CU.CustomerID, CU.FirstName, CU.LastName, 
       COALESCE(SUM(O.TotalAmount), 0) AS TotalSpent
FROM Customers CU
LEFT JOIN Orders O ON CU.CustomerID = O.CustomerID
GROUP BY CU.CustomerID, CU.FirstName, CU.LastName;
GO
