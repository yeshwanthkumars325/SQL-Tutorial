## SELF OUTER JOINS

USE sql_hr;
select*from employees;

SELECT
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e 
JOIN employees m
	ON e.reports_to = m.employee_id;       # this condition is returns only have the manager
    
    
SELECT
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e 
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;    # it returns the those who has no employees