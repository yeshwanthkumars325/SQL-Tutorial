## THE BETWEEN OPERATOR

select * from customers where points >= 1000 and points <= 3000;

# to re use the above query using the between 

select*from customers where points BETWEEN 1000 and 3000;

## Excercise 

-- return the customers born
-- between 1/1/1990 to 1/1/2000

select *from customers where birth_date between '1990-01-01' and '2000-01-01';