create database students;

use visuallabs;
use students;

create table student
(
	regno int,
    name varchar(80),
    collage varchar(50),
    phone varchar(12),
    emailid varchar(50),
    fees int
);

select * from student;

insert into student values (1, "Saud", "9930086525", "ksaud2426@gmail.com", "326980204629", "3rd year", "SPIT", "EXTC", 7000, "Rita");
insert into student values (2, "Danish", "743736837", "dan@gmail.com", "7393792838", "2nd year", "SPIT", "IT", 5500, "Rita");
insert into student values (2, "Danish", "SPIT", "7474838838", "dan@gmail.com", 7000);
insert into student(regno, name, phone, fees) values (3, "KJ", "6446838733", "67");

drop table student;

create table student
(
	regno int auto_increment,
    name varchar(80) NOT NULL,
    phone varchar(12) NOT NULL unique,
    emailid varchar(50),
    aadhar varchar(50),
    year varchar(50),
    college varchar(50),
    coursestudying varchar(80),
    fees int NOT NULL,
    nameoftheteacher varchar(80),
    primary key(regno)
);

