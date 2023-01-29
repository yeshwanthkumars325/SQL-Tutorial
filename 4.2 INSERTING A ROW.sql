# INSERTING A ROW

desc customers;
INSERT INTO customers
VALUES (DEFAULT, 
	'yeshwanth',
	'kumar',
	'1999-05-31',
    NULL,
    'address',
    'city',
    'ca',
    DEFAULT);

SELECT*FROM customers;

# we can also insert the required columns too
INSERT INTO customers (first_name,
	last_name,
    birth_date,
    address,
    city,
    state)
VALUES ( 
	'yeshwanth',
	'kumar_1',
	'1999-05-31',
    'address',
    'city',
    'ca');
SELECT*FROM customers;

# we can also change the orders of the column but value should be equivalent to repective column

INSERT INTO customers (first_name,
    birth_date,
    address,
    city,
    state,
    last_name)
VALUES ( 
	'yeshwanth',
	'1999-05-31',
    'address',
    'city',
    'ca',
    'kumar_col_change');

SELECT*FROM customers;