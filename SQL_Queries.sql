SELECT *
FROM retail_sales
LIMIT 5;

SELECT COUNT(*)
FROM retail_sales;

SELECT DISTINCT region
FROM retail_sales;

SELECT COUNT(DISTINCT region)
FROM retail_sales;

SELECT DISTINCT category
FROM retail_sales;

SELECT DISTINCT brand
FROM retail_sales;

SELECT region,
       SUM(sales_amount) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC;

SELECT customer_segment,
       SUM(sales_amount) AS revenue
FROM retail_sales
GROUP BY customer_segment
ORDER BY revenue DESC;

SELECT category,
       SUM(quantity) AS total_quantity
FROM retail_sales
GROUP BY category
ORDER BY total_quantity DESC;

SELECT brand,
       AVG(discount_pct) AS avg_discount
FROM retail_sales
GROUP BY brand
ORDER BY avg_discount DESC;

SELECT payment_method,
       SUM(sales_amount) AS total_revenue
FROM retail_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;

SELECT region,
       AVG(sales_amount) AS avg_sales
FROM retail_sales
GROUP BY region
ORDER BY avg_sales DESC;