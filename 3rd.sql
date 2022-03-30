use visuallabs;

drop table course;
create table course
(
id int not null auto_increment,
name varchar(50),
fees int,
duration varchar(50),
primary key(id) 
)auto_increment = 1001;

alter table course add center varchar(50) default "Mazgaon";
alter table course drop center;

alter table course auto_increment = 1000;
insert into course(name,fees,duration) values ("Java", 7000, "4 weeks");
insert into course(name,fees,duration) values ("Python", 5500, "6 weeks");
insert into course(name,fees,duration) values ("Dbms", 7000, "6 weeks");

select * from course;

alter table course rename column id to course_id;
alter table course modify centre varchar(100);

create table student
(
reg_no int not null auto_increment,
name varchar(80),
phone varchar(15),
email varchar(80),
course_id int,
primary key(reg_no),
foreign key(course_id) references course(course_id) 
)auto_increment = 1000;

select * from student;
insert into student(name,phone,email,course_id) values("Afiya","9892100046","afiya@gmail.com",1001);
insert into student(name,phone,email,course_id) values("Arfa","9892111146","arfa@gmail.com",1002);
insert into student(name,phone,email,course_id,age) values("Nabeela","9892444446","nabeela@gmail.com",1002,21);
insert into student(name,phone,email,course_id,age) values("Nabeel","9892888886","nabeel@gmail.com",1002,26);

delete from student where reg_no = 1003;

select * from student;
select * from course;

alter table student add age int default 18 constraint chkage check(age>=18);

alter table course modify name varchar(50) unique;

insert into course(name,fees,duration,centre) values ("Operating System", 7000, "4 weeks","Andheri");