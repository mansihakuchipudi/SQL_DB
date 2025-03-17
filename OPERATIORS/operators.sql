--Operators in SQL:

-- Arthematic sql operators
select sum(Price * Quantity) as revinue from orders;


--Comparision sql operators
select * from users where city = 'Hyderabad';

select * from users where age > 18;

select * from users where city != 'Hyderabad';

select user_id, order_id, order_date from orders where order_date < '2024-12-31';

--Logical sql operators
select * from customers where address = "Hyderabad" and age = 22;

select * from customers where address = "Hyderabad" or address = "Vijayawada" ;

select * from customers where name like '%esh';

select * from customers where name like 'M%' OR name like 'R%';

select * from customers where age in (20, 21, 22);

select * from customers where age between 20 and 25;

select * from customers where order_date between '2021-09-21' and '2022-09-20';

select * from customers where not address = 'Hyderabad';

select * from userd where age is null;

select * from userd where age is  not null;










