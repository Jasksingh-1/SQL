-- =========================================================
-- SECTION 2: SELECT QUERY
-- Topics Covered:
-- SELECT, FROM, WHERE, ORDER BY, GROUP BY, HAVING,
-- DISTINCT, TOP, and Coding vs Execution Order
-- =========================================================


-- ---------------------------------------------------------
-- 1. SELECT & FROM
-- What has been done:
-- 1. Selected specific columns instead of using SELECT *
-- 2. Retrieved data from the orders table
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders;


-- ---------------------------------------------------------
-- 2. WHERE Clause
-- What has been done:
-- 1. Filtered rows based on a condition
-- 2. Returned only orders with amount greater than 1000
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders
WHERE order_amount > 1000;


-- ---------------------------------------------------------
-- 3. ORDER BY
-- What has been done:
-- 1. Sorted the result set based on order_amount
-- 2. Displayed highest value orders first
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders
ORDER BY order_amount DESC;


-- ---------------------------------------------------------
-- 4. DISTINCT
-- What has been done:
-- 1. Removed duplicate customer IDs
-- 2. Identified unique customers who placed orders
-- ---------------------------------------------------------

SELECT DISTINCT
    customer_id
FROM orders;


-- ---------------------------------------------------------
-- 5. GROUP BY
-- What has been done:
-- 1. Grouped rows by customer_id
-- 2. Calculated total order value per customer
-- ---------------------------------------------------------

SELECT
    customer_id,
    SUM(order_amount) AS total_order_value
FROM orders
GROUP BY customer_id;


-- ---------------------------------------------------------
-- 6. HAVING
-- What has been done:
-- 1. Applied aggregation using SUM()
-- 2. Filtered grouped results using HAVING
-- 3. Returned customers with total order value > 5000
-- ---------------------------------------------------------

SELECT
    customer_id,
    SUM(order_amount) AS total_order_value
FROM orders
GROUP BY customer_id
HAVING SUM(order_amount) > 5000;


-- ---------------------------------------------------------
-- 7. WHERE vs HAVING (Important Difference)
-- What has been done:
-- 1. WHERE filters rows BEFORE aggregation
-- 2. HAVING filters results AFTER aggregation
-- ---------------------------------------------------------

SELECT
    customer_id,
    SUM(order_amount) AS total_order_value
FROM orders
WHERE order_date >= '2024-01-01'
GROUP BY customer_id
HAVING SUM(order_amount) > 5000;


-- ---------------------------------------------------------
-- 8. TOP (SQL Server / Azure SQL)
-- What has been done:
-- 1. Limited output to top 5 highest value orders
-- ---------------------------------------------------------

SELECT TOP 5
    order_id,
    customer_id,
    order_amount
FROM orders
ORDER BY order_amount DESC;


-- ---------------------------------------------------------
-- 9. Coding Order vs Execution Order (Demonstration)
-- Coding Order:
-- SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
--
-- Execution Order:
-- FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY
-- ---------------------------------------------------------

SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
WHERE order_amount > 500
GROUP BY customer_id
HAVING COUNT(order_id) >= 2
ORDER BY total_orders DESC;
