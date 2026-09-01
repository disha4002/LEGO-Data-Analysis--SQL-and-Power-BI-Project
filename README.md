## LEGO Sets Data Analysis — SQL & Power BI
📌 Project Overview

This project analyzes 18,000+ LEGO sets released between 1970 and 2022 to uncover trends in LEGO production, pricing, themes, piece counts, and minifigure distribution.

The project combines MySQL for data analysis and Power BI for interactive visualization, creating an end-to-end workflow from raw dataset to actionable insights.

<br>
The following the the overview of revenue generated over time:

![image alt](https://github.com/disha4002/LEGO-Data-Analysis--SQL-and-Power-BI-Project/blob/a609153eaaaccb360a098cf62a7cb0e3792f225e/Screenshot%202026-09-01%20134113.png)

## 🎯 Objectives

The analysis focuses on answering questions such as:

How has the number of LEGO sets changed over the years?
Is there a relationship between a set's price and number of pieces?
Which themes have been the most popular across different decades?
Which themes have the highest average prices and piece counts?
Which LEGO sets contain the most pieces?
Are minifigures more commonly associated with licensed sets?
## 🛠️ Tools & Technologies
MySQL — Data querying and analysis
<br>
SQL — Aggregation, filtering, CTEs, subqueries, joins and window functions
<br>
Power BI — Interactive dashboard and data visualization
<br>
DAX — Measures and calculated metrics
<br>
## 🔍 SQL Analysis

The dataset was analyzed using SQL to explore product, pricing, theme, and historical trends.
<br>
Key SQL concepts used:
<br>
SELECT, WHERE, ORDER BY
GROUP BY and HAVING
Aggregate functions — COUNT, SUM, AVG
CASE statements
Subqueries
Common Table Expressions (CTEs)
JOIN
Window functions
RANK()
ROW_NUMBER()
LAG()
<br>
The analysis included comparisons of average prices, price-per-piece, yearly set releases, theme popularity, and minifigure distribution.
<br>
## 📊 Power BI Dashboard

The SQL findings were transformed into an interactive Power BI dashboard with filters for Year, Theme, and Category.

## The dashboard explores:

 Product Analysis 
<br>
Top LEGO themes by average price
<br>
Top sets by piece count
<br>
Average pieces across themes
<br>
LEGO sets released by year
<br>
Pricing Analysis
Average LEGO set price<br>

Price variation across piece ranges<br>
Relationship between price and number of pieces<br>
Theme & Minifigure Analysis<br>
Theme popularity over time<br>
Average minifigures by theme<br>
Comparison of licensed and non-licensed sets<br>
## 💡 Key Insights
LEGO's annual set releases show a strong long-term increase, with substantially more sets being released in recent years than in the early decades.<br>
Set price has a strong positive relationship with piece count, meaning larger sets generally tend to be more expensive.<br>
The most represented LEGO themes have changed across different decades, reflecting changes in LEGO's product portfolio.<br>
Licensed sets are more strongly associated with minifigures than non-licensed sets.<br>

## 🚀 Project Outcome

This project demonstrates an end-to-end data analysis workflow by combining SQL-based analytical querying with Power BI dashboard development. It focuses not only on extracting information from the dataset but also on turning the analysis into clear, interactive visual insights.
