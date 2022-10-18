DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE country (
country_id INT PRIMARY KEY NOT NULL,
name VARCHAR(20),
initials VARCHAR(5)
);

CREATE TABLE state (
state_id INT PRIMARY KEY NOT NULL,
name VARCHAR(20),
country INT,
FOREIGN KEY (country) REFERENCES country(country_id)
);

CREATE TABLE city (
city_id INT PRIMARY KEY NOT NULL,
name VARCHAR(20),
state INT,
FOREIGN KEY (state) REFERENCES state(state_id)
);

CREATE TABLE address (
address_id INT PRIMARY KEY NOT NULL,
name VARCHAR(30),
zip_code INT,
city INT,
FOREIGN KEY (city) REFERENCES city(city_id)
);

CREATE TABLE car (
car_id INT PRIMARY KEY,
vin VARCHAR(20),
manufacturer VARCHAR(20),
model VARCHAR(20),
year INT,
color VARCHAR(20)
);

CREATE TABLE store (
store_id INT PRIMARY KEY NOT NULL,
name VARCHAR(20)
);

CREATE TABLE salesperson (
salesperson_id INT PRIMARY KEY,
staff_id INT,
name VARCHAR(20),
store INT,
FOREIGN KEY (store) REFERENCES store(store_id)
);

CREATE TABLE customer (
customer_id INT PRIMARY KEY NOT NULL,
personal_identifier INT,
name VARCHAR(20),
phone_no VARCHAR(20) UNIQUE,
email VARCHAR(20),
address INT,
FOREIGN KEY (address) REFERENCES address(address_id)
);

CREATE TABLE invoice (
invoice_id INT PRIMARY KEY NOT NULL,
invoice_number INT UNIQUE,
date DATE,
car INT,
customer INT,
salesperson INT,
FOREIGN KEY (car) REFERENCES car(car_id),
FOREIGN KEY (customer) REFERENCES customer(customer_id),
FOREIGN KEY (salesperson) REFERENCES salesperson(salesperson_id)
);









