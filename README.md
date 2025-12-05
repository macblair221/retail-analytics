# Retail Sales Analytics

This project explores whether retail performance variables—such as product category, region, customer segment, and discount level—can explain business outcomes, measured using **Sales** and **Profit**.

The analysis uses the Databricks dataset *Sample Superstore* and implements a full SQL analytics workflow including data exploration, visualization, and insight reporting.

---

## Project Objectives
- Understand how category, region, and discount metrics relate to retail profitability and revenue.
- Perform exploratory data analysis (EDA) using bar charts, line charts, and scatterplots built from SQL query results.
- Build and evaluate multiple SQL analyses, including:
  - Sales by Category  
  - Monthly Sales Trend  
  - Profit by Region  
  - Top Profitable Products  
  - Sales vs Profit Outlier Detection  
  - Discount Impact on Profit
- Use Databricks SQL Warehouse to run queries and generate visualizations.
- Summarize key patterns using SUM, AVG, GROUP BY, ORDER BY, CASE expressions, and date functions.

---

## Findings
- **Technology generated the highest total sales**, followed by Furniture and Office Supplies.
- Monthly sales showed **clear time-based patterns**, suggesting seasonality and demand cycles.
- The **West region produced the strongest profitability** compared with other regions.
- Sales vs profit analysis revealed **high-sales but low or negative profit outliers**, indicating pricing or discounting issues.
- Discount analysis showed that **higher discounts generally reduce average profit**, especially within certain product lines.

---

## Dataset
Source: Databricks (Sample Superstore)

This dataset includes:
- Order Date  
- Ship Date  
- Customer Segment  
- Region  
- Product Name  
- Category  
- Sub-Category  
- Sales  
- Profit  
- Discount  
- Quantity  

Raw data is **not included** in the repo—only referenced.

---

## Notebook
The full analysis is located in:

```
notebooks/retail_sales_analysis.sql
```

It includes:
1. Data Exploration & Validation  
2. Sales and Profit Summary Metrics  
3. Category and Regional Analysis  
4. Monthly Trend Queries  
5. Outlier Detection (Sales vs Profit)  
6. Visualizations (bar charts, line charts, scatterplots)  

---


## Conclusion

This project demonstrates how SQL can be used to uncover meaningful business insights from retail transaction data. By combining category, regional, discount, and time-series analysis, the workflow highlights drivers of revenue and profit as well as margin inefficiencies. The project provides a complete example of exploratory analysis and visualization using Databricks SQL on a business-focused dataset.
