-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     name VARCHAR(100),
--     referred_by INT -- Optional for self join task
-- );

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     branch_id INT,
--     order_date DATE,
--     total_amount DECIMAL(10, 2),
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );

-- CREATE TABLE returns (
--     return_id INT PRIMARY KEY,
--     order_id INT,
--     return_date DATE,
--     refund_amount DECIMAL(10,2),
--     FOREIGN KEY (order_id) REFERENCES orders(order_id)
-- );

-- CREATE TABLE branches (
--     branch_id INT PRIMARY KEY,
--     branch_name VARCHAR(100)
-- );

-- Insert sample data into Branch table
INSERT INTO branches (branch_id, branch_name) VALUES (1, 'Toshkent Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (2, 'Samarqand Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (3, 'Buxoro Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (4, 'Andijon Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (5, 'Namangan Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (6, 'Navoiy Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (7, 'Xorazm Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (8, 'Farg‘ona Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (9, 'Qashqadaryo Filiali');
INSERT INTO branches (branch_id, branch_name) VALUES (10, 'Surxondaryo Filiali');

-- Insert sample data into Customers table
INSERT INTO customers (customer_id, name, referred_by) VALUES (1, 'Ali Karimov', NULL);
INSERT INTO customers (customer_id, name, referred_by) VALUES (2, 'Dilnoza Rasulova', 1);
INSERT INTO customers (customer_id, name, referred_by) VALUES (3, 'Javohir Bekmurodov', NULL);
INSERT INTO customers (customer_id, name, referred_by) VALUES (4, 'Nodira Sodiqova', 3);
INSERT INTO customers (customer_id, name, referred_by) VALUES (5, 'Bahodir Ergashev', 1);
INSERT INTO customers (customer_id, name, referred_by) VALUES (6, 'Olim Mirzayev', 2);
INSERT INTO customers (customer_id, name, referred_by) VALUES (7, 'Gulbahor Xudoyberdiyeva', NULL);
INSERT INTO customers (customer_id, name, referred_by) VALUES (8, 'Rustam Sobirov', 6);
INSERT INTO customers (customer_id, name, referred_by) VALUES (9, 'Malika Tursunova', 4);
INSERT INTO customers (customer_id, name, referred_by) VALUES (10, 'Sherzod Qodirov', 2);
INSERT INTO customers (customer_id, name, referred_by) VALUES (11, 'Hakimbek Boboyev', 2);
INSERT INTO customers (customer_id, name, referred_by) VALUES (12, 'Sardor Sadullayev', 11);

-- Insert sample data into Orders table

INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (101, 1, 1, DATE '2025-01-10', 220.50);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (102, 2, 2, DATE '2025-01-15', 75.00);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (103, 3, 3, DATE '2025-02-01', 200.00);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (104, 4, 4, DATE '2025-02-05', 50.75);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (105, 5, 5, DATE '2025-02-10', 99.99);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (106, 6, 6, DATE '2025-02-15', 180.00);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (107, 7, 7, DATE '2025-02-20', 150.00);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (108, 8, 8, DATE '2025-02-25', 220.25);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (109, 9, 9, DATE '2025-03-01', 310.00);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (110, 10, 10, DATE '2025-03-05', 88.88);

INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (111, 8, 8, DATE '2025-02-25', 220.25);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (112, 1, 9, DATE '2025-03-01', 310.00);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (113, 11, 10, DATE '2025-03-05', 880.88);
INSERT INTO orders (order_id, customer_id, branch_id, order_date, total_amount) VALUES (115, 10, 10, DATE '2024-03-05', 235.5);

-- Insert sample data into Returns table

INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (201, 102, DATE '2025-01-20', 75.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (202, 104, DATE '2025-02-07', 50.75);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (203, 106, DATE '2025-02-18', 60.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (204, 108, DATE '2025-02-28', 100.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (205, 109, DATE '2025-03-03', 150.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (206, 110, DATE '2025-03-06', 88.88);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (207, 101, DATE '2025-01-12', 20.50);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (208, 105, DATE '2025-02-12', 30.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (209, 103, DATE '2025-02-03', 50.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (210, 107, DATE '2025-02-22', 75.00);
INSERT INTO returns (return_id, order_id, return_date, refund_amount) VALUES (211, 115, DATE '2025-02-22', 75.00);

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM returns;
SELECT * FROM branches;

-- 🔗 JOIN TASKS

-- 1. Retrieve all customers who placed orders with order date and total amount

SELECT c.name, o.order_date, o.total_amount
FROM customers c, orders o
WHERE c.customer_id = o.customer_id;

-- 2. List all customers and their orders (include customers with no orders)

SELECT c.name AS customer_name, o.order_id, o.order_date, o.total_amount
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id = o.customer_id
   OR o.order_id IS NULL;

-- 3. Get all orders and include customer names (even if some are not linked)

SELECT o.order_id, o.order_date, o.total_amount, c.name AS customer_name
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id;

-- 4. Get customer names, branch names, and order totals

SELECT c.name AS customer_name, b.branch_name, COUNT(o.total_amount) AS order_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN branches b ON o.branch_id = b.branch_id
GROUP BY c.name, b.branch_name;

-- 5. Self join customers to find who referred whom
SELECT 
    c1.name AS customer_name,
    c2.name AS referred_by
FROM 
    customers c1
LEFT JOIN 
    customers c2 ON c1.referred_by = c2.customer_id;


-- 6. Customers with total orders over $500

SELECT c.name AS customer_name, SUM(o.total_amount) AS total_orders_balance 
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.total_amount) > 500;   

-- 7. Orders with customer and branch names using aliases

SELECT c.name AS customer_name, b.branch_name, o.order_id, o.order_date, o.total_amount
FROM orders o 
LEFT JOIN customers c ON c.customer_id = o.customer_id 
LEFT JOIN branches b ON b.branch_id = o.branch_id;

-- 8. Orders from a branch sorted by amount descending

SELECT o.order_id, o.order_date, o.total_amount, b.branch_name
FROM orders o, branches b
WHERE o.branch_id = b.branch_id
ORDER BY o.total_amount DESC;

-- 9. Orders and returns for a given month

SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    r.return_id,
    r.return_date,
    r.refund_amount
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id
WHERE EXTRACT(MONTH FROM o.order_date) = 2
  AND EXTRACT(YEAR FROM o.order_date) = 2025
ORDER BY r.RETURN_DATE;

--10. Number of orders per branch using JOIN + COUNT

SELECT 
    b.branch_name,
    COUNT(o.order_id) AS order_count 
FROM branches b
JOIN orders o ON b.branch_id = o.branch_id
GROUP BY b.branch_name;

-- 📊 GROUP BY TASKS

-- 1. Total number of orders per customer
SELECT c.name AS customer_name, COUNT(o.order_id) AS total_orders
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 2. Total sales per branch
SELECT b.branch_name, SUM(o.total_amount) AS total_sales
FROM branches b 
LEFT JOIN orders o ON b.branch_id = o.branch_id
GROUP BY b.branch_name;

-- 3. Average order amount per customer
SELECT c.name AS customer_name, AVG(o.total_amount) AS average_order_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 4. Branches with more than 5 orders

SELECT b.branch_name, COUNT(o.order_id) AS order_count
FROM branches b
JOIN orders o ON b.branch_id = o.branch_id
GROUP BY b.branch_name
HAVING COUNT(o.order_id) > 1;

-- 5. Orders count per month

SELECT 
    EXTRACT(YEAR FROM o.order_date) AS order_year,
    EXTRACT(MONTH FROM o.order_date) AS order_month,
    COUNT(o.order_id) AS total_orders
FROM orders o
GROUP BY 
    EXTRACT(YEAR FROM o.order_date), 
    EXTRACT(MONTH FROM o.order_date) 
ORDER BY
    order_year, 
    order_month;

-- 6. Total sales per customer per branch
SELECT 
    c.name AS customer_name, 
    b.branch_name, 
    SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN branches b ON o.branch_id = b.branch_id
GROUP BY 
    c.name, 
    b.branch_name;

-- 7. Min/max order amount per branch

SELECT 
    b.branch_name, 
    MIN(o.total_amount) AS min_order_amount, 
    MAX(o.total_amount) AS max_order_amount
FROM branches b
JOIN orders o ON b.branch_id = o.branch_id
GROUP BY 
    b.branch_name;


-- 8. Total revenue per branch (with JOIN)
SELECT 
    b.branch_name, 
    SUM(o.total_amount) AS total_revenue
FROM branches b
JOIN orders o ON b.branch_id = o.branch_id
GROUP BY 
    b.branch_name;

-- 9. Daily orders per branch

SELECT 
    b.branch_name, 
    o.order_date, 
    COUNT(o.order_id) AS daily_order_count
FROM branches b
JOIN orders o ON b.branch_id = o.branch_id
GROUP BY 
    b.branch_name, 
    o.order_date;

--10. Count high-value orders (> $1000) per branch using CASE
SELECT 
    b.branch_name, 
    COUNT(CASE WHEN o.total_amount > 500 THEN o.order_id END) AS high_value_order_count
FROM branches b
JOIN orders o ON b.branch_id = o.branch_id
GROUP BY 
    b.branch_name;

-- 🔀 UNION TASKS

-- 1. Combine customers who placed orders and who made returns
SELECT c.name AS customer_name, 'Placed Order' AS activity_type
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name AS customer_name, 'Made Return' AS activity_type
FROM customers c
JOIN returns r ON c.customer_id = (SELECT o.customer_id FROM orders o WHERE o.order_id = r.order_id)
UNION
SELECT c.name AS customer_name, 'No Activity' AS activity_type
FROM customers c
WHERE c.customer_id NOT IN (SELECT o.customer_id FROM orders o)
  AND c.customer_id NOT IN (SELECT r.order_id FROM returns r)
ORDER BY customer_name;

-- 2. Same as above but include duplicates (UNION ALL)

SELECT c.name AS customer_name, 'Placed Order' AS activity_type
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
UNION ALL
SELECT c.name AS customer_name, 'Made Return' AS activity_type
FROM customers c
JOIN returns r ON c.customer_id = (SELECT o.customer_id FROM orders o WHERE o.order_id = r.order_id)
UNION ALL
SELECT c.name AS customer_name, 'No Activity' AS activity_type
FROM customers c
WHERE c.customer_id NOT IN (SELECT o.customer_id FROM orders o)
  AND c.customer_id NOT IN (SELECT r.order_id FROM returns r)
ORDER BY customer_name;


-- 3. Customers who ordered in 2024 and returned in 2025

SELECT 
    c.name AS customer_name, 
    o.order_date AS order_date
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 2024

UNION ALL

SELECT 
    c.name AS customer_name, 
    r.return_date AS order_date
FROM 
    customers c
JOIN 
    returns r ON c.customer_id = (
        SELECT o.customer_id 
        FROM orders o 
        WHERE o.order_id = r.return_id
    )
WHERE 
    EXTRACT(YEAR FROM r.return_date) = 2025;


-- 4. Combine "Active" and "Inactive" customers with label

SELECT 
    c.name AS customer_name, 
    'Active' AS status
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
UNION ALL
SELECT 
    c.name AS customer_name, 
    'Inactive' AS status
FROM
    customers c
WHERE 
    c.customer_id NOT IN (SELECT o.customer_id FROM orders o);


-- 5. Combine and sort all transaction dates (orders + returns)

SELECT 
    o.order_date AS transaction_date, 
    'Order' AS transaction_type
FROM
    orders o
UNION ALL
SELECT 
    r.return_date AS transaction_date, 
    'Return' AS transaction_type
FROM
    returns r
ORDER BY
    transaction_date;


-- 6. Combine branch IDs from orders and returns
SELECT 
    o.branch_id, 
    'Order' AS transaction_type
FROM
    orders o
UNION
SELECT 
    o.branch_id, 
    'Return' AS transaction_type
FROM
    returns r, orders o WHERE r.order_id = o.order_id
ORDER BY
    branch_id;

-- 7. Total order and refund amount with label column
SELECT 
    o.order_id, 
    o.total_amount AS amount, 
    'Order' AS transaction_type
FROM
    orders o
UNION ALL
SELECT 
    r.return_id, 
    r.refund_amount AS amount, 
    'Refund' AS transaction_type
FROM
    returns r
ORDER BY
    amount DESC;
