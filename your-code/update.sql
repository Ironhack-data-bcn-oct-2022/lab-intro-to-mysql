USE lab_mysql;

UPDATE salespersons
SET store = 'Miami'
WHERE ID = 4;

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE ID = 0;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE ID = 1;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE ID = 2;

select * from salespersons