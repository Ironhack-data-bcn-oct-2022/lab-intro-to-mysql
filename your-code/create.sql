DROP DATABASE IF EXISTS car_company;
CREATE DATABASE car_company; 
USE car_company;
-- Creating tables
CREATE TABLE cars (
car_id INT PRIMARY KEY,
vin VARCHAR(20) NOT NULL,
manufacturer VARCHAR(30) NOT NULL,
model VARCHAR(20) NOT NULL,
`year` YEAR(4),
color VARCHAR(10)
);
CREATE TABLE customer (
customer_id INT PRIMARY KEY,
`name` VARCHAR(20) NOT NULL,
phone VARCHAR(20),
email VARCHAR(20),
address VARCHAR(60),
city VARCHAR(20),
state_province VARCHAR(20),
country VARCHAR(20),
postal VARCHAR(5)
);
CREATE TABLE salesperson (
id INT PRIMARY KEY,
staff_id VARCHAR(5) UNIQUE,
`name` VARCHAR(20) NOT NULL,
store VARCHAR(20) NOT NULL
);
CREATE TABLE  invoices(
invoice_num INT PRIMARY KEY,
`date` DATE NOT NULL,
car INT,
customer INT,
sales_person INT
);
-- Creating joins
ALTER TABLE invoices
ADD FOREIGN KEY (car)
REFERENCES cars(car_id)
ON DELETE SET NULL;
ALTER TABLE invoices
ADD FOREIGN KEY (customer)
REFERENCES customer(customer_id)
ON DELETE SET NULL;
ALTER TABLE invoices
ADD FOREIGN KEY (sales_person)
REFERENCES salesperson(id)
ON DELETE SET NULL;