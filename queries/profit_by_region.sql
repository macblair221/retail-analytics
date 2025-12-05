-- Total Profit grouped by Region
SELECT
    Region,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY Region
ORDER BY total_profit DESC;
