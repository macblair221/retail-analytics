-- Top 10 Most Profitable Products
SELECT 
    `Product Name` AS product,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY product
ORDER BY total_profit DESC
LIMIT 10;
