# DELETING ROW
use sql_invoicing;

DELETE FROM  invoices      # will delete all the data without mentioning where clause
WHERE invoice_id = 1;


SELECT*
FROM clients 
WHERE NAME = 'Myworks';


DELETE FROM  invoices
WHERE client_id = (
		SELECT*
		FROM clients 
		WHERE NAME = 'Myworks'
        );