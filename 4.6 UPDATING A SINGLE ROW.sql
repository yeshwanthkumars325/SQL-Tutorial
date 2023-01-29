# UPDATING SINGLE ROW

USE sql_invoicing;

select*from invoices;

UPDATE invoices
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id =1;

UPDATE invoices
SET payment_total = 0, payment_date = NULL
WHERE invoice_id =1;

UPDATE invoices
SET payment_total = DEFAULT, payment_date = NULL         # also we can use the default value
WHERE invoice_id =1;

UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE invoice_id =3;

select*from invoices;