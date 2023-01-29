## CROSS JOINS

# cross join is used to combine the every record from the first table and every record from the 2nd table
# here we dont need any condition (ON)

SELECT *
FROM customers c
CROSS JOIN products p;       #---> explictiy syntax for cross join

SELECT 
	c.first_name AS customer,
    p.name AS product_name
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name;    

SELECT 
	c.first_name AS customer,
    p.name AS product_name
FROM customers c, products p          # implicit syntax for cross join here just mention the tables names here
ORDER BY c.first_name;   


##EXCERCISE

-- do cross join between shippers and products
-- using the implicit syntax
-- and then using explicit syntax

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh , products p
ORDER BY sh.name;

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh 
CROSS JOIN products p
ORDER BY sh.name;