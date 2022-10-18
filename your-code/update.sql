
USE  lab_mysql;

INSERT INTO Invoices VALUES
("852399038", "22-08-2018", "3K096I98581DHSNUP", "20001", "00004"),
("731166526", "31-12-2018", "HKNDGS7CU31E9Z7JW", "10001", "00006"),
("271135104", "22-01-2019", "RKXVNNIHLVVZOUB4M", "30001", "00008");



SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET Email = "ppicasso@gmail.com"
WHERE Customer_ID = "10001";

UPDATE Customers
SET Email = "lincoln@us.gov"
WHERE Customer_ID = "20001";

UPDATE Customers
SET Email = "hello@napoleon.me"
WHERE Customer_ID = "30001";

SELECT * FROM Customers;
