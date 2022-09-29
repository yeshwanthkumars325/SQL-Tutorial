### COMPOUND CONDITION JOIN METHODS

USE sql_store;
SELECT*FROM customers;  # contains the unique id is customer_id
SELECT*FROM order_items;  # here order id has the duplicate entries in the table which has no unique id - so we cannot use the order_id as the unique id
						  # product_id also has duplicate entry
                          
# combination like
-- order id  has  (for order_id =2 has 1,2,4 product_id)
   -- different product_id 
		-- for each product_id has the quantity and unit price
        
## choose settings in order_items ---> u can see the composite primary key
-- that is product_id and order_id

SELECT*
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
