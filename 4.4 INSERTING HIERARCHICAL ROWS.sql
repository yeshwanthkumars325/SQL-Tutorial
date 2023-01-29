# INSERTING HIERARCHICAL ROWS

# inserting the datas into multiple tables

#orders table - parent table
#order_items - child table

select*from customers;
select*from orders;
select*from order_items;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

INSERT INTO order_items 
VALUES (LAST_INSERT_ID(),1,1,2.95),
	   (LAST_INSERT_ID(),1,1,3.95);
# we can use the built in function

#LAST_INSERT_ID()  - function returns the AUTO_INCREMENT id of the last row that has been inserted or updated in a table.

SELECT LAST_INSERT_ID()
