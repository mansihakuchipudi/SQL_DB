--Sub queries
select FirstName, LastName, Email from users where UserId in 
 (select distinct UserId from orders);

select FirstName, LastName, Email from users where UserId not in
 (select distinct UserId from orders);

 select Max(items),Min(items),floor(AVG(items))
from (select order_id,count(order_id)as items from orders
group by order_date)as Student_order_detail;


select employee_id, last_name, 
(case when department_id=(
select department_id from departments where location_id=2500) 
THEN 'Canada' ELSE 'USA' END) as 
location FROM employees;

