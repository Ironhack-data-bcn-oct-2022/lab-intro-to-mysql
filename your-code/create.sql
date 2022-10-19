DROP DATABASE IF EXISTS Car_DB;
CREATE DATABASE Car_DB; 
USE Car_DB;
CREATE TABLE Cars (
Cars_id varchar(40) PRIMARY KEY,
VIN varchar(20) NOT NULL,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
year VARCHAR(20),
color VARCHAR(40) NOT NULL
);

CREATE TABLE Customers (
Customers_id varchar(20) PRIMARY KEY,
name VARCHAR(40) NOT NULL,
phone VARCHAR(20),
email varchar(20) ,
address VARCHAR(40) NOT NULL,
city VARCHAR(20) NOT NULL,
state_province VARCHAR(20),
country VARCHAR(20),
zip_postal_code varchar(20)
); 

CREATE TABLE Salespersons (
staff_iD varchar(20) PRIMARY KEY,
name VARCHAR(40) NOT NULL,
store VARCHAR(40) NOT NULL
);

CREATE TABLE Invoices (
invoice_id varchar(20) UNIQUE,
date varchar(20),
car varchar(40) NOT NULL,
customers varchar(20),
salespersons VARCHAR(40) NOT NULL
);

ALTER TABLE Invoices
ADD FOREIGN KEY (customers) 
REFERENCES customers(customers_id) 
ON DELETE CASCADE;

ALTER TABLE Invoices
ADD FOREIGN KEY (Car) 
REFERENCES cars(Cars_id) 
ON DELETE CASCADE;
 
ALTER TABLE Invoices
ADD FOREIGN KEY (salespersons) 
REFERENCES salespersons(staff_iD) 
ON DELETE CASCADE;
 
