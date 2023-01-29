# CREATING COPY OF TABLE

## how to copy the data from one table to another table

CREATE TABLE orders_archided AS SELECT * FROM orders;    # here creating the table with orders table column name

select*from orders_archided;
select*from orders;

SELECT * 
FROM orders
WHERE order_date < '2019-01-01';

INSERT INTO orders_archided SELECT * 
FROM orders
WHERE order_date < '2019-01-01';


#EXCERCISE
use sql_invoicing;

SELECT 
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL;

desc invoices;

CREATE TABLE invoices_archived AS
SELECT
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL;

SELECT *FROM invoices_archived;

