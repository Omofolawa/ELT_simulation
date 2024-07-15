-- Create Staging Table
CREATE TABLE StagingOrders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2)
);

-- Create the Target Table in the database
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    Quantity INT,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Populate the Customers table
INSERT INTO Customers (CustomerID, CustomerName)
SELECT DISTINCT CustomerID, 'Customer ' + CAST(CustomerID AS VARCHAR)
FROM StagingOrders;

-- Populate the Products table
INSERT INTO Products (ProductID, ProductName, Price)
SELECT DISTINCT ProductID, 'Product ' + CAST(ProductID AS VARCHAR), Price
FROM StagingOrders;

-- Populate the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID, Quantity, TotalPrice)
SELECT OrderID, CustomerID, OrderDate, ProductID, Quantity, Quantity * Price
FROM StagingOrders;
