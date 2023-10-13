Create database IRCTC;
Drop Database IRCT;
show databases;
use IRCTC;
Create table Train_Schedule(Train_No Int, Train_Name varchar(20), Start_Station varchar(20), Destination Varchar(20));
Insert into Train_schedule values(14722,'Abohar Jodhpur Express','Abohar Junction','Jodhpur Junction'),(09438,'Abu Road Mahesana DEMU Special','Abu Road','Mehsana Junction');
drop table Train_Schedule;
Create table Train_Schedule(Train_No Int, Train_Name varchar(40), Start_Station varchar(40), Destination Varchar(40));
Insert into Train_schedule values(14722,'Abohar Jodhpur Express','Abohar Junction','Jodhpur Junction'),(09438,'Abu Road Mahesana DEMU Special','Abu Road','Mehsana Junction');
Insert into Train_schedule values(05348,'Achhnera Kasganj Express Special','Achhnera Junction','Kasganj Junction'),
(22188,'Adhartal Rani Kamlapati Intercity Express','Adhartal','Rani Kamlapati'),
(07775,'Adilabad Parli Vaijnath DEMU Special','Adilabad','Parli Vaijnath');
drop table Train_Schedule;
Create table Train_Schedule(Train_No Int, Train_Name varchar(50), Start_Station varchar(30), Destination Varchar(30));
Insert into Train_schedule values(14722,'Abohar Jodhpur Express','Abohar Junction','Jodhpur Junction'),(09438,'Abu Road Mahesana DEMU Special','Abu Road','Mehsana Junction');
Insert into Train_schedule values(05348,'Achhnera Kasganj Express Special','Achhnera Junction','Kasganj Junction'),
(22188,'Adhartal Rani Kamlapati Intercity Express','Adhartal','Rani Kamlapati'),
(07775,'Adilabad Parli Vaijnath DEMU Special','Adilabad','Parli Vaijnath');
select * from Train_Schedule;
use IRCTC;
select * from Train_Schedule;
select
