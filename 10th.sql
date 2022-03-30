use sakila;

select * from store;

select * from staff;

select staff.first_name, staff.last_name, store.store_id
from staff
inner join store 
on staff.store_id = store.store_id;

create database fake;

use fake;

create table Customers
(
	customer_id int not null,
    customer_name varchar(50),
    email_id varchar(30),
    phone_number varchar(12),
    primary key(customer_id)
);

create table Orders
(
	order_id int not null,
    customer_id int not null,
    order_date varchar(50),
    foreign key(customer_id) references Customers(customer_id)
);

select * from Customers;
select * from Orders;

drop table Orders;
insert into Orders values(1,1,"2022-03-21");
insert into Orders values(3,2,"2022-01-21");

select Customers.customer_name, Customers.email_id, Customers.phone_number, Orders.order_id
from Customers
inner join Orders 
on Customers.customer_id = Orders.Customer_id;

select Customers.customer_name, Customers.email_id, Customers.phone_number, Orders.order_id
from Customers
left outer join Orders 
on Customers.customer_id = Orders.Customer_id;

select Orders.order_id, Customers.customer_name, Customers.email_id, Customers.phone_number
from Orders
right outer join Customers 
on Customers.customer_id = Orders.Customer_id;

select Orders.order_id, Customers.customer_name, Customers.email_id, Customers.phone_number
from Customers
right outer join Orders 
on Customers.customer_id = Orders.Customer_id;

-- select Orders.order_id, Customers.customer_name, Customers.email_id, Customers.phone_number
-- from Customers
-- full join Orders
-- on Customers.customer_id = Orders.customer_id;

use visuallabs1;
SELECT * FROM visuallabs1;

DELIMITER &&  
CREATE PROCEDURE get_students ()    
BEGIN    
select * from student_details;
END &&   
DELIMITER ;   

call get_students();


DELIMITER &&  
CREATE PROCEDURE get_students_20 (in varage int)    
BEGIN    
select * from student_details where age >= varage;
END &&   
DELIMITER ;   

call get_students_20(21);


