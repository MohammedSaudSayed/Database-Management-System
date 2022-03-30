use sakila;

select * from customer;
update customer set first_name = "Mariam" where customer_id = 1;
update customer set first_name = "Pam", last_name = "John" where customer_id = 2;
create view customer_details as select first_name, last_name, email from customer;

select * from customer_details;
delete from customer where customer_id = 2;
