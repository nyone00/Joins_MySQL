# INNER JOIN : can help us extract this result set

SELECT *
FROM departments_dup
ORDER BY dept_no;

SELECT m.dept_no, m.emp_no, d.dept_name # result
FROM dept_manager_dup m
INNER JOIN 
departments_dup d on m.dept_no = d.dept_no # relate two columns
ORDER BY m.dept_no;

#exercise

SELECT e.emp_no, e.first_name, e.last_name, e.hire_date, d.dept_no
FROM employees e
INNER JOIN
dept_manager_dup d on e.emp_no = d.emp_no
ORDER BY e.emp_no;
