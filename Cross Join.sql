/*
CROSS JOIN
- will take the values from a certain table and connect them
with all the values from the tables we want to join it with. 
- useful when the tables in a database are not well connected
*/

SELECT dm.*, d.*
FROM dept_manager dm
CROSS JOIN departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
FROM dept_manager dm, departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT dm.*, d.*
FROM dept_manager dm
JOIN departments d
ORDER BY dm.emp_no, d.dept_no;

SELECT e.*, d.*
FROM departments d
CROSS JOIN dept_manager dm 
JOIN employees e ON dm.emp_no = e.emp_no
WHERE d.dept_no <> dm.dept_no
ORDER BY dm.emp_no, d.dept_no;

# EXERCISE
SELECT dm.*, d.*
FROM departments d
CROSS JOIN dept_manager dm
WHERE d.dept_no = 'd009';

SELECT e.*, d.*
FROM employees e
CROSS JOIN departments d
WHERE e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name;
