-- Topic: RIGHT JOIN
-- Description:
-- RIGHT JOIN returns all rows from the right table
-- and matching rows from the left table.
-- =========================================


-- Question 1:
-- Display all departments and employee names.
-- Departments with no employees should still appear.

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- Question 2:
-- Display department name, manager, and employee name
-- for all departments.

SELECT 
    d.dept_name,
    d.manager,
    e.emp_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- Question 3:
-- Find departments that do not have any employees assigned.
-- (RIGHT ANTI JOIN pattern)

SELECT 
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;


-- Question 4:
-- Display all departments and employee names.
-- Replace NULL employee names with 'No Employee Assigned'.

SELECT 
    d.dept_name,
    ISNULL(e.emp_name, 'No Employee Assigned') AS emp_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- Question 5:
-- Reporting-style query:
-- Always show department name and manager,
-- even if there are no employees.

SELECT 
    d.dept_name,
    d.manager,
    ISNULL(e.emp_name, 'No Employee Assigned') AS emp_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;
