CREATE database order_details;
USE order_details;
CREATE TABLE order_info(id int,order_name varchar(50),
cost int,order_id int primary key,created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50));
INSERT INTO order_info values(1,'Dress',300,200145,'2023-07-12 12:20:05','Sudha',now(),'Prajakta');
INSERT INTO order_info values(2,'Mobile',25000,168145,'2022-05-11 11:25:10','Sahana',now(),'Prerana');
SELECT * FROM order_info;

CREATE TABLE payment(id int,price int,payment_id int primary key, order_id int,foreign key(order_id) references order_info(order_id),
payment_status varchar(50),created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50));
INSERT INTO payment values(1,500,2001,200145,'online','2022-03-14 09:20:03','Chaitra',now(),'sushmita');
INSERT INTO payment values(2,1000,2002,168145,'offline','2023-04-11 10:25:05','Priya',now(),'Prachi');
SELECT * FROM payment;

CREATE TABLE restaurant(id int,restaurant_name varchar(50),restaurant_id int primary key,loc varchar(50),order_id int,
foreign key(order_id) references order_info(order_id),ratings int,payment_id int,foreign key(payment_id) references payment(payment_id),
created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50));
INSERT INTO restaurant values(1,'Shanti Sagar',201,'Rajajinagr',200145,5,2001,'2012-05-12 08:06:25','Priyanka',now(),'Shraddha');
INSERT INTO restaurant values(2,'Swati Bhavan',202,'Yalahanka',168145,5,2002,'2015-07-05 06:06:50','Surekha',now(),'Varsha');
SELECT * FROM restaurant;

CREATE TABLE delivery(id int,person_name varchar(50),mode_of_payment enum('online','offline'),restaurant_id int,
foreign key(restaurant_id) references restaurant(restaurant_id),order_id int,foreign key(order_id)references order_info(order_id),
created_at timestamp,created_by varchar(50),modified_at timestamp,modified_by varchar(50));
INSERT INTO delivery values(1,'Sandesh','online',201,200145,'2021-04-20 03:25:05','Jyoti',now(),'Akhila');
INSERT INTO delivery values(2,'Suraj','offline',202,168145,'2020-05-25 10:24:08','Swati',now(),'Aishwarya');
SELECT * FROM delivery;