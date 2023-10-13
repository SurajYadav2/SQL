show databases;
use itvedant;
create table salesman(salesman_id numeric(5) primary key, name varchar(30), city varchar(15), commission decimal(7,2));
insert into salesman values(1,'Suraj','Mumbai',5000);
insert into salesman values(2,'Deepak','Pune',4000),(3,'Lovekesh','Surat',3000),(4,'Akash','Thane',2000),(5,'Suneet','Kanpur',1000);
create table customer(customer_id numeric(5) primary key, cust_name varchar(30), city varchar(15),grade numeric(3),salesman_id numeric(5));
insert into customer values(1,'Suresh','Delhi',2,11);
insert into customer values(2,'Ramesh','Mumbai',1,12)
select * from customer;
show tables;
describe customer;
select * from customer;
insert into customer values(3,'Dinesh','Chennai',3,13),(4,'Kamlesh','Nagpur',4,14),(5,'Vimlesh','Pune',5,15);
create table orders(order_no numeric(5), purch_amt decimal(8,2),order_date date, 
customer_id numeric(5), foreign key(cutomer_id) references(customer), salesman_id numeric(5), foreign key(salesman_id) references(salesman));