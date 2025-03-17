--WHERE clause

--WHERE clause with SELECT statment is used to retrive the data using specific condition

select * from orders where Status = 'Pending';

select * from users where RegistrationDate > 2023-01-01;

select * from orders where year(OrderDate) = 2024;

select * from products where price between 50 and 100;

select * from users where   Firstname like 'A%';

--WHERE clause with update is used for updating valuse in some specific conditions

update  users set mobile_no = 7643218904 where user_id = 110;

--WHERE clause with delete

delete users where user_id = 120;

--GROUP BY clause

select category_id, count(product_id) as product from products 
group by category_id;

select user_id, count(order_id) from orders 
group by  user_id;

select count(Emp_id) as Number_of_Employees,Designation from employees 
group by Designation;

select sum(salary) as total_sal,Designation, Department from employees 
group by Designation, Department;

--HAVING clause

select category_id, count(product_id) from products 
group by category_id having count(product_id) > 2;

select Designation,MAX(Salary)as Salary from employee 
group by Designation having max(Salary)>40000;

select City,sum(Salary) as Salary from  employees 
group by City having count(*)>1;

--ORDER BY clause

select * from employees order by Designation;

select Name,Salary from employees order by Salary ASC;

select * from employees order by Name DESC;




