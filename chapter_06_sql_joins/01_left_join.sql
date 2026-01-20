-- LEFT JOIN
-- Show all employees, even if they are not assigned to a department

SELECT 
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- LEFT JOIN with NULL handling
-- Replace NULL department names with a meaningful value

SELECT 
    e.emp_name,
    ISNULL(d.dept_name, 'Not Assigned') AS dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
