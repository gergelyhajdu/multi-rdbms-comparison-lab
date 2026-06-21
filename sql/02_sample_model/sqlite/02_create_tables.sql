-- SQLite
-- Sample model: customers and orders

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT NOT NULL,
    city TEXT,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date TEXT NOT NULL,
    amount NUMERIC NOT NULL,
    status TEXT NOT NULL,
    CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
