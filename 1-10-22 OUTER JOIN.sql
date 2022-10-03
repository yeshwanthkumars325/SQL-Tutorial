## OUTER JOIN
-- INNER JOIN
-- OUTER JOIN
-- first we write inner join and convert into the outer join

SELECT*
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id;
    
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
JOIN orders o
	on c.customer_id = o.customer_id
ORDER BY c.customer_id;

# In sql we have the two joins
-- LEFT JOIN
-- RIGHT JOIN

-- LEFT JOIN - in left join it retrieves the data from the left table that is before left join condition
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	on c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT JOIN - in right join it retrieves the data from the right table that is after right join condition - selecting records from right table
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	on c.customer_id = o.customer_id      # it check whethere it is true or not
ORDER BY c.customer_id;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM orders o
RIGHT JOIN customers c
	on c.customer_id = o.customer_id     
ORDER BY c.customer_id;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM orders o
RIGHT OUTER JOIN customers c
	on c.customer_id = o.customer_id     
ORDER BY c.customer_id;


## Excercise
-- join the products table with the order items table

SELECT*
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;
    
SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;
    
