create database Superstore;
use Superstore;

select * from sales;

-- 1. Total Sales, Profit, and Discount

select sum(Sales)as Total_sales,sum(profit)as Total_Profit,avg(Discount)as Avg_Discount
from sales;

-- 2. Sales & Profit by Region

select region, sum(Sales)as Total_Sales, sum(Profit)as Total_Profit
from Sales
group by Region
order by Total_Sales desc;

-- 3. Sales Trend Over Time

select year(Order_Date)as Year, MONTH(Order_Date)as Month, sum(Sales) as Month_Sales
from Sales
group by year(Order_Date),month(Order_Date)
order by Year,Month;

-- 4. Top 10 Best-Selling Products

SELECT 
    Product_Name, 
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 5. Most Profitable Product Categories

SELECT 
    Category, 
    SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 6. Customer Segmentation by Sales

SELECT 
    Segment, 
    SUM(Sales) AS Total_Sales, 
    COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM Sales
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 7.Sales by Ship Mode

SELECT 
    Ship_Mode, 
    COUNT(Order_ID) AS Order_Count, 
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Ship_Mode
ORDER BY Total_Sales DESC;

-- 8.Profitability by State (Top 10 States)

 SELECT 
    State, 
    SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;




