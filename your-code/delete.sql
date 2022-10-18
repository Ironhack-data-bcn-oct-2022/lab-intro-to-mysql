USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;

DELETE c1 FROM car c1
INNER JOIN car c2 
WHERE 
    c1.car_id > c2.car_id AND 
    c1.vin = c2.vin;
    
SELECT * FROM car;