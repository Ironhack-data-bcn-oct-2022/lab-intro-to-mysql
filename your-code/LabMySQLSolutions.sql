DROP DATABASE IF EXISTS holy;
create database holy; 
USE holy; 

CREATE TABLE IF NOT EXISTS Inventory(
VIN varchar(40) PRIMARY KEY, 
manufacturer varchar(40), 
model varchar(40), 
year INT ,
color varchar(10)
);

CREATE TABLE IF NOT EXISTS customers(
customer_id INT PRIMARY KEY, 
name varchar(20), 
phone_no varchar(20), 
email varchar(30), 
address varchar(40), 
city varchar(10), 
state varchar(40), 
country varchar(20), 
zip varchar(10)
); 

CREATE TABLE IF NOT EXISTS employees_(
staff_id int PRIMARY KEY, 
name varchar(20), 
store varchar(40) UNIQUE
); 


CREATE TABLE IF NOT EXISTS invoices(
invoice_no int PRIMARY KEY,
doidate varchar(20),
car varchar(40), 
customer INT, 
employee INT
); 

ALTER TABLE invoices
ADD FOREIGN KEY (car) 
REFERENCES Inventory(VIN)
ON DELETE CASCADE;

ALTER TABLE invoices 
ADD FOREIGN KEY (customer)
REFERENCES customers(customer_id)
ON DELETE CASCADE; 

ALTER TABLE invoices
ADD FOREIGN KEY (employee)
REFERENCES employees_(staff_id)
ON DELETE CASCADE; 


INSERT INTO Inventory VALUES
 ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019,'Blue'),
 ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
 ('RKXVNNIHLVVZOUB4M','Ford', 'Fusion', 2018, 'White'),
 ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018, 'Silver'),
 ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
 ('DAM41UDE3CHU2WVF6', 'Volvo', 'Cross Country', 2019, 'Gray');

INSERT INTO customers VALUES
(10001,'Pablo Picasso', '+34 636 17 63 82' ,' ','Paseo de la Chopera, 14', 'Madrid','Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln','+1 305 907 7086',' ','120 SW 8th St','Miami','Florida','United States', 33130 ), 
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00',' ', ' 40 Rue du Colisée','Paris','Île-de-France','France', 75008); 

INSERT INTO employees_ VALUES 
(00001, 'Petey Cruiser' ,'Madrid' ),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'), 
(00004, 'Gail Forcewind',  'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'), 
(00007, ' Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer','São Paulo'); 

INSERT INTO invoices VALUES 
(852399038, 22-08-2018,  0 , 1 , 3 ), 
(731166526, 31-12-2018, 3, 0, 5 ), 
(271135104, 22-01-2019 , 2, 2, 7); 

SELECT * FROM invoices;
