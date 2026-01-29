-- Total sales by region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Monthly sales trend
SELECT month, SUM(sales_amount) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Identify underperforming products
SELECT product_name, SUM(sales_amount) AS revenue
FROM sales_data
GROUP BY product_name
HAVING SUM(sales_amount) < 50000;
