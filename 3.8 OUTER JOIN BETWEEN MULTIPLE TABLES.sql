##OUTER JOIN BETWEEN MULTIPLE TABLES

USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o                                      # left outer join
	ON c.customer_id=o.customer_id
JOIN shippers sh                                        # inner join
	ON o.shipper_id = sh.shipper_id                     #this join condition is not sure for the some datas in the table
ORDER BY c.customer_id;

# to resolve this above problem whether shipper id is there or not there we need to use left joins

SELECT
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM customers c
LEFT JOIN orders o                                      
	ON c.customer_id=o.customer_id
LEFT JOIN shippers sh                                        
	ON o.shipper_id = sh.shipper_id                     
ORDER BY c.customer_id;

##Excercises

SELECT
	o.order_id,
    o.order_date,
    c.first_name AS customer,
    sh.name AS shippername
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN shippers sh                                            # this join it returns which contains the shipper id or name( only see orders that has shipped)
	ON o.shipper_id = sh.shipper_id;
    
    
#we need to see all the shippers use left join( all the orders whether it has shipper or not)
SELECT
	o.order_id,
    o.order_date,
    c.first_name AS customer,
    sh.name AS shippername,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh                                            
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	on o.status = os.order_status_id;                         # here column name is different from order status table and status table
    
select*from order_statuses;