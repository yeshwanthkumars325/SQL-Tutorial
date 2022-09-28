#Inner Join
use sql_store;

SELECT*
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id; 
    
SELECT order_id,first_name,last_name 
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;
    
SELECT order_id,customer_id,first_name,last_name 
FROM orders
JOIN customers 
	ON orders.customer_id = customers.customer_id;   ##--> this shows the error in the ambiguous because both tables contains customer_id
    
SELECT order_id,orders.customer_id,first_name,last_name 
FROM orders
JOIN customers                                             ## to qualifying this error we need to add the prefix of the table name
	ON orders.customer_id = customers.customer_id;

## we are repeating the table names so we can use ----> alias 
SELECT order_id,o.customer_id,first_name,last_name 
FROM orders o                     # alias name for the orders is = o and also customers =c
JOIN customers c                                          
	ON o.customer_id = c.customer_id;
