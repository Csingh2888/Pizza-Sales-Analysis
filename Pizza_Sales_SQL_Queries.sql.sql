SELECT * FROM pizza_sales;

# Total Revenue:
Select SUM(total_price) As Total_Revenue from pizza_sales;

# Average Order Value
Select SUM(total_price) / COUNT(distinct order_id) AS Average_Order_Value From pizza_sales;

# Total Pizzas Sold
Select SUM(quantity) As Total_Pizza_Sold From pizza_sales;

# Total Orders
Select Count(distinct order_id) As Total_Orders From pizza_sales;

# Average Pizzas Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales;

# Daily Trend for Total Orders
SELECT
    DAYNAME(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
WHERE STR_TO_DATE(order_date, '%m/%d/%Y') IS NOT NULL
GROUP BY
    DAYOFWEEK(STR_TO_DATE(order_date, '%m/%d/%Y')),
    DAYNAME(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY
    DAYOFWEEK(STR_TO_DATE(order_date, '%m/%d/%Y'));
    
# Monthly Trend for Orders
SELECT MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS month_number,
       MONTHNAME(STR_TO_DATE(order_date, '%m/%d/%Y')) AS month_name,
       COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
WHERE STR_TO_DATE(order_date, '%m/%d/%Y') IS NOT NULL
GROUP BY MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')),
        MONTHNAME(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY month_number;

# % of Sales by Pizza Category
Select pizza_category, SUM(total_price) * 100 / (Select SUM(total_price) From pizza_sales) As PCT
From pizza_sales
Group by pizza_category;

# % of Sales by Pizza Size
Select pizza_size, SUM(total_price) As Total_Sales, SUM(total_price) * 100 / (Select SUM(total_price) From pizza_sales) As PST
From pizza_sales
Group by pizza_size;

# Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) AS Sold_pizza FROM pizza_sales
GROUP BY pizza_category;

# Top 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC LIMIT 5;

# Bottom 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue LIMIT 5;

# Top 5 Pizzas by Quantity
SELECT pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC LIMIT 5;

# Bottom 5 Pizzas by Quantity
SELECT pizza_name, SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity LIMIT 5

# Top 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Order FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Order DESC LIMIT 5;

# Top 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Order FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Order DESC LIMIT 5;

# Bottom 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Order FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Order LIMIT 5;

















