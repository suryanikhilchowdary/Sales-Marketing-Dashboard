# Sales & Marketing Dashboard (Starter Template)

A lightweight starter for building a **Sales & Marketing** analytics stack: simple CSVs → SQL transforms → dashboard.

## Flow
1. Load CSVs into your DB (MySQL/Postgres/BigQuery/Snowflake).
2. Run `sql/01_create_schema.sql` then `sql/02_clean_dim_customers.sql` and `sql/03_fact_sales.sql`.
3. Connect Tableau / Power BI to `analytics.fact_sales` and build visuals (Revenue, AOV, Conversion, CAC proxy).

## KPIs
- **Revenue** (daily/weekly/monthly)
- **Orders** & **AOV** (avg order value)
- **New vs Returning Customers**
- **Simple Funnel**: sessions → orders (if you load web sessions later)

## Repo Structure
```
sales-marketing-dashboard/
  data/
    customers.csv
    products.csv
    orders.csv
  sql/
    01_create_schema.sql
    02_clean_dim_customers.sql
    03_fact_sales.sql
  README.md
```

## Notes
- The CSVs are tiny sample data to test your pipeline.
- Replace with your real data when ready.
