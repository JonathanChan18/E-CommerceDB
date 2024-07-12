--Add a New Customer
CREATE OR ALTER PROCEDURE SP_AddProduct
    @ProductName VARCHAR(255),
    @Price DECIMAL(10, 2),
    @StockQuantity INT,
    @CategoryID INT
AS
BEGIN
    INSERT INTO Products (ProductName, Price, StockQuantity, CategoryID)
    VALUES (@ProductName, @Price, @StockQuantity, @CategoryID);
END;

--Execute
EXEC SP_AddProduct @ProductName='Lenovo', @Price=10, @StockQuantity=1, @CategoryID=1
SELECT * FROM Products
GO

--Update Product Stock
CREATE OR ALTER PROCEDURE SP_UpdateStockQuantity
    @ProductID INT,
    @NewStockQuantity INT
AS
BEGIN
    UPDATE Products
    SET StockQuantity = @NewStockQuantity
    WHERE ProductID = @ProductID;
END;

--Execute
EXEC SP_UpdateStockQuantity @ProductID=6, @NewStockQuantity=100
SELECT * FROM Products
GO

--Delete a Product
CREATE OR ALTER PROCEDURE SP_DeleteProduct
    @ProductID INT
AS
BEGIN
    DELETE FROM Products
    WHERE ProductID = @ProductID;
END;

--Execute
EXEC SP_DeleteProduct @ProductID=6
SELECT * FROM Products
GO

--Retrieve order for customer
CREATE OR ALTER PROCEDURE SP_GetCustomerOrders
    @CustomerID INT
AS
BEGIN
    SELECT O.OrderID, O.OrderDate, O.TotalAmount
    FROM Orders O
    WHERE O.CustomerID = @CustomerID;
END;

--Execute
EXEC SP_GetCustomerOrders @CustomerID=1
GO

