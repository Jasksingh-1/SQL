Topic: CROSS JOIN
-- Description:
-- CROSS JOIN returns all possible combinations
-- of rows from both tables (Cartesian product).
-- =========================================


-- Question 1:
-- Display all employee and department combinations
SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
CROSS JOIN departments d;


-- Question 2:
-- CROSS JOIN with additional columns
SELECT 
    e.emp_name,
    e.salary,
    d.dept_name,
    d.manager
FROM employees e
CROSS JOIN departments d;


-- Question 3:
-- Filtered CROSS JOIN (employees with salary > 70000)
SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
CROSS JOIN departments d
WHERE e.salary > 70000;
