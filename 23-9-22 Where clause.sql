#Where clause

use sql_store;
select*from customers;

select*
from customers
where points > 3000;

# comparison operator ==> >,<,>=,<=,=,(!=, <>)

select*
from customers
where state ="Va";

SELECT *
FROM customers WHERE state <> 'Va';
    
select*from customers where birth_date > '1990-01-01';

##Excersise get the orders placed this year

select*from orders;
select*from orders where order_date >= '2019-01-01'; 