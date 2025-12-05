-- Running total of sales over time (window function)
SELECT
    `Order Date` AS order_date,
    Sales,
    SUM(Sales) OVER (ORDER BY `Order Date`) AS running_total_sales
FROM `workspace`.`default`.`sample_superstore`
ORDER BY order_date;
