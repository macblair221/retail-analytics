-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Superstore Sales & Profit Analysis Using SQL

-- COMMAND ----------

/*superstore data from kaggle*/
select * from `workspace`.`default`.`sample_superstore` limit 10;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Total Sales and Profit

-- COMMAND ----------

SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`;

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Top 10 Most Profitable transactions

-- COMMAND ----------

SELECT 
    `Product Name`,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;


-- COMMAND ----------

SELECT 
    Region,
    ROUND(SUM(Profit), 2) AS total_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY Region
ORDER BY total_profit DESC;

-- COMMAND ----------

SELECT 
    DATE_TRUNC('month', `Order Date`) AS month,
    ROUND(SUM(Sales), 2) AS monthly_sales
FROM `workspace`.`default`.`sample_superstore`
GROUP BY month
ORDER BY month;


-- COMMAND ----------

SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS segment_sales,
    ROUND(SUM(Profit), 2) AS segment_profit
FROM `workspace`.`default`.`sample_superstore`
GROUP BY Segment
ORDER BY segment_profit DESC;

-- COMMAND ----------

SELECT
  Category,
  SUM(Sales) AS total_sales
FROM `workspace`.`default`.`sample_superstore`
GROUP BY Category
ORDER BY total_sales DESC;


-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Monthly Sales

-- COMMAND ----------

SELECT 
    DATE_TRUNC('month', `Order Date`) AS month,
    SUM(Sales) AS monthly_sales
FROM `workspace`.`default`.`sample_superstore`
GROUP BY month
ORDER BY month;


-- COMMAND ----------

