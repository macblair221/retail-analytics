-- Sales and Profit grouped by Customer Segment
SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY Segment
ORDER BY total_profit DESC;
