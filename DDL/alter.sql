alter table customer add column text char(1);

alter table customer rename customers;

alter table customers rename text to description char(1);

drop database business;

drop table staff_delivary;

truncate table delivary;


