DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

create TABLE Cars(
Vehicle_ID VARCHAR(40) PRIMARY KEY,
Manufacturer VARCHAR(40) NOT NULL,
Model VARCHAR(40) NOT NULL,
Year INT,
Color VARCHAR(40)
);


create TABLE Customers(
Customer_ID VARCHAR(40) PRIMARY KEY,
Name VARCHAR(40) NOT NULL,
Phone VARCHAR(40),
Email VARCHAR(40),
Address VARCHAR(40),
City VARCHAR(20),
Province VARCHAR(40),
Country VARCHAR(30) NOT NULL,
Zip_Code VARCHAR(20)
);

create TABLE Salesperson(
staff_id VARCHAR(40) PRIMARY KEY,
Name VARCHAR(40) NOT NULL,
Store VARCHAR(40)
);

create TABLE Invoices(
Invoice_number VARCHAR(40) PRIMARY KEY,
Date DATE,
Vehicle_ID VARCHAR(40),
Customer_ID VARCHAR(40),
Salesperson_ID VARCHAR(40),
FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID) ON DELETE SET NULL,
FOREIGN KEY (Vehicle_ID) REFERENCES Cars(Vehicle_ID) ON DELETE CASCADE,
FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(staff_id) ON DELETE CASCADE
);

DROP TABLE Invoices;