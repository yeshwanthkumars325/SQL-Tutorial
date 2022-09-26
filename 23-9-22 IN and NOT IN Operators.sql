## IN and NOT IN Operators

select*from customers;
select *from customers where state ='VA' or 'GA' or 'FL';
#we cannot use above like this  because of boolean exp
select *from customers where state ='VA' or state ='GA' or state = 'FL';

# instead of using this combinig condition we can use the IN operator

select*from customers where state in ('VA','GA','FL');
select*from customers where state NOT IN ('VA','GA','FL');

## Excercise 
-- return the products with
-- quantity in stock equal to 49,38,72

select*from products;

select*from products where quantity_in_stock in (49,38,72);
