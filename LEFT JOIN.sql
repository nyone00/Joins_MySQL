# LEFT JOIN

DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';


INSERT INTO dept_manager_dup
VALUES ('110228','d003','1992-03-21','9999-01-01');

INSERT INTO departments_dup
VALUES ('d009','Customer Service');

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN # = LEFT outer join
    departments_dup d ON m.dept_no = d.dept_no
WHERE dept_name IS NULL
ORDER BY d.dept_no;

# Exercise

SELECT e.emp_no, e.first_name, e.last_name, m.dept_no, m.from_date
FROM employees e
LEFT JOIN dept_manager m on e.emp_no = m.emp_no
WHERE e.last_name = 'Markovitch'
ORDER BY m.dept_no DESC, e.emp_no;
