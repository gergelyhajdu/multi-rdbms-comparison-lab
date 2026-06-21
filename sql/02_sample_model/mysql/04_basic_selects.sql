-- MySQL
-- Basic SELECT examples

SELECT *
FROM customers
ORDER BY customer_id;

SELECT *
FROM orders
ORDER BY order_date, order_id;

SELECT customer_id, customer_name, city
FROM customers
WHERE city = 'Budapest'
ORDER BY customer_name;

SELECT order_id, customer_id, order_date, amount, status
FROM orders
WHERE amount >= 10000
ORDER BY amount DESC;

SELECT order_id, order_date, amount
FROM orders
WHERE order_date >= '2026-06-21'
ORDER BY order_date;

SELECT customer_id, customer_name, created_at
FROM customers
ORDER BY customer_id
LIMIT 3;
