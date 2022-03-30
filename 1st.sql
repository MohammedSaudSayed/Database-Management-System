use sakila;

select * from country;

select country_id, country from country;

select * from staff;

select staff_id, first_name, last_name from sakila.staff;

insert into country values(112,"RSS","1999-02-15 04:44:00");

select * from country where country_id = 1;

drop database visuallabs;
