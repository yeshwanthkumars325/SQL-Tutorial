## LIMIT Clause
-- limit clause always should be comes at last

select*from customers LIMIT 300;

-- page 1: 1 to 3
-- page 2: 4-6
-- page 3: 7-9
select*from customers LIMIT 6, 3;  -- 6 is offset it skips the first 6records in the table and then pick 3 records

## Excercise
-- get the top three loyal customers

select*
from customers
order by points desc
LIMIT 3;

-- order of limit --->>>> select->from->where->order by -> limit
