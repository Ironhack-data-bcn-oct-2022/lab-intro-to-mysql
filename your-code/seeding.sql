USE lab_mysql;

INSERT INTO cars VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "Blue", "2019-01-01"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", "Red", "2019-01-01"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "White", "2018-01-01"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", "Silver", "2018-01-01"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", "Gray", "2019-01-01"),
("DAM41UDN3CHU2WVF7", "Volvo", "V60 Cross Country", "Gray", "2019-01-01");

INSERT INTO customer VALUES
(10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
(20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO salesperson VALUES
(00001,	"Petey Cruiser",	"Madrid"),
(00002,	"Anna Sthesia",	"Barcelona"),
(00003,	"Paul Molive",	"Berlin"),
(00004,	"Gail Forcewind",	"Paris"),
(00005,	"Paige Turner",	"Mimia"),
(00006,	"Bob Frapples",	"Mexico City"),
(00007,	"Walter Melon",	"Amsterdam"),
(00008,	"Shonda Leer",	"São Paulo");

INSERT INTO invoices VALUES
(852399038,	"2018-08-22",	"3K096I98581DHSNUP",	10001,	00003),
(731166526,	"2018-12-31",	"HKNDGS7CU31E9Z7JW",	20001,	00005),
(271135104,	"2019-01-22",	"RKXVNNIHLVVZOUB4M",	30001,	00007);

