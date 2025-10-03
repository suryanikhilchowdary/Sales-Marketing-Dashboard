-- 03_fact_sales.sql
-- Create a fact table joining orders to products & customers
CREATE TABLE IF NOT EXISTS analytics.fact_sales AS
SELECT
  o.order_id,
  o.order_date,
  o.customer_id,
  dc.country,
  o.product_id,
  p.category,
  p.price_usd,
  o.quantity,
  (o.quantity * p.price_usd) AS revenue_usd
FROM staging.orders o
LEFT JOIN analytics.dim_customers dc ON dc.customer_id = o.customer_id
LEFT JOIN staging.products p ON p.product_id = o.product_id;
