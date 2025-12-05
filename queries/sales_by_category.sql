-- Total Sales grouped by Product Category
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS total_sales
FROM `workspace`.`default`.`sample_superstore`
GROUP BY Category
ORDER BY total_sales DESC;
