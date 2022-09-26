## IS NULL Opertors

select*
from customers 
where phone IS NULL;

select*
from customers 
where phone IS NOT NULL;

##Excercise
-- get the oders that are not shipped

Select*from orders;

select*from orders where shipper_id is null;