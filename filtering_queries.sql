


CREATE DATABASE AnalyticsPractice;
GO
USE AnalyticsPractice;
GO
-- =========================================================
-- Database Schema for SQL Analytics Practice
-- =========================================================

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    created_date DATE
);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- =========================================================
-- Insert Sample Data
-- =========================================================

INSERT INTO customers VALUES
(1, 'Amit Sharma', 'Delhi', '2023-01-10'),
(2, 'Neha Verma', 'Mumbai', '2023-03-15'),
(3, 'Rahul Singh', 'Bangalore', '2023-06-20'),
(4, 'Priya Mehta', 'Pune', '2024-01-05'),
(5, 'Karan Patel', 'Ahmedabad', '2024-02-12');

INSERT INTO orders VALUES
(101, 1, '2024-01-15', 1200.00),
(102, 1, '2024-02-10', 3000.00),
(103, 2, '2024-01-20', 4500.00),
(104, 2, '2024-03-05', 2000.00),
(105, 3, '2023-12-25', 1800.00),
(106, 3, '2024-02-14', 5200.00),
(107, 4, '2024-03-01', 2500.00);
SELECT * FROM customers;
SELECT * FROM orders;


SELECT * FROM customers;
SELECT * FROM orders;


-- =========================================================
-- SECTION 3: WHERE & FILTERING CONDITIONS
-- Topics Covered:
-- Comparison Operators, AND, OR, NOT,
-- BETWEEN, IN, LIKE
-- =========================================================


-- ---------------------------------------------------------
-- 1. Comparison Operators (=, >, <, >=, <=)
-- What has been done:
-- 1. Filtered rows based on numeric comparison
-- 2. Retrieved orders with amount greater than 2000
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders
WHERE order_amount > 2000;


-- ---------------------------------------------------------
-- 2. AND Operator
-- What has been done:
-- 1. Applied multiple conditions using AND
-- 2. Filtered orders placed in 2024 with amount > 2000
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_date,
    order_amount
FROM orders
WHERE order_date >= '2024-01-01'
  AND order_amount > 2000;


-- ---------------------------------------------------------
-- 3. OR Operator
-- What has been done:
-- 1. Returned orders that satisfy at least one condition
-- 2. Orders with amount > 5000 OR placed before 2024
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_date,
    order_amount
FROM orders
WHERE order_amount > 5000
   OR order_date < '2024-01-01';


-- ---------------------------------------------------------
-- 4. NOT Operator
-- What has been done:
-- 1. Excluded orders placed before 2024
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_date
FROM orders
WHERE NOT order_date < '2024-01-01';


-- ---------------------------------------------------------
-- 5. BETWEEN
-- What has been done:
-- 1. Filtered values within a range (inclusive)
-- 2. Retrieved orders between 2000 and 5000
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders
WHERE order_amount BETWEEN 2000 AND 5000;


-- ---------------------------------------------------------
-- 6. IN Operator
-- What has been done:
-- 1. Filtered rows based on a list of values
-- 2. Retrieved orders for specific customers
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders
WHERE customer_id IN (1, 3, 4);


-- ---------------------------------------------------------
-- 7. NOT IN Operator
-- What has been done:
-- 1. Excluded specific customer IDs
-- ---------------------------------------------------------

SELECT
    order_id,
    customer_id,
    order_amount
FROM orders
WHERE customer_id NOT IN (1, 3);


-- ---------------------------------------------------------
-- 8. LIKE Operator
-- What has been done:
-- 1. Performed pattern matching
-- 2. Retrieved customers whose name starts with 'A'
-- ---------------------------------------------------------

SELECT
    customer_id,
    customer_name,
    city
FROM customers
WHERE customer_name LIKE 'A%';


-- ---------------------------------------------------------
-- 9. LIKE with Wildcards
-- What has been done:
-- 1. Retrieved customers whose name contains 'ha'
-- ---------------------------------------------------------

SELECT
    customer_id,
    customer_name
FROM customers
WHERE customer_name LIKE '%ha%';

