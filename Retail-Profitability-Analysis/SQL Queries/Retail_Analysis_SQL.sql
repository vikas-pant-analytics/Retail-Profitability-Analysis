-- Retail Profitability & Discount Analysis
-- PostgreSQL Project


-- 1. Category-wise Sales and Profit Analysis

SELECT 
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY category
ORDER BY total_profit DESC;


-- 2. Loss-Making Sub-Categories

SELECT 
    sub_category,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;


-- 3. Discount Impact on Profit

SELECT 
    discount,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY discount
ORDER BY discount;


-- 4. Regional Profitability Analysis

SELECT 
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY region
ORDER BY total_profit DESC;


-- 5. Top 5 Loss-Making Products

SELECT 
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 5;


-- 6. Segment-wise Profit Analysis

SELECT 
    segment,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY segment
ORDER BY total_profit DESC;