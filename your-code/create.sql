CREATE DATABASE lab_intro_sql

-- CREATE CARS TABLE
CREATE TABLE Cars (
vehicle_id INT PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40) NOT NULL,
year_ INT NOT NULL,
color VARCHAR(40) NOT NULL,
customers_id INT NOT NULL, 
FOREIGN KEY (customers_id) 
REFERENCES Customers (customers_id) 
ON DELETE CASCADE,
staff_id INT NOT NULL,
FOREIGN KEY (staff_id) 
REFERENCES Salespersons (staff_id) 
ON DELETE CASCADE
);

-- CREATE CUSTOMERS TABLE
CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(40) NOT NULL,
customer_surname VARCHAR(40) NOT NULL,
phone_number INT NOT NULL,
email VARCHAR(40) NOT NULL,
address VARCHAR(40) NOT NULL,
city VARCHAR(40) NOT NULL,
state_province VARCHAR(40) NOT NULL,
country VARCHAR(40) NOT NULL,
zip_code INT NOT NULL,
staff_id INT NOT NULL,
FOREIGN KEY (staff_id) 
REFERENCES Salespersons (staff_id) 
ON DELETE CASCADE
);

-- CREATE SALESPERSONS TABLE
CREATE TABLE Salespersons (
staff_id INT PRIMARY KEY,
staff_name VARCHAR(40) NOT NULL,
staff_surname VARCHAR(40) NOT NULL,
phone_number INT NOT NULL,
email VARCHAR(40) NOT NULL,
store VARCHAR(40) NOT NULL,
number_sales INT NOT NULL
);

-- CREATE INVOICES TABLE
CREATE TABLE Invoices (
invoice_number INT PRIMARY KEY,
date_ INT NOT NULL,
value_ INT NOT NULL,
customers_id INT NOT NULL,
FOREIGN KEY (customers_id) 
REFERENCES Customers (customers_id) 
ON DELETE CASCADE,
vehicle_id INT NOT NULL,
FOREIGN KEY (vehicle_id) 
REFERENCES Cars (vehicle_id) 
ON DELETE CASCADE,
staff_id INT NOT NULL,
FOREIGN KEY (staff_id) 
REFERENCES Salespersons (staff_id) 
ON DELETE CASCADE,
FOREIGN KEY (customers_id) 
REFERENCES Cars (customers_id) 
ON DELETE CASCADE,
FOREIGN KEY (staff_id) 
REFERENCES Cars (staff_id) 
ON DELETE CASCADE
);



