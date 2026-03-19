-- Total Sales
SELECT SUM(c18) AS Total_Sales FROM Superstore;

-- Total Profit
SELECT SUM(c21) AS Total_Profit FROM Superstore;

-- Sales by Region
SELECT c13 AS Region, SUM(c18) AS Total_Sales
FROM Superstore
GROUP BY c13
ORDER BY Total_Sales DESC;

-- Top Customers
SELECT c7 AS Customer_Name, SUM(c18) AS Total_Sales
FROM Superstore
GROUP BY c7
ORDER BY Total_Sales DESC
LIMIT 5;

-- Category Analysis
SELECT c15 AS Category, SUM(c18) AS Total_Sales
FROM Superstore
GROUP BY c15
ORDER BY Total_Sales DESC;