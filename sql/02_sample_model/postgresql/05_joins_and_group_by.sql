-- PostgreSQL
-- JOIN and GROUP BY examples

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount,
    o.status
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_date, o.order_id;

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS order_count,
    COALESCE(SUM(o.amount), 0) AS total_amount
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.city
ORDER BY total_amount DESC;

SELECT
    o.status,
    COUNT(*) AS order_count,
    SUM(o.amount) AS total_amount,
    AVG(o.amount) AS average_amount
FROM orders o
GROUP BY o.status
ORDER BY total_amount DESC;
