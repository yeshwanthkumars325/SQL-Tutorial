## ORDER BY Clause
use sql_store;

show tables;
select*from customers order by first_name;  -- it is order by first name by ascending order
select*from customers order by first_name DESC ;  -- it is order by first name by descending order

select*from customers order by state DESC , first_name DESC;

select first_name,last_name,birth_date from customers order by birth_date;

select first_name,last_name,birth_date,10 as points
from customers   
order by points,first_name;    -- in mysql we can add the column by alias method

select first_name,last_name,birth_date,10 as points
from customers   
order by 1,2;   -- 1 indicates the first column and 2 indicates the 2nd column

select birth_date, first_name,last_name,birth_date,10 as points
from customers   
order by 1,2;

#Excercise

select*
from order_items 
where order_id=2
order by quantity*unit_price DESC;   -- order can be have the alias or arithmetic expressions

select*,quantity *unit_price as Total_price
from order_items 
where order_id=2
order by quantity*unit_price DESC;