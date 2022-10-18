USE lab_mysql;

create table cars (
vehicle_id_number INT PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(20) NOT NULL,
year VARCHAR(20) NOT NULL,
colour VARCHAR(10) NOT NULL
);

create table customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(20) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
email VARCHAR(20) NOT NULL,
address VARCHAR(20),
city VARCHAR(20),
state_or_province VARCHAR(20),
country VARCHAR(20) NOT NULL,
postcode VARCHAR(10)
);

create table salesforce (
staff_id INT PRIMARY KEY,
staff_name VARCHAR(20) NOT NULL,
store VARCHAR(20) NOT NULL
);

create table invoices (
invoice_number INT PRIMARY KEY,
invoice_date VARCHAR(20) NOT NULL,
car_id INT,
customer_id INT,
salesperson INT

);

ALTER TABLE invoices
ADD FOREIGN KEY (car) -- in invoices table
REFERENCES cars(vehicle_id_number) -- in cars table
ON DELETE SET NULL;


ALTER TABLE invoices
ADD FOREIGN KEY (customer) -- in invoices table
REFERENCES customers(customer_id) -- in cars table
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY (salesperson) -- in invoices table
REFERENCES salesforce(staff_id) -- in cars table
ON DELETE SET NULL;
