
USE  lab_mysql;

-- It did not allow me to insert it as first as all the Primary keys are Unique, so I insert it now with a different ID and I delete it afterwards.

INSERT INTO Cars VALUES
("DAM41UDN3CHU2WVF6GGG", "Volvo", "V60 Cross Country", "2019", "Gray");

DELETE FROM Cars WHERE Vehicle_ID = "DAM41UDN3CHU2WVF6GGG";

SELECT * FROM Cars;
