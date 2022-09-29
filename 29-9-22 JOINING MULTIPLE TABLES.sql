## JOINING MULTIPLE TABLES

USE sql_store;
select*from orders;
select*from order_statuses;

## combining 
-- orders ,order_statused,customers table
SELECT*
FROM orders o
JOIN customers c
	ON o.customer_id=c.customer_id
JOIN order_statuses os
	 ON o.status = os.order_status_id;
     
     
SELECT
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id=c.customer_id
JOIN order_statuses os
	 ON o.status = os.order_status_id;
     
## Excercise 
-- take sql invocing database

## connection between client -> payments -> payment methods


USE sql_invoicing;
SHOW Tables;
SELECT*FROM clients;
SELECT*FROM invoices;
SELECT*FROM payment_methods;
SELECT*FROM payments;

SELECT*
FROM clients c
JOIN payments p
	ON c.client_id = p.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
    
    
#final output
SELECT 
	p.payment_id AS sno,
	c.name,
	p.date,
    p.invoice_id,
    p.amount,
    c.name,
    pm.name AS payment_mode
FROM payments p
JOIN clients c
	ON c.client_id = p.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
    