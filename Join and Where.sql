/*
JOIN + WHERE
- JOIN : used for connecting the "Employees" and "Salaries" tables
- WHERE : used to define the condition or conditions that 
			will determine which will b e the connecting points
			bewteen the two tables

*/

SELECT e.emp_no, e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.salary > 145000; 

# EXERCISE
SELECT e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE first_name = 'Margareta' and last_name = 'Markovitch';



set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');