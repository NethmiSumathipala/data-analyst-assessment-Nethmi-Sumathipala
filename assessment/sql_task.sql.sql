USE data;

-- Create Tables
CREATE TABLE Customer(
customer_id INT(100) PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
join_date DATE);

CREATE TABLE Orders (
order_id INT(100) PRIMARY KEY,
customer_id INT(100),
order_date DATE,
total_amount DECIMAL(10, 2),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Retrieve the top 5 customers by total spending
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;

-- The number of orders placed each month in the last year
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
COUNT(order_id) AS order_count
FROM Orders
WHERE order_date >= DATE_FORMAT(NOW() - INTERVAL 1 YEAR, '%Y-%m-01')
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

-- Determine the average order value (AOV)
SELECT AVG(total_amount) AS average_order_value
FROM orders;

-- Customers who have not placed any orders in the last 6 months
SELECT c.customer_id, c.name, c.email, c.join_date
FROM Customer c
WHERE c.customer_id NOT IN (
SELECT o.customer_id FROM Orders o
WHERE o.order_date >= DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH));




