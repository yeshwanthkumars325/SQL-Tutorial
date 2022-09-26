## AND, OR, NOT Operators

#AND --> both condition should be true

select *from customers where birth_date > '1990-01-01' and points > 1000;

#OR  --> any of these conditions should be true

select*from customers where birth_date > '1990-01-01' or points > 3000;
select*from customers where birth_date > '1990-01-01' or points > 1000 and state = 'Va';   # in this multiple condition we need to be aware of order of operations

### Order of opertions -->  * /  +  -
## in logical operator   --> AND is always evaluated first and then OR 

select*from customers where birth_date > '1990-01-01' or (points > 1000 and state = 'Va');

## for NOT we need specify with () paranthesis

select*from customers where not (birth_date > '1990-01-01' or points > 1000);
# to simplyfy this to remove the not operator is  > -> <= , OR -> AND , > -> <
select*from customers where birth_date <= '1990-01-01' and  points < 1000;


### Excercise

-- from the order_items table , get the item
-- for order #6
-- where the total price is greater than 30 

select * from order_items ;

select*from order_items where order_id = 6 and unit_price * quantity > 30 ;