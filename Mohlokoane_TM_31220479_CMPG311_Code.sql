show databases;

drop database BidvestBank;

create database BidvestBank;

use BidvestBank;



create table Customer(
customer_name varchar(50) not null,
customer_street varchar(50) not null,
customer_city varchar(50) not null);

create table CustomerAccount(
account_Number char(6) not null primary key,
branch_name varchar(20) not null,
balance double);

create table Loan(
  Loan_number char(4) not null primary key,
  branch_name varchar(20),
  amount double
);
create table BankBranch(
  branch_name varchar(20) not null primary key,
  branch_city varchar(50) not null,
  assets double
);
create table Depositor(
  customer_name varchar(50) not null,
  account_Number char(6) not null
);
create table Borrower(
  customer_name varchar(50) not null,
  Loan_number char(4) not null
);
create table Employee(
  Employee_name varchar(50) not null,
  branch_name varchar(50),
  salary double
);

insert into CustomerAccount values('A-5324','Newtown',500);
insert into CustomerAccount values('A-5624','Sunnyside',400);
insert into CustomerAccount values('A-7794','Midrand',900);
insert into CustomerAccount values('A-4467','Mabopane',700);
insert into CustomerAccount values('A-3546','Midrand',750);
insert into CustomerAccount values('A-3453','Universitas',700);
insert into CustomerAccount values('A-2542','Mamelodi',350);

insert into BankBranch values('Midrand','Johannesburg',7100000);
insert into BankBranch values('Newtown','Johannesburg',9000000);
insert into BankBranch values('Mabopane','Pretoria',4000000);
insert into BankBranch values('Belgravia','Kimberly',3700000);
insert into BankBranch values('Sunnyside','Pretoria',1700000);
insert into BankBranch values('Amanzimtoti','Durban',3000000);
insert into BankBranch values('Universitas','Bloemfontein',2100000);
insert into BankBranch values('Mamelodi','Pretoria',8000000);

insert into Customer values('Modise','Spring','George');
insert into Customer values('Brooks','Senator','Johannesburg');
insert into Customer values('Jooste','North','Kimberly');
insert into Customer values('Lombard','Sand Hill','Nelspruit');
insert into Customer values('Mokwena','Walnur','Port-Elizabeth');
insert into Customer values('Johnson','Mmabatho','Mafikeng');
insert into Customer values('Johnson','Alma','Bloemfontein');
insert into Customer values('Zwane','Maln','Mafikeng');
insert into Customer values('Lindsay','Park','George');
insert into Customer values('Smith','North','Kimberly');
insert into Customer values('Dlamini','Putman','Port-Elizabeth');
insert into Customer values('Williams','Nassau','Giyane');

insert into Depositor values('Johnson','A-5624');
insert into Depositor values('Johnson','A-5624');
insert into Depositor values('Johnson','A-7794');
insert into Depositor values('Zwane','A-3546');
insert into Depositor values('Lindsay','A-3453');
insert into Depositor values('Smith','A-4467');
insert into Depositor values('Dlamini','A-2542');

insert into Loan values('L-11','Mamelodi',900);
insert into Loan values('L-14','Newtown',1500);
insert into Loan values('L-15','Sunnyside',1500);
insert into Loan values('L-16','Sunnyside',1300);
insert into Loan values('L-17','Newtown',1000);
insert into Loan values('L-23','Universitas',2000);
insert into Loan values('L-93','Mabopane',500);

insert into Borrower values('Modise','L-16');
insert into Borrower values('Jooste','L-93');
insert into Borrower values('Johnson','L-15');
insert into Borrower values('Jackson','L-14');
insert into Borrower values('Zwane','L-17');
insert into Borrower values('Smith','L-11');
insert into Borrower values('Smith','L-23');
insert into Borrower values('Williams','L-17');

insert into Employee values('Modise','Sunnyside',1500);
insert into Employee values('Brown','Sunnyside',1300);
insert into Employee values('Gopal','Sunnyside',5300);
insert into Employee values('Johnson','Newtown',1500);
insert into Employee values('Loreena','Newtown',1300);
insert into Employee values('Peterson','Newtown',2500);
insert into Employee values('Rao','Austin',1500);
insert into Employee values('Sato','Austin',1600);

Select account_Number From CustomerAccount
Where balance < 700;

Select customer_name From Customer
Where customer_city = 'Johannesburg';

Select Employee_name From Employee
Where salary < 1500 AND branch_name <> 'Newtown';

Select AVG(salary) FROM Employee;

Select branch_name
From BankBranch
Order by assets DESC
limit 1;

Select Employee_name
FROM Employee
Where branch_name = 'Sunnyside';

Select * from Borrower;

Select account_Number From CustomerAccount
Where balance > 900;

Select account_Number From CustomerAccount
Where branch_name ='Newtown' AND balance > 600  ;

Select branch_name, assets
from BankBranch;
