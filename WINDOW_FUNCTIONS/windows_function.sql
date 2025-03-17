SELECT 
    UserID, 
    SUM(TotalAmount) AS TotalSpent,
    RANK() OVER (ORDER BY SUM(TotalAmount) DESC) AS SpendingRank
FROM Orders
GROUP BY UserID;

SELECT 
    OrderID, 
    OrderDate, 
    TotalAmount,
    SUM(TotalAmount) OVER (ORDER BY OrderDate) AS RunningTotalSales
FROM Orders;

SELECT 
UserID, 
OrderID, 
OrderDate,
COUNT(OrderID) OVER (PARTITION BY UserID ORDER BY OrderDate) AS CumulativeOrders
FROM Orders;

SELECT 
ProductID, 
ProductName, 
CategoryID, 
Price,
MAX(Price) OVER (PARTITION BY CategoryID) AS MaxCategoryPrice
FROM Products;

SELECT 
UserID, 
OrderID, 
OrderDate, 
TotalAmount,
LAG(TotalAmount) OVER (PARTITION BY UserID ORDER BY OrderDate) AS PreviousOrderAmount
FROM Orders;

SELECT 
UserID, 
OrderID, 
OrderDate, 
TotalAmount,
LEAD(TotalAmount) OVER (PARTITION BY UserID ORDER BY OrderDate) AS NextOrderAmount
FROM Orders;

SELECT 
    OrderID, 
    OrderDate, 
    TotalAmount,
    AVG(TotalAmount) OVER (ORDER BY OrderDate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS MovingAvgSales
FROM Orders;

SELECT 
    UserID, 
    OrderID, 
    OrderDate, 
    TotalAmount,
    DENSE_RANK() OVER (PARTITION BY UserID ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders;

SELECT 
    ProductID, 
    ProductName, 
    CategoryID, 
    Price,
    PERCENT_RANK() OVER (PARTITION BY CategoryID ORDER BY Price DESC) AS PricePercentile
FROM Products;
