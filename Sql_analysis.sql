-- Total counts
SELECT COUNT(*) FROM superstore;

-- Monthly Sales and Profit over time
SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Month
ORDER BY Month;

-- Total sales grouped by main product category
SELECT Category, ROUND(SUM(Sales),2) AS Sales FROM superstore GROUP BY Category;

-- Top 10 Sub-Categories by Sales
SELECT 
    "Sub-Category",                   
    ROUND(SUM(Sales), 2) AS Sales
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Sales DESC
LIMIT 10;

-- Sales performance by different geographic regions
SELECT 
    Region,                      
    ROUND(SUM(Sales), 2) AS Sales
FROM superstore
GROUP BY Region
ORDER BY Sales DESC;

-- Segment-wise sales and profit distribution
SELECT 
    Segment,                         
    ROUND(SUM(Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit
FROM superstore
GROUP BY Segment
ORDER BY Sales DESC;