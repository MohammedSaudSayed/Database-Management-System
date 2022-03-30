use sakila;
select * from customer;
select customer_id, first_name, last_name, email from customer;

create database saudlabs;
use saudlabs;

create database pseudo;
drop database pseudo;

create table student
(
	roll_no int,
    name varchar(80),
    age int,
    address varchar(100),
    city varchar(20),
    fees int
    );
drop table student;

insert into student values(1,"Saud",19,"Bhendi Bazaar","Mumbai",67426);
insert into student values(2,"Danish",19,"Bhendi Bazaar","Mumbai",67426);
insert into student values(3,"Aman",19,"Bhendi Bazaar","Mumbai",67426);
insert into student values(4,"Ayan",19,"Bhendi Bazaar","Mumbai",67426);
insert into student values(5,"Faraaz",19,"Bhendi Bazaar","Mumbai",67426);
insert into student(roll_no,name,age,fees) values(6,"Mehraan",19,67426);
insert into student values(7,"Rayyan",19,"","",67426);
insert into student(roll_no,name,age,fees) values(8,"Zaid",19,67426);

select * from student;

create table student
(
	roll_no int not null,
    name varchar(80) not null,
    age int not null,
    address varchar(100),
    city varchar(20),
    fees int not null,
    primary key(roll_no)
    );
    
truncate student;
select * from student;

describe student;
select * from student where roll_no = 1;
select * from student where name like "F%";
select * from student where fees = 67426;
delete from student where roll_no = 5;

alter table student add email varchar(50);
alter table student drop column email;

alter table student add email varchar(50) not null;
insert into student values(9,"Rayyan",19,"","",67426,"ksaud2426@gmail.com");
insert into student values(10,"Rayyan",19,"","",67426,"dan@gmail.com");
insert into student values(11,"Rayyan",19,"","",67426,"jab@gmail.com");
insert into student values(12,"Rayyan",19,"","",67426,"sue@gmail.com");

alter table student add email varchar(50) not null, add college varchar(80) not null;
alter table student rename column college to college_name;
select * from student;