--This select statement is used to retrive data from users table, where * is used to select all the data from table
select * from users; 

--This select statement is used to retrive some specific columns from the table
select User_id, First_Name, Last_Name from users;

--Select using Agrigate functions:

--In the below querry select used with concat function for retriving first_name, last_name by combining the columns 
select concat(FirstName,'  ', LastName) username from Users;

--Select statement with count function used to retrive number of orders
select count(OrderId) total_orders from Orders;

--Select statement with sum is used for adding total amount
select sum(TotalAmount) revinue from Orders;

--Select statement with average aggrigte function for retriving average of taotal amount 
select avg(TotalAmount) average from Orders

--Select atatement with distinct
select distinct(UserId) from orders;

--select statement with mimimum and maximum functions
select max(price) as max_p, min(price) as min_p from products;