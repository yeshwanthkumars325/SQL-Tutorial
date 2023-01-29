# UPDATING MULTIPLE ROWS


UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id= 3;

SELECT*FROM invoices;

UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id IN (3,4);


#Excercise
-- write a sql statement to
-- give any customers born between before 1950
-- 50 extra points

USE sql_store;

UPDATE customers
SET points = points+50
WHERE birth_date < '1990-01-01';

set sql_safe_updates=0;
UPDATE customers
SET points = points+50
WHERE last_name LIKE '%kumar%';


select*from customers;
