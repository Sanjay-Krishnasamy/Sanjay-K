create database BANK;
use bank;
create table CUSTOMERDETIAL(Acc_no int primary key , Acc_name varchar(50) not null,pin_no int unique,pan_no varchar (8)not null unique,balance int not null,address varchar(20),acc_type varchar(20)not null) ;
create table BANKDETIAL(e_id int primary key,bank_name varchar(20),IFSC_CODE int not null,branch varchar (10) not null,Phone_no int not null,pincode int not null,e_salary int not null);
insert into bankdetial values(1,"CBNR",10,"Namakkal",777777,637003,21000);
insert into bankdetial values(2,"INDIAN",11,"Namakkal",888888,637003,15500);
insert into bankdetial values(3,"ICICI",12,"Namakkal",999999,637001,25000);
insert into CUSTOMERDETIAL values(1112345,"Sanjay",2020,"San143",500000,"Namakkal","Current");
insert into CUSTOMERDETIAL values(1212345,"Sanmathiy",0112,"san123",50000,"Namakkal","SAVING");
insert into CUSTOMERDETIAL values(1312345,"Vishal",1111,"vis123",50000,"Salem","Saving");
insert into CUSTOMERDETIAL values(1412345,"Muhil",2222,"muh123",50090,"Covai","Saving");
select * from customerdetial;
select * from bankdetial;
SELECT
  customerdetial.Acc_no,
  customerdetial.Acc_name,
  customerdetial.balance,
  bankdetial.bank_name,
  bankdetial.IFSC_CODE
FROM
  customerdetial
INNER JOIN
  bankdetial
ON
  customerdetial.Acc_no = bankdetial.e_id;