## NATURAL JOINS

# we cant use most because it will produce some time unexpected results
# in natural join we dont need to mention column name explicitly they take the exactly matching column value

USE sql_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o 
NATURAL JOIN customers c
