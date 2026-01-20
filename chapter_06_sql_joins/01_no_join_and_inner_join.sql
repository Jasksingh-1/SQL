-- NO JOIN
SELECT *
FROM employees;

-- INNER JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- INNER JOIN with more columns
SELECT e.emp_name, d.dept_name, d.manager
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
