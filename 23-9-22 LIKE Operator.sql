### LIKE Operators

select * from customers;

select*from customers where last_name like '%b%';   # it can have many values before or after of b
select*from customers where last_name like 'b%';    # % sign is used to indicate the any no of characters after b 
select*from customers where last_name like 'brush%';  
select*from customers where last_name like '%y';  # customer lastname ends with y
select*from customers where last_name like '_y';  # exactly two character long matches with these
select*from customers where last_name like '_____y';  # exactly before four character long matches with these
select*from customers where last_name like 'B____y';  # exactly btw b and y

-- % any number of characters
-- _ single character

##Excercise

-- get the customers whose
-- address contains TRAIL or AVENUE
-- phone no ends with 9

-- address contains TRAIL or AVENUE
select *from customers where address like '%trail%' or address like '%avenue%'; 

-- phone no ends with 9
select *from customers where phone like '%9'; 

select *from customers where phone not like '%9';  # no customers phone ends with 9