DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
vin VARCHAR(20) PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(20) NOT NULL,
color VARCHAR(10) NOT NULL,
year DATE
);

CREATE TABLE customer (
customer_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
phone_no VARCHAR(20) NOT NULL,
email VARCHAR(20) NOT NULL,
address VARCHAR(40),
city VARCHAR(20),
province VARCHAR(20),
country VARCHAR(20) NOT NULL,
zip INT
);

CREATE TABLE salesperson(
staff_id INT PRIMARY KEY,
name VARCHAR(20),
store VARCHAR(20)
);

CREATE TABLE invoices (
invoice_no INT PRIMARY KEY,
date DATE,
car VARCHAR(20),
customer INT,
salesperson INT,
FOREIGN KEY (car) REFERENCES cars(vin) ON UPDATE CASCADE,
FOREIGN KEY (customer) REFERENCES customer(customer_id) ON UPDATE CASCADE,
FOREIGN KEY (salesperson) REFERENCES salesperson(staff_id) ON UPDATE CASCADE
);

