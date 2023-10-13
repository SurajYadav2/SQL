use assignments;
create table client_table(Client_no char(6) primary key, Name varchar(20) not null, City varchar(20) not null, Pin_Number int, Mobile_no char(10));
select* from client_table;
create table grocery(item_no int, item_name varchar(20), mfd varchar (10), expdate varchar(12), address varchar(20), city varchar(10));
select* from grocery;
drop table grocery;