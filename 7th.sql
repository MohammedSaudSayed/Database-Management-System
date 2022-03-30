create database LMS;

use lms;

create table publisher
(
	publisher_id int not null,
    name varchar(50) not null,
    year_of_publication int not null,
    primary key(publisher_id)
);

insert into publisher values(1,"Apress",2009);
insert into publisher values(2,"Nirali",2010);
insert into publisher values(3,"Himalaya",2019);
insert into publisher values(4,"TechNeo",2021);

select * from publisher;

create table book
(
	book_id int not null,
    publisher_id int not null,
	ISBN varchar(80) unique,
    title varchar(80) not null,
    price int not null,
    category varchar(80),
    edition varchar(20),
    primary key(book_id) ,
    foreign key(publisher_id) references publisher(publisher_id)
);

describe book;
describe publisher;

insert into book values(1,1,"E001","Introduction to Algo",50,"Programming",2009);
insert into book values(2,1,"E002","Head First Java",50,"Programming",2009);
insert into book values(3,1,"E003","Introduction to DS",50,"Programming",2014);
insert into book values(4,2,"E004","Introduction to Python",50,"Programming",2015);

select * from book;

select * from publisher where publisher_id = 2;

create view book_publisher_info as
select book.book_id, book.title, book.price, publisher.publisher_id, publisher.name
from book
inner join publisher on
book.publisher_id = publisher.publisher_id;

select * from book_publisher_info;

create table student
(
	s_id int not null,
    s_name varchar(80),
    address varchar(150),
    age int,
    gender varchar(10),
    phone varchar(10),
    email varchar(30),
    course_id int not null,
    address_id int not null,
    college_id int not null,
    primary key(s_id),
    foreign key(course_id) references course(course_id),
    foreign key(college_id) references address(address_id),
    foreign key(college_id) references college(college_id)
);

drop table student;
/*
Student
College
Course
Address
*/

select * from student;

drop table student;

/*
college_name varchar(50),
    college_address varchar(150),
    
 course varchar(30),
    course_duration varchar(30),
    course_fees int,
*/

create table course
(
	course_id int not null,
    name varchar(50) unique,
    course_duration varchar(30),
    course_fees int,
    primary key(course_id),
    Check (course_fees >= 5500)
)Auto_increment = 100;

drop table course;

insert into course(course_id, name, course_duration, course_fees) values(1001,"Python","1 Month","5500");
insert into course(course_id, name, course_duration, course_fees) values(1002,"Java","1 Month","5500");

insert into college values(1,"KJ","Bandra");
insert into college values(2,"SPIT","Andheri");

select * from college;

select * from course;

alter table college drop column address;

create table address
(
	address_id int not null,
    street varchar(50),
    road varchar(30),
    city varchar(50),
    state varchar(50),
    pincode varchar(10),
    primary key(address_id)
);

drop table address;

create table college
(
	college_id int not null,
    name varchar(50) not null unique,
    address_id int,
    primary key(college_id),
    foreign key(address_id) references address(address_id)
);

drop table college;

insert into address values(1,"Sydhnam Comp","Pimp Road","Andheri","Maharashtra","400003");
insert into college values(1,"SPIT",1);

select college.name, address.city, address.pincode from college
inner join address where college.address_id = address.address_id;
