USE  lab_mysql;

CREATE TABLE Cars (
VIN INT PRIMARY KEY,
Model VARCHAR(40),
`Year` INT,
Color VARCHAR(40)
);

CREATE TABLE Customers (
Customer_ID INT PRIMARY KEY,
`Name` VARCHAR(40) NOT NULL,
Phone VARCHAR(40) NOT NULL,
Email VARCHAR(40) NOT NULL,
Address VARCHAR(40) NOT NULL,
City VARCHAR(40) NOT NULL,
State_Province VARCHAR(40) NOT NULL,
Country VARCHAR(40) NOT NULL,
Zip_Postal_Code INT NOT NULL
);

CREATE TABLE Salesperson (
Salesperson_ID INT PRIMARY KEY,
`Name` VARCHAR(40) NOT NULL,
Store VARCHAR(40) NOT NULL
);

CREATE TABLE Invoices (
Invoice_number INT PRIMARY KEY,
`Date` DATE,
Car VARCHAR(40) NOT NULL,
Customer VARCHAR(40) NOT NULL,
Salesperson_name VARCHAR(40) NOT NULL
);

ALTER TABLE Customers
ADD FOREIGN KEY -- ??? 

-- Sorry I am totally blocked and I don't understand how to insert the keys.
-- I've been trying for a while but I just couldn't. I'm so sorry. I'll try the next day.


