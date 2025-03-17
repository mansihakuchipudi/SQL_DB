##SQL:
    SQL is structured querry language used for storing and retriving data.

##Data base:
     Data base is a collection of structured data which are used to store and manage large data.

##DBMS:
    Data base management system is a software used to store, manage and retrive data from the data base.

##RDBMS:
    Relational data base manademaent system is the data organized in te form of tables with in rows and columns 
to perform operations like creaate, update delete amd insert data in the data base.

##MySQL:
    MySQL is a relational data base which is used for performing querries in the data base.

##Data base lanuages:
    - Data Definition language(DDL):
        DDL commands are used to create, modifi and delete the structure of data base.

            * Drop   : Drop is a command used to delete the entair table structure or data base.
                Syntax: Drop database databade_name;
                        Drop table table_name;

            * Create : Create command is used to crete object whit the  table or a data base.
                Syntax: create database database_name;
                        create table table_name column_names datatype;
                    
            * Alter  : Alter is a command used for modofing the structure of the data base or a table.
                Syntax: Alter table table_name ADD column_name datatype;
                        Alter table table-name DROP column column_name;
                        Alter table table_name MODIFY column column_name datatype;

            * Truncate: Truncate command is used to remove all the records from the table.
                Syntax: Truncate table table_name;

            * Rename : Rename command is used to rename the objects or tables.
                Syntax: Rename old_tablename To new_tablename.


    - Data Manipulation language(DML):
        DML commands are used to manipulate or modify thde data in the data base or tables.
            * Select: Select is a command used to retrive data from the data base.
                Syntax: select * from table_name

            * Insert: Insert command is used to insert data in the table.
                Syntax: insert into table_name(column_names)vales(column_values);

            * Update: Update is a command used to update existing data in the table.
                Syntax: Update table_name SET [column_name= value] [WHERE condition]  

            * Delete: Delete command is used to delete all the records from the table.
                Syntax: delete table_name ;
                        delete table_name WHERE condition ;

##Keys in DBMS:
    Keys in DBMS are used for easily accessing of data and for unique indentifying of records.
    Keys avoids duplicate data.
    They also establish relationship detween different tables.
    primary key, foreign key, unique key, super key, candidate key.

##Constrains:
    Constrains are used to apply certain conditions on data in database.
    * Not null - If a column is pecified as NOT NULL then we cannot give null values to a specified column.
        Syntax - create table table_name( column_names data type NOT NULL); --NOT NULL while creating table
                 alter table table_name modify column( column_name data type NOT NULL); NOT NULL adding after creating table
    * Unique   - Unique constrain is used to specify that the coloum should be unique and the values should not be repeted.
        Syntax - create table table_name( column_name data type UNIQUE); --UNIQUE constrain while creating table.
                 alter table add constrain UNIQUE(column_name); --UNIQUE constrain after creating table.
    * Primary key - It uniquely defines column or columns in a table and unique identifing of each row.
        Syntax - create table table_name( column_name data type PRIMARY KEY); --PRIMARY KEY while creating table
                 alter table add constrain PRIMARY KEY(column_name); --PRIMARY KEY after creating table.
    * Foreign key - Foreign key is a key constrain which defines as primary key in one table and becomes foreign key in a table.
        Syntax - create table table_name( column_name)
                 FOREIN KEY(column_name)references reference_table_name(referenc_column);
                 alter table table_name add constrain
                FOREIN KEY(column_name)references reference_table_name(referenc_column);
    * Check   - Check constrain is used to check the condition to meet a particular condition.
        Syntax - create table table_name(column_name datatype , column_name data type CHECK(condition));
    * Default - Default constrain is to fill te colum with the default value when it is not given a value.
        Syntax - create table table_name(column_name data type, column_name data type DEFAULT(default_value));
    *Enum     - Enum constrain is used when we need to add or enter some particular values in the respected column.
        Syntax - create table table_name(column_name data type, column_name data type ENUM(value_1,..,value_n))
    * Indux - Indux constrain is used for easy retrival of values from tables. Index gives row id to each row in the table.
        Syntax - create INDUX idx_name on table_name(column_name);

    - Data Querying Language(DQL):
        DQL are used to perform querries on databases to retrive data using diffrentSELECT statements.
        Only select command is used in this DQL.
        Syntax - SELECT * from table_names;
                 SELECT column_name1, column_name2 from table_name WHERE (condition);



  