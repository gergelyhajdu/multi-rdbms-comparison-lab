-- Oracle Database
-- Insert sample data

INSERT INTO customers (customer_name, city)
VALUES ('Teszt Elek', 'Budapest');

INSERT INTO customers (customer_name, city)
VALUES ('Minta Anna', 'Debrecen');

INSERT INTO customers (customer_name, city)
VALUES ('Data Gergely', 'Budapest');

INSERT INTO customers (customer_name, city)
VALUES ('SQL Bela', 'Szeged');

INSERT INTO orders (customer_id, order_date, amount, status)
VALUES (1, DATE '2026-06-20', 12500.00, 'PAID');

INSERT INTO orders (customer_id, order_date, amount, status)
VALUES (1, DATE '2026-06-21', 8200.00, 'PAID');

INSERT INTO orders (customer_id, order_date, amount, status)
VALUES (2, DATE '2026-06-21', 15900.00, 'NEW');

INSERT INTO orders (customer_id, order_date, amount, status)
VALUES (3, DATE '2026-06-22', 34000.00, 'PAID');

INSERT INTO orders (customer_id, order_date, amount, status)
VALUES (3, DATE '2026-06-23', 4900.00, 'CANCELLED');

COMMIT;
