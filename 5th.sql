create database visuallabs1;

use visuallabs1;

create table student_details
(
	roll_no int not null,
    name varchar(50) not null,
    email_id varchar(30),
    age int not null,
    address varchar(80),
    city varchar(50),
    college varchar(50) not null,
    course varchar(30),
    primary key(roll_no)
);

drop table student_details;
select * from student_details;

insert into student_details(roll_no,name,age,college) values(1,"Saud",19,"SPIT");
insert into student_details(roll_no,name,age,college) values(2,"Danish",23,"KJ");
insert into student_details(roll_no,name,age,college) values(3,"Isa",22,"Don Bosco");
insert into student_details(roll_no,name,age,college) values(4,"Faiz",19,"Xaviers");
insert into student_details(roll_no,name,age,college) values(5,"Aman",20,"Thadomal");
insert into student_details values(6,"Ayan","ayan@gmail.com",21,"","","Thadomal","DBMS");

describe student_details;
select * from student_details where roll_no = 2;
select * from student_details where name like "A%";

select * from student_details;

alter table student_details rename column college to college_name;