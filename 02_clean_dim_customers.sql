-- 02_clean_dim_customers.sql
-- Create a cleaned customer dimension
CREATE TABLE IF NOT EXISTS analytics.dim_customers AS
SELECT
  c.customer_id,
  CONCAT_WS(' ', c.first_name, c.last_name) AS full_name,
  LOWER(c.email) AS email_lower,
  c.signup_date,
  UPPER(c.country) AS country
FROM staging.customers c;
