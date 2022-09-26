use sql_store;

select*from customers;

SELECT*
FROM customers 
where customer_id=1
order by first_name;

SELECT*
FROM customers 
-- where customer_id=1
order by first_name;

SELECT 1,2;
-- FROM customers 
-- where customer_id=1
-- order by first_name;

SELECT first_name, last_name,points,points+10
FROM customers;

SELECT 
first_name, 
last_name,
points,
points*10+100
FROM customers;

SELECT 
first_name, 
last_name,
points,
(points+10)*100 as 'Discount'
FROM customers;

select distinct state 
from customers;

#Excersise -1

use sql_inventory;

select*from products;

select 
name,
unit_price,
(unit_price*1.1) as 'new price'
from products;