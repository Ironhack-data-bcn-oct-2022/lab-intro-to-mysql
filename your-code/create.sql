DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;

USE lab_mysql;
--  CREATE CARS TABLE


CREATE TABLE cars (
ID1 int PRIMARY KEY,
VIN VARCHAR(60),
manufacturer VARCHAR(60),
model VARCHAR(60),
year INT,
color varchar(60)
);

create table customers (
ID2 int PRIMARY KEY,
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
ID3 int PRIMARY KEY,
staff_id INT,
staff_name varchar(60),
store varchar(60)

);

create table invoices (
ID4 int PRIMARY KEY,
invoice_no int,
date date,
vin int,
customer_id int,
staff_id int

);


# create references
ALTER TABLE invoices
ADD FOREIGN KEY (vin) -- name on the child table
REFERENCES cars(ID1) -- name on the original table, table
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (customer_id) -- name on the child table
REFERENCES customers(ID2) -- name on the original table, table
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (staff_id) -- name on the child table
REFERENCES salespersons(ID3) -- name on the original table, table
ON DELETE CASCADE;

-- primary key (car, customer, staff),
	-- FOREIGN KEY(car) REFERENCES cars(VIN) ON DELETE CASCADE,
	-- foreign key (customer) references customers(customer_id) ON DELETE CASCADE,
	-- foreign key (staff_id) references salespersons(staff_id) ON DELETE CASCADE
