This project analyzes pizza sales data using MySQL and Power BI to understand sales performance, customer ordering patterns, product popularity, and revenue contribution.

The objective is to transform raw sales data into meaningful business insights through SQL analysis and interactive Power BI dashboards.

The project focuses on answering important business questions:
- How much revenue does the pizza business generate?
- Which days and months receive the most orders?
- Which pizza categories and sizes contribute most to sales?
- Which pizzas perform best and worst in terms of revenue, quantity, and orders?
- How can sales insights support product and business decisions?
The dataset contains pizza sales transactions with information about orders, quantities, pricing, pizza categories, sizes, and product details.

Dataset Summary
- Total Records: 48,620
- Total Columns: 12
- Data Source: Pizza Sales CSV dataset
Key Columns
These KPIs provide an overall view of revenue generation, order volume, and customer purchasing behavior.
Objective: Monitor overall sales performance and identify important sales trends.

Key Visualizations
- Total Revenue
- Average Order Value
- Total Pizzas Sold
- Total Orders
- Average Pizzas Per Order
- Daily Trend for Total Orders
- Monthly Trend for Orders
- Percentage of Sales by Pizza Category
- Percentage of Sales by Pizza Size
Business Value

This dashboard helps stakeholders understand sales performance, identify ordering patterns, compare revenue contributions, and monitor important business KPIs.

Objective: Identify the best- and lowest-performing pizza products.

Key Visualizations
- Top 5 Pizzas by Revenue
- Bottom 5 Pizzas by Revenue
- Top 5 Pizzas by Quantity Sold
- Bottom 5 Pizzas by Quantity Sold
- Top 5 Pizzas by Total Orders
- Bottom 5 Pizzas by Total Orders

Business Value
This dashboard supports product performance evaluation and helps identify popular pizzas, revenue-generating products, and items that may require further review.

MySQL was used to perform business-focused analysis through aggregation, grouping, sorting, and ranking.

Key SQL Concepts Applied
- SUM() for revenue and quantity calculations
- COUNT(DISTINCT) for unique order counts
- GROUP BY for category and product analysis
- ORDER BY for identifying performance trends
- LIMIT for Top 5 and Bottom 5 products
- STR_TO_DATE() for date-based analysis
- DAYNAME() and MONTHNAME() for daily and monthly trends
- Subqueries for percentage contribution calculations
```
SELECT
    SUM(total_price) AS Total_Revenue
FROM pizza_sales;
```
```
SELECT
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;
```
1. Sales Performance Monitoring

Revenue, order count, and average order value provide a consolidated view of overall business performance.

2. Daily and Monthly Ordering Patterns

Analyzing orders by weekday and month helps identify changes in customer demand and supports operational planning.

3. Pizza Category and Size Analysis

Comparing sales across categories and sizes helps identify their relative revenue contribution and supports menu planning.

4. Product Performance Analysis

Top- and bottom-performing pizza comparisons help identify products that generate higher revenue, sell in larger quantities, or appear in more orders.

5. Business Decision Support

Combining SQL analysis with Power BI dashboards provides a structured way to monitor sales performance and identify areas for further investigation.
- SQL querying and data aggregation
- Data preparation and transformation
- DAX measures and KPI development
- Interactive Power BI dashboard creation
- Sales trend analysis
- Product performance analysis
- Business reporting and data storytelling
```
Pizza-Sales-Analysis/
│
├── README.md
├── Dataset/
│   └── Pizza_Sales.csv
│
├── SQL_Queries/
│   └── Pizza_Sales_SQL_Queries.sql
│
├── PowerBI/
│   └── Pizza Sales Analaysis.pbix
│
└── Dashboard_Screenshots/
    ├── 01_Sales_Overview.png
    └── 02_Pizza_Performance.png
```
This project demonstrates how SQL and Power BI can be used together to analyze sales transactions, track key business metrics, and evaluate product performance.

The analysis provides a foundation for understanding customer ordering patterns, comparing pizza products, and supporting data-driven business decisions.

It also demonstrates my ability to connect technical data analysis with practical business questions.
Created by Chetana Singh
