DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;

USE lab_mysql;


CREATE TABLE cars (
ID int PRIMARY KEY,
VIN VARCHAR(60),
manufacturer VARCHAR(60),
model VARCHAR(60),
year INT,
color varchar(60)
);

create table customers (
ID int PRIMARY KEY,
customer_id int ,
name varchar(60),
phone_no varchar(60),
email varchar(60),
address varchar(60),
city varchar(60),
state_province varchar(60),
country varchar(60),
post_code varchar(60)
);

create table salespersons (
ID int PRIMARY KEY,
staff_id INT,
staff_name varchar(60),
store varchar(60)

);

create table invoices (
ID int PRIMARY KEY,
invoice_no int,
date date,
vin int,
customer_id int,
staff_id int
); 

ALTER TABLE invoices
ADD FOREIGN KEY (vin) -- la que cambias de la tabla Invoices
REFERENCES cars(ID) -- la que coges de la tabla original
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (customer_id) -- la que cambias de la tabla Invoices
REFERENCES customers(ID) -- la que coges de la tabla original
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (staff_id) -- la que cambias de la tabla Invoices
REFERENCES salespersons(ID) -- la que coges de la tabla original
ON DELETE CASCADE;