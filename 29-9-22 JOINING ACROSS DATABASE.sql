## JOINING ACROSS DATABASE

# In this tutorial we can combine or join the table with acroos any database

#some data base have same table with same data

SELECT*
FROM order_items oi                           # here sql_inventory is the another database which have the products table as like in sql_store db
JOIN sql_inventory.products p
ON oi.product_id =p.product_id;

## in case sql inventory database does not contains the order_items table we need to prefix them with respective database name

USE sql_inventory;

SELECT*
FROM sql_store.order_items oi                          
JOIN sql_inventory.products p
ON oi.product_id =p.product_id;