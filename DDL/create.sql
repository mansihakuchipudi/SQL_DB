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

   

    --Delivary table
    create table delivary(
    id int not null auto_increment primary key,
    date date not null);

   

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

   

    --Staff delivary table
    create table staff_delivary(
        staff_id int, delivary_id int
        primary key(staff_id, delivary_id)  --creating multiple primary keys at a time
        foreign key(staff_id) references staff(id)  --creating multiple foreign keys at a time
        foreign key(delivary_id) references delivary(id)
        );

   

    



