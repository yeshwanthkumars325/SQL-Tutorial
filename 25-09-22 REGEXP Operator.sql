## REGEXP Operators
use sql_store;
select*from customers where last_name like '%field%';

## REGEXP is more powerful for searching the string

select*from customers where last_name REGEXP 'field';

## special features
# ^ indicates the begining of the string
select*from customers where last_name REGEXP '^field';

--  $ indicates the end of the string
select*from customers where last_name REGEXP 'field$';

--  | indicates the multiple string
select*from customers where last_name REGEXP 'field|mac|rose';
select*from customers where last_name REGEXP '^field|mac|rose';
select*from customers where last_name REGEXP 'field$|mac|rose';
select*from customers where last_name REGEXP '[gim]e';   # customer name matches with in square brackets (before)
--  ge  like this it matches and search in the last name
-- ie
-- me
select*from customers where last_name REGEXP 'e[fmq]';   # customer name matches with in square brackets (after)
#we can supply the change of characters before the 
select*from customers where last_name REGEXP '[a-h]e';  # regex for finding the character from a to h

#NOtes
-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-h]

## Excercise
-- Get the customer namw whose
--  first names are ELKA or AMBUR
--  last name ends with EY or ON
-- last name starts with MY or contains SE
-- last name contains B followed by R or U

select *from customers where first_name REGEXP 'ELKA|AMBUR'; --  first names are ELKA or AMBUR
select*from customers where last_name REGEXP 'EY$|ON$'; --  last name ends with EY or ON
select*from customers where last_name REGEXP '^my|se'; --  last name ends with EY or ON
select*from customers where last_name REGEXP 'b[r|u]'; -- last name contains B followed by R or U
select*from customers where last_name REGEXP 'br|bu'; -- last name contains B followed by R or U