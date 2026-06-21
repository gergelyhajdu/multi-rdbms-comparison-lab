-- Microsoft SQL Server
-- Sample model: customers and orders

CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NULL,
    created_at DATETIME2 DEFAULT SYSDATETIME() NOT NULL
);

CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_orders_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
