1. Filter Orders by Country (USA)

SELECT *
FROM Orders
WHERE Country = 'USA';

------------------------------------------------------------------

2. Calculate Total Amount for Each Order

SELECT OrderID, CustomerID, ProductName, Quantity, Price, Country,
       (Quantity * Price) AS TotalAmount
FROM Orders;

------------------------------------------------------------------

3. Aggregate Total Sales by Country

SELECT Country, SUM(Quantity * Price) AS TotalSales
FROM Orders
GROUP BY Country;

------------------------------------------------------------------

4. Sort Total Sales in Descending Order

SELECT Country, SUM(Quantity * Price) AS TotalSales
FROM Orders
GROUP BY Country
ORDER BY TotalSales DESC;

------------------------------------------------------------------

5. Join Orders with Customer Information

SELECT o.OrderID, o.ProductName, o.Quantity, o.Price, o.Country, 
       c.CustomerName, c.ContactEmail
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

------------------------------------------------------------------

6. Conditional Split (High-Value and Low-Value Orders)

To split the orders based on `TotalAmount > 1000`:

High-Value Orders:

SELECT OrderID, CustomerID, ProductName, Quantity, Price, (Quantity * Price) AS TotalAmount
FROM Orders
WHERE (Quantity * Price) > 1000;

------------------------------------------------------------------

Low-Value Orders:**

SELECT OrderID, CustomerID, ProductName, Quantity, Price, (Quantity * Price) AS TotalAmount
FROM Orders
WHERE (Quantity * Price) <= 1000;

