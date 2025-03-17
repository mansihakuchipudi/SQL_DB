--Common table expression(CTE):
with OrderSummery as(
select UserId, sum(TotalAmount) as AmountSpent from Orders group by userid 
)
select u.UserId, concat(u.FirstName,' ', u.LastName), os.AmountSpent from Users u 
join OrderSummery os on u.UserId = os.UserId; 

with Expences as(
select ProductId, ProductName, Price from Products order by Price desc 
)
select * from Expences  limit 5;

with UserOrders as(
select UserId, count(OrderId) as TotalOrders from Orders group by UserId 
)
select u.UserId, concat(u.FirstName,' ', u.LastName) as UserName , uo.TotalOrders from Users u 
join UserOrders uo 
on u.UserID = uo.UserId
where TotalOrders >= 5;

WITH UserOrderCount AS (
    SELECT UserID, COUNT(OrderID) AS OrderCount
    FROM Orders
    GROUP BY UserID
)
SELECT u.UserID, u.FirstName, u.LastName, uoc.OrderCount
FROM Users u
JOIN UserOrderCount uoc ON u.UserID = uoc.UserID
WHERE uoc.OrderCount > 5;

with MaxPrice as (
select CategoryId, max(Price) as maxcost from Products
group by CategoryId  
)
select p.ProductId, p.ProductName, p.CategoryId from Products p join MaxPrice mp on 
p.CategoryId = mp.CategoryId and p.Price = mp.maxcost; 

with UserOrder as(
select UserId from Orders 
)
select u.UserId, concat(u.FirstName,' ',u.LastName) from Users u left join UserOrder uo 
on u.UserId =uo.UserId where u.UserId is null; 


