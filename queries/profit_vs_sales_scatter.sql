-- Profit vs Sales scatterplot dataset
-- Used for identifying outliers (high sales but low or negative profit)
SELECT
    Sales,
    Profit,
    Category,
    `Sub-Category` AS subcategory
FROM `workspace`.`default`.`sample_superstore`
WHERE Sales IS NOT NULL
  AND Profit IS NOT NULL;
