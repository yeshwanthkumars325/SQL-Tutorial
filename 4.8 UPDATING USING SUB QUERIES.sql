# UPDATING USING SUB QUERIES

# here sub query is the select statement 
# here we using the select statement as the sub query

use sql_invoicing;

select*from clients;

UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id= 3;

# sub query
SELECT client_id
FROM clients
WHERE name = 'Myworks';


## Main QUERY
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id= 
				(SELECT client_id
				FROM clients
				WHERE name = 'Myworks');
                
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id IN 
				(SELECT client_id
				FROM clients
				WHERE state IN ('CA','NY'));         # here sub query returns more than one value so replace = to IN
                
select *from invoices;
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE payment_date IS NULL;
SELECT *
FROM invoices
WHERE payment_date IS NULL  ;

#Excercise
USE sql_store;
select*from orders;
select*from customers;

# look at the orders table
# in orders table some of the comment are empty i want to update the comments from using the customers table where the points is > 3000

SELECT customer_id 
FROM customers 
WHERE points > 3000;


UPDATE orders
SET 
	comments = 'GOLD customer'
WHERE customer_id IN 
		(SELECT customer_id 
		FROM customers 
		WHERE points > 3000);
        
select*from orders;


