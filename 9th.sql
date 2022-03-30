create database customproducts;

use customproducts;

select * from customer;
drop table customer;

select * from products;
drop table products;

drop table address;

create table category
(
	category_id int not null,
    name varchar(80),
    primary key(category_id)
);

create table products
(
	product_id int not null,
	name varchar(50),
    price int not null,
    quantity int,
    primary key(product_id),
    foreign key(product_id) references category(category_id)
);

create table customer
(
	customer_id int not null,
	name varchar(50) not null,
    phone_number varchar(15),
    email_id varchar(30),
    primary key(customer_id)
);

create table address
(
	address_id int not null,
    street varchar(50),
    road varchar(30),
    city varchar(50),
    state varchar(50),
    pincode varchar(10),
    primary key(address_id),
    foreign key(address_id) references customer(customer_id)
);

create table orders
(
	order_id int not null,
    primary key(order_id),
    foreign key(order_id) references customer(customer_id)
);

select * from customer;
select * from products;
select * from address;
select * from orders;

insert into customer values(1,"Hair Straightener",9930086525,"ksaud2426@gmail.com");