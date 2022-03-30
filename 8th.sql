use sakila;

select first_name, last_name from actor where actor_id = 2;

select * from payment where amount = 0.99;

select * from payment where amount = 0.99 or amount = 2.99;

select * from customer where amount = 0.99 and amount = 5.99; /*This won't work because 0.99 and 5.99 can't be in the same column*/

select * from customer;

select * from customer order by email;

select * from customer where last_name like "J?hn";

select * from payment;

select * from payment where amount >= 10.00 and amount <=12.99 ;

select max(amount) from payment;

select min(amount) from payment;

select avg(amount) from payment;

select count(amount) from payment;

select sum(amount) from payment;

select avg(amount) from payment where amount >= 9.99;

select * from payment where amount between 0.99 and 9.99;

select * from customer where first_name like 'F%';

select * from customer where first_name like '%F';

select * from customer where first_name like '%or%';

select * from customer where first_name like '_r%';

select * from customer where first_name like 'r_____%';

select * from customer;

select * from customer order by first_name asc;

select * from customer order by first_name desc;

select * from payment order by amount desc;

select * from payment order by amount asc;

select * from customer order by first_name desc;

select * from city;

select * from country;

select * from address;

select count(address_id), district from address group by district order by district desc;

select country_id from country where exists (select country_id from country where country_id = 5);