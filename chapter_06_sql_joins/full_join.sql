Topic: FULL JOIN
-- Description:
-- FULL JOIN returns all rows from both tables.
-- If there is no match, NULL values are returned.
-- =========================================


-- Question 1:
-- Display all employees and all departments
SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id;


-- Question 2:
-- Display employee name, department name, and manager
SELECT 
    e.emp_name,
    d.dept_name,
    d.manager
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id;


-- Question 3:
-- FULL JOIN with NULL handling
SELECT 
    ISNULL(e.emp_name, 'No Employee') AS emp_name,
    ISNULL(d.dept_name, 'No Department') AS dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id;


-- Question 4:
-- Identify unmatched records from either table
SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL
   OR d.dept_id IS NULL;
