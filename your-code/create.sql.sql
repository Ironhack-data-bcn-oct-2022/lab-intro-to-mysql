DROP DATABASE IF EXISTS labintrosql;
CREATE DATABASE labintrosql;
USE labintrosql;

CREATE TABLE cars (
VIN VARCHAR(40) UNIQUE,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
year INT NOT NULL,
color VARCHAR(40) NOT NULL 
);

CREATE TABLE customers(
customer_ID INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
phone_num VARCHAR(20) NOT NULL,
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
zip_code VARCHAR(20)
);

CREATE TABLE salesperson(
staff_ID INT PRIMARY KEY,
name VARCHAR(40),
store VARCHAR(40)
);

CREATE TABLE invoices(
invoice_num INT PRIMARY KEY,
date DATE,
car VARCHAR(40),
customer INT,
staff INT,
FOREIGN KEY (car) REFERENCES cars(VIN),
FOREIGN KEY (customer) REFERENCES customers(customer_ID),
FOREIGN KEY (staff) REFERENCES salesperson(staff_ID)
);
