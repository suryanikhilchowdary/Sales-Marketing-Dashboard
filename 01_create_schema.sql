-- 01_create_schema.sql
-- Create a simple staging & analytics schema
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS analytics;

-- Create staging tables (adjust types to your DB)
CREATE TABLE IF NOT EXISTS staging.customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(255),
  signup_date DATE,
  country VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS staging.products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(200),
  category VARCHAR(100),
  price_usd DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS staging.orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  product_id INT,
  quantity INT
);
