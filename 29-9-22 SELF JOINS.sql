### SELF JOINS

USE sql_hr;
SELECT*FROM employees;
SELECT*FROM offices;


SELECT *
FROM employees e
JOIN employees m
	ON e.reports_to =m.employee_id;
    
SELECT 
	e.employee_id,                  
    e.first_name,
    m.first_name AS manager           # from manager table    
FROM employees e
JOIN employees m
	ON e.reports_to =m.employee_id;      # here employee_id which give to the manager 
    
#joining the table with same table using some specific column value and with alias name