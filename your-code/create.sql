DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;


CREATE TABLE cars (
VIN VARCHAR(20) PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
mode VARCHAR(20) NOT NULL,
year INT,
color VARCHAR(20) NOT NULL
);


CREATE TABLE customers(
customers_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
email VARCHAR(40) NOT NULL,
address VARCHAR(40) NOT NULL,
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
postal_code INT
);

CREATE TABLE salepersons(
staff_id INT PRIMARY KEY,
staff_name VARCHAR(40),
store VARCHAR(40)
);

CREATE TABLE invoices(
invoice_id VARCHAR(20) PRIMARY KEY,
date DATE,
car VARCHAR(40),
customer INT,
staff INT,
FOREIGN KEY (car) REFERENCES cars(VIN),
FOREIGN KEY (customer) REFERENCES customers(customers_id),
FOREIGN KEY (staff) REFERENCES salepersons(staff_id)
);
	