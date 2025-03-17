--JOINS
--inner join
select Orders.OrderID, users.userName from Orders inner  join
 Customers on  Orders.CustomerID = Customers.CustomerID;

select p.ProductName, count(od.ProductId) as Totalcount from orderDetails od 
join products p on od.ProductId = p.ProductId
group by p.ProductName order by TotalCount desc; 

select * from users join orders on users.UserId = orders.UserId 
order by orders.TotalAmount desc limit 3;

select users.UserId, concat(FirstName,' ', LastName) Name, Sum(TotalAmount) Total from users 
join orders on users.UserId = orders.UserId group  by users.UserId;

select p.ProductName, count(od.ProductId) as Totalcount from orderDetails od join products p on od.ProductId = p.ProductId
group by p.ProductName order by TotalCount desc;

--left join
select concat(FirstName,'  ', LastName) username, Email from users 
left join Reviews on Users.UserId = Reviews.UserId 
where ReviewText = null;

select Customers.CustomerName, Orders.OrderI from Customers left  join Orders  
on Customers.CustomerID = Orders.CustomerID order by Customers.CustomerName;

--right join
select FirstName, LastName, Email from Reviews 
right join users on Reviews.UserId = Users.UsersId;

select Orders.OrderID, Employees.LastName, Employees.FirstName from Orders
 right join Employees orders.EmployeeID = Employees.EmployeeID order by Orders.OrderID;

 --cross join
 select Customers.CustomerName, Orders.OrderID from Customers cross join Orders 
 where Customers.CustomerID=Orders.CustomerID

 select userId, userName, Reviews from users cross join reviews 
 where users.userId = Reviews.userId

 --selfe join
 select A.CustomerName as CustomerName1, B.CustomerName as CustomerName2,A.City from Customers A, Customers B 
 where A.CustomerID <> B.CustomerID and A.City = B.City order by  A.City;




