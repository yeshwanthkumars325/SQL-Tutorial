# UNION 

USE sql_store;

# gone generate the report if the order has current year to be status as active 
#join can combine multiple table
# in sql we can join multiple rows

SELECT *
FROM orders;

SELECT*
FROM orders 
WHERE order_date >= '2019-01-01';   # here we are hard coding the date

SELECT
	order_id,
    order_date,
    'Active' AS status
FROM orders 
WHERE order_date >= '2019-01-01' 
UNION
SELECT
	order_id,
    order_date,
    'Achived' AS status
FROM orders 
WHERE order_date < '2019-01-01';

# note that no of columns should be equal in each table other wise wise cause an error
# here name fo the column will be based on first query => first_name
SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers;

# here changing the query it will returns the value from first query 
SELECT name AS full_name
FROM shippers
UNION
SELECT first_name
FROM customers;

##########
SELECT first_name, last_name
FROM customers                 # here  returns the 2 columns
UNION
SELECT name
FROM shippers;                 # here returns the 1 column so cause an error


## EXCERCISE

SELECT  
	customer_id,
	first_name, 
    points, 
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT  
	customer_id,
	first_name, 
    points, 
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000                # here order of the value is based on the query
UNION
SELECT  
	customer_id,
	first_name, 
    points, 
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;

