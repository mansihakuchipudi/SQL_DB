--Functions in sql

--Aggrigate sql functions
select count(*) from users;

select max(price) as max_p, min(price) as min_p, avg(price) as average from products;

select sum(price) from order_items;

select user_id, count(order_id) as ord_id from orders group by user_id order by ord_id desc limit 1;

select category_id, count(product_id) as product from products group by category_id;

select user_id, count(order_id) from orders group by  user_id;

--String sql functions
select upper(first_name) from users;

select length(first_name) from users;

select left(product_name, 3) from products;

select replace(mail_id, '@', '(at)') from users;

select substring_index(mail_id, '@', 1) from users;

select substring_index(mail_id, '@', -1) from users;

select first_name, char_length(first_name), character_length(first_name), length(first_name) from users ;

select first_name, last_name , concat(first_name,' ', last_name),concat(first_name,'@', last_name) from users;

select first_name, last_name , concat_ws('_',first_name, last_name,first_name),concat_ws('@', first_name,'gmail.com') from users;

select field('an', 'm','an','is','ha'),field(1,5,3,7,1,3);

select find_in_set('manisha',"anjali,manisha, sirisha,anusha");

select format('1020.0000121',5) ;

select first_name,insert(first_name,1,2,'Ma') from users;

select first_name, instr(first_name,'ce'), locate('ce',first_name) from users where instr(first_name,'ce') <> 0;

select first_name, lcase(first_name), lower(first_name) from users;

select lcase(first_name), LOWER(first_name) FROM users;

select first_name, ucase(first_name), upper(first_name) from users;

select first_name, left(first_name,3), right(first_name,3) from users;

select first_name, lpad(first_name,11,'Mr') , rpad(first_name,10,'Mr ') from users;

--Date sql functions
select * from users where date(create_date) = curdate(); 

select user_id, year(create_date) as years from users;

select user_id, datediff(curdate(), create_date) as dates from users; 

select * from users where create_date >= curdate() - interval 30 day ;

select * from users where year(create_date) = 2023;

select * from users where dayofweek(create_date) = 2;

select user_id , date_add(create_date, interval 7 day) as days from users; 

select user_id, create_date, hour(create_date) as hours from users;

select * from users where month(create_date) = 2;