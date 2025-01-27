/* 
This is SQL from biggining to advanced.
*/

-- Querry for creating database 
    create database business;  -- create database and the database name.

--Querry for creating table
    create table customer(                       -- create, table, table name and then column names followed by datatypes and constrains 
    id int not null auto_increment primary key,  -- here id is auto incremented and give primary key, that it is generated automaticallu and considered as primary key    
    Name varchar(225) not null,
    Encrypted_password varchar(25) not null,
    Address varchar(225),
    Type char(1));

--Querry to insert data inthe table
    insert into  customer(Name,Encrypted_password, Address, Type) values
    ("Priya", "@@@@@", "Telangana", "p"),   --insert into command is used to insert sing or multiple rows at a time.
    ("Anjali", "*****", "Andhra", "a"),     --when inserting multiple rows each row should be seperated by a coma.
    ("Kavya", "&&&&&", "Vijayawada", "k"),
    ("Geetha", "####", "Vizyag", "g");

--Querries to retrive data from database
    select * from customer;   --  symbol hows that the entair data in the table should be selected.
    select id, Name from customer;  --This querry is about selecting some of the columns from the table.
    select * from customer where id = 1;  -- here whare condition is to retrive the data from the table where the condition is true.

--Creating multiple tables and inserting records  in a database seperately
    -- Staff table
    create table staff(
    id int not null auto_increment primary key,
    Name varchar(225) not null,
    Address varchar(225) not null,
    Contact varchar(15) not null);

    insert into staff(id, Name, Address, Contact) value
    (101, "Ram", "Hyderabad", 9876543210);

    insert into staff(Name, Address, Contact)values
    ("Sai","Hyderabad", 8765432109),
    ("Shiva", "Vijayawada", 7654321098),
    ("Srinvas", "Telangana", 654321098),
    ("Sagar", "Andhra", 8776544321);

    --Delivary table
    create table delivary(
    id int not null auto_increment primary key,
    date date not null);

    insery into delivary(id, date) values
    (1001,"2002-09-08")
    (1002,"2003-09-09")
    (1003,"2001-06-04")
    (1004,"2006-07-04")
    (1005,"2004-03-02");

    --Purchase order table
    create table purchase_order(
    id int not null auto_increment primary key,
    create_date timestamp not null,
    three_gallon int not null,
    five_gallon_int int not null,
    cup int not null,
    amount float(10),
    staff_id int(10),
    customer_id int(10) not null,
    delivary_id int(10) not null,
    foreign key(customer_id) references customer(id),
    foreign key(delivary_id) references delivary(id)
    );

    insert into purchase_order(id, create_date, three_gallon, five_gallon_int, cup, amount, staff_id, customer_id, delivary_id)values
    (10001, "2024-09-05 10:30:00", 66, 45,	6, 4500	,101, 1, 1001),
    (10002, "2023-06-05 11:30:00", 63, 31,3, 4500, 102, 2, 1002),
    (10003, "2023-06-05 01:30:00", 56, 67,5, 6410, 103, 3, 1003),
    (10004, "2023-06-05 09:30:00", 30, 95,89, 6300, 104, 4, 1004),
    (10005, "2023-06-05 07:20:00", 35, 70,5, 2754, 105, 5, 1005);

    --Staff delivary table
    create table staff_delivary(
        staff_id int, delivary_id int
        primary key(staff_id, delivary_id)  --creating multiple primary keys at a time
        foreign key(staff_id) references staff(id)  --creating multiple foreign keys at a time
        foreign key(delivary_id) references delivary(id)
        );

    insert into staff_delivary(staff_id, delivary_id) values
    (101, 1001),
    (102, 1002),
    (103, 1003),
    (104, 1004),
    (105, 1005);

    --Performing jons

    select Name, Amount from customer join  purchase_order on   --joining two tables 
    customer.id = purchase_order.customer_id 
    order by customer_id;

    select s.Name, d.date from staff s join     --joining tree tables
    staff_delivary on s.id = staff_id join 
    delivary d on staff_delivary.delivary_id = d.id;

    select c.Name, s.Name       --joining five tables
    from customer c 
    join purchase_order on c.id = purchase_order.customer_id 
    join delivary on delivary.id = purchase_order.delivary_id 
    join staff_delivary on staff_delivary.delivary_id = delivary.id 
    join staff s on s.id = staff_delivary.staff_id; 


    



