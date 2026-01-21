Topic: RIGHT ANTI JOIN
-- Description:
-- RIGHT ANTI JOIN returns rows from the right table
-- that do NOT have matching rows in the left table.
-- =========================================


-- Question 1:
-- Find departments without employees
SELECT 
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;


-- Question 2:
-- Departments without employees with manager name
SELECT 
    d.dept_name,
    d.manager
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;


-- Question 3:
-- Label departments missing employees
SELECT 
    d.dept_name,
    'No Employees Assigned' AS status
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;
