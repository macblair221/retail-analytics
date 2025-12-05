-- Monthly Sales Trend (time series)
SELECT
    DATE_TRUNC('month', `Order Date`) AS month,
    ROUND(SUM(Sales), 2) AS monthly_sales
FROM `workspace`.`default`.`sample_superstore`
GROUP BY month
ORDER BY month;
