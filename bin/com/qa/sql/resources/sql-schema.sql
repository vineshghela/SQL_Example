create database if not exists ims;
create table if not exists ims.customers(id int primary key auto_increment, first_name varchar(40), surname varchar(40));
create table if not exists ims.items(id int primary key auto_increment, name varchar(40), itemsPrice double, itemsAgeRestriction int);
create table if not exists ims.orders(id int primary key auto_increment, ordersNumItems int, ordersCost double, ordersDate varchar(40), item_id int not null, customer_id int not null, foreign key(customer_id) references customers(id), foreign key(item_id) references items(id));