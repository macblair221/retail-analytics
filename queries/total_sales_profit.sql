-- Total Sales and Total Profit across the entire dataset
SELECT 
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`;
