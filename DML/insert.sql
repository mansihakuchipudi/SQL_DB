-Querry to insert data inthe table


    insert into  customer(Name,Encrypted_password, Address, Type) values
    ("Priya", "@@@@@", "Telangana", "p"),   --insert into command is used to insert sing or multiple rows at a time.
    ("Anjali", "*****", "Andhra", "a"),     --when inserting multiple rows each row should be seperated by a coma.
    ("Kavya", "&&&&&", "Vijayawada", "k"),
    ("Geetha", "####", "Vizyag", "g");

 insert into staff(id, Name, Address, Contact) value
    (101, "Ram", "Hyderabad", 9876543210);

insert into staff(Name, Address, Contact)values
    ("Sai","Hyderabad", 8765432109),
    ("Shiva", "Vijayawada", 7654321098),
    ("Srinvas", "Telangana", 654321098),
    ("Sagar", "Andhra", 8776544321);

insery into delivary(id, date) values
    (1001,"2002-09-08")
    (1002,"2003-09-09")
    (1003,"2001-06-04")
    (1004,"2006-07-04")
    (1005,"2004-03-02");

insert into purchase_order(id, create_date, three_gallon, five_gallon_int, cup, amount, staff_id, customer_id, delivary_id)values
    (10001, "2024-09-05 10:30:00", 66, 45,	6, 4500	,101, 1, 1001),
    (10002, "2023-06-05 11:30:00", 63, 31,3, 4500, 102, 2, 1002),
    (10003, "2023-06-05 01:30:00", 56, 67,5, 6410, 103, 3, 1003),
    (10004, "2023-06-05 09:30:00", 30, 95,89, 6300, 104, 4, 1004),
    (10005, "2023-06-05 07:20:00", 35, 70,5, 2754, 105, 5, 1005);


insert into staff_delivary(staff_id, delivary_id) values
    (101, 1001),
    (102, 1002),
    (103, 1003),
    (104, 1004),
    (105, 1005);