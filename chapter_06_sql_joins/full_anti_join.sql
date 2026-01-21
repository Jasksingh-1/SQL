Topic: FULL ANTI JOIN
-- Description:
-- FULL ANTI JOIN returns records that do NOT
-- have matching rows in either table.
-- =========================================


-- Question 1:
-- Employees without departments OR
-- departments without employees
SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL
   OR d.dept_id IS NULL;


-- Question 2:
-- FULL ANTI JOIN with NULL handling
SELECT 
    ISNULL(e.emp_name, 'No Employee') AS emp_name,
    ISNULL(d.dept_name, 'No Department') AS dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL
   OR d.dept_id IS NULL;


-- Question 3:
-- Identify the type of missing relationship
SELECT 
    CASE 
        WHEN e.emp_id IS NULL THEN 'Department without Employees'
        WHEN d.dept_id IS NULL THEN 'Employee without Department'
    END AS missing_type,
    e.emp_name,
    d.dept_name
FROM employees e
FULL JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL
   OR d.dept_id IS NULL;
