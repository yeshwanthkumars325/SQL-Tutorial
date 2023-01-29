## USING CLAUSE
USE sql_store;
## in mysql server the same column can we use ON in join class == we can use the USING clause
## same like identical as on conditon
## using key word only works when column names must be exactly same in joining tables ****

SELECT
	o.order_id,
    c.first_name
FROM orders o
JOIN customers c
	USING (customer_id);
    
    
SELECT
	o.order_id,
    c.first_name,
    sh.name AS shippername
FROM orders o
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING(shipper_id);
    
SELECT*
FROM order_items oi
JOIN order_item_notes oin
	-- ON oi.order_id = oin.order_id AND 
		-- oi.product_id= oin.product_id
        USING (order_id,product_id);
        
## Excercise

use sql_invoicing;
select*from payments;
select*from payment_methods;

SELECT  
	p.date,
    c.name AS client,
    p.amount,
    pm.name AS payment
FROM payments p
JOIN clients c USING (client_id)
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id;
        