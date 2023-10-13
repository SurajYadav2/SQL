create database LIC_Policies;
use LIC_Policies;
create table Plans(Planid int, Plan_Name Varchar(20), Plan_Amount decimal(7,2), Maturity_Amount decimal(7,2));
insert into Plans Values(01,'Bima Jyoti',10000,150000);
Drop Plans;
drop table Plans;
create table Plans(Planid int, Plan_Name Varchar(20), Plan_Amount decimal(7,2), Maturity_Amount decimal(10,2));
insert into Plans Values(01,'Bima Jyoti',10000,150000);
insert into Plans Values(02,'Dhan Sanchay',12000,170000),
(03,'Dhan Varsha',13000,180000),
(04,'Jeevan Azad',14000,190000),
(05,'New Endowment Plan',15000,200000),
(06,'New Jeevan Anand',15500,210000),
(07,'Single Premium Endowment Plan',16000,220000),
(08,'Jeevan Lakshya',17000,2150000),
(09,'Jeevan Labh',18000,2300000),
(10,'Aadhaar Stambh',19000,240000);
select* from plans;
Show databases;
describe plans;
use Plans;
Use Lic_Policies;
select* from plans;
