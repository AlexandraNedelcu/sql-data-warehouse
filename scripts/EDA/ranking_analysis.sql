/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/

-- Which 5 products generate the highest revenue?
-- Method 1
SELECT TOP (5)
    SUM(fs.sales_amount) AS total_sales,
    dp.product_name
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
ON fs.product_key = dp.product_key
GROUP BY dp.product_name
ORDER BY total_sales DESC
-- Method 2
SELECT * 
FROM (SELECT
    dp.product_name,
    SUM(fs.sales_amount) AS total_sales,
    ROW_NUMBER() OVER (ORDER BY SUM(fs.sales_amount) DESC) AS rank
    FROM gold.fact_sales fs
    LEFT JOIN gold.dim_products dp
    ON fs.product_key = dp.product_key
    GROUP BY dp.product_name
)t WHERE rank <= 5

-- What are the 5 worst-performing products in terms of sales?
SELECT TOP (5)
    SUM(fs.sales_amount) AS total_sales,
    dp.product_name
FROM gold.fact_sales fs
LEFT JOIN gold.dim_products dp
ON fs.product_key = dp.product_key
GROUP BY dp.product_name
ORDER BY total_sales

-- Find the top 10 customers who have generated the highest revenue
SELECT TOP (10)
    dc.first_name,
    dc.last_name,
    SUM(fs.sales_amount) AS total_sales
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
ON fs.customer_key = dc.customer_key
GROUP BY
    dc.customer_key,
    dc.first_name,
    dc.last_name
ORDER BY total_sales DESC

-- Top 3 customers with the fewest orders placed
SELECT TOP (3)
    dc.first_name,
    dc.last_name,
    COUNT(DISTINCT fs.order_number) AS total_orders
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
ON fs.customer_key = dc.customer_key
GROUP BY
dc.customer_key,
dc.first_name,
dc.last_name
ORDER BY total_orders
