## INSERTING MULTIPLE ROWS

SELECT*FROM shippers;

desc shippers;

INSERT INTO shippers (name)
VALUES ('shipper1'),
	('shipper2'),
    ('shipper3');
    

#Excercise

-- insert three rows in products table

select*from products;
desc products;

INSERT INTO products (name, quantity_in_stock,unit_price)
VALUES  ('product1', 10,1.95),
('product2', 10,1.95),
('product3', 10,1.95);

