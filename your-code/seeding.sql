USE lab_mysql;

INSERT INTO car (car_id, vin, manufacturer, model, year, color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'), (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
	   (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'), (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
	   (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'), (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
       
INSERT INTO country(country_id, name)
VALUES (0, 'Spain'), (1, 'France'), (2, 'United States');

INSERT INTO state(state_id, name, country)
VALUES (0, 'Madrid', (SELECT country_id FROM country WHERE name = 'Spain')), (1, 'Île-de-France', (SELECT country_id FROM country WHERE name = 'France')), 
	   (2, 'Florida', (SELECT country_id FROM country WHERE name = 'United States'));
 
INSERT INTO city(city_id, name, state)
VALUES (0, 'Madrid', (SELECT state_id FROM state WHERE name = 'Madrid')) , (1, 'Paris', (SELECT state_id FROM state WHERE name = 'Île-de-France')), 
	   (2, 'Miami', (SELECT state_id FROM state WHERE name = 'Florida'));

INSERT INTO address(address_id, name, zip_code, city)
VALUES (0, 'Paseo de la Chopera, 14', 28045, (SELECT city_id FROM city WHERE name = 'Madrid')), 
	   (1, '120 SW 8th St', 33130, (SELECT city_id FROM city WHERE name = 'Paris')), 
	   (2, '40 Rue du Colisée', 75008, (SELECT city_id FROM city WHERE name = 'Miami'));

INSERT INTO customer (customer_id, personal_identifier, name, phone_no, email, address)
VALUES (0, 10001 , 'Pablo Picasso' , '+34 636 17 63 82' , '-', (SELECT address_id FROM address WHERE name = 'Paseo de la Chopera, 14')), 
	   (1, 20001 , 'Abraham Lincoln' , '+1 305 907 7086' , '-', (SELECT address_id FROM address WHERE name = '120 SW 8th St')), 
	   (2, 30001 , 'Napoléon Bonaparte' , '+33 1 79 75 40 00' , '-', (SELECT address_id FROM address WHERE name = '40 Rue du Colisée'));
       
INSERT INTO store(store_id, name)
VALUES (0, 'Madrid'), (1, 'Barcelona'), (2, 'Berlin'), (3, 'Paris'), (4, 'Mimia'), (5, 'Mexico City'), (6, 'Amsterdam'), (7, 'São Paulo');

INSERT INTO salesperson(salesperson_id, staff_id, name, store)  
VALUES (0, 00001, 'Petey Cruiser', (SELECT store_id FROM store WHERE name = 'Madrid')), 
	   (1, 00002, 'Anna Sthesia', (SELECT store_id FROM store WHERE name = 'Barcelona')),
	   (2, 00003, 'Paul Molive', (SELECT store_id FROM store WHERE name = 'Berlin')),
	   (3, 00004, 'Gail Forcewind', (SELECT store_id FROM store WHERE name = 'Paris')),
	   (4, 00005, 'Paige Turner', (SELECT store_id FROM store WHERE name = 'Mimia')),
	   (5, 00006, 'Bob Frapples', (SELECT store_id FROM store WHERE name = 'Mexico City')),
	   (6, 00007, 'Walter Melon', (SELECT store_id FROM store WHERE name = 'Amsterdam')),
	   (7, 00008, 'Shonda Leer',  (SELECT store_id FROM store WHERE name = 'São Paulo'));
       
INSERT INTO invoice(invoice_id, invoice_number, date, car, customer, salesperson)
VALUES (0, 852399038, STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 0 , 1 , 3), 
	   (1, 731166526, STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 3 , 0 , 5), 
       (2, 271135104, STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 2 , 2 , 7);
       
