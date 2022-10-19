DROP DATABASE IF EXISTS car_company;
CREATE DATABASE car_company; 
use car_company;
create table Cars(
car_id int PRIMARY KEY unique,
VIN varchar(40) unique,
Manufacturer VARCHAR(40),
Model VARCHAR(40),
Year_ VARCHAR(40),
Color VARCHAR(40));
create table Customers(
client_id INT PRIMARY KEY not null,
costumer VARCHAR(40) not null,
client_name VARCHAR(40) NOT NULL,
phone_no VARCHAR(20),
e_mail varchar(40),
address VARCHAR(40),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(40),
zip_code int);
create table Salespersons(
id INT PRIMARY KEY not null,
staff_id varchar(40) not null,
staff_name VARCHAR(20) NOT NULL,
store_id VARCHAR(20) NOT NULL);
create table Invoices(
id int primary key,
invoice_number varchar(40) ,
date_ date,
car VARCHAR(20) NOT NULL,
costumer VARCHAR(20) NOT NULL,
salesperson VARCHAR(20) NOT NULL);

				