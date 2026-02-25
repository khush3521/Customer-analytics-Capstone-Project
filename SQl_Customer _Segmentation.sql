SELECT * FROM project_shopping_trends.std;

-- Category Wise Sales 
SELECT Category, SUM(PurchaseAmountUSD) AS Total_Sales
FROM std
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Discount Distribution
SELECT DiscountApplied, COUNT(*) as Value 
FROM std
GROUP BY DiscountApplied;


-- Age Group Spending
SELECT Age_Group, AVG(PurchaseAmountUSD)
FROM std
GROUP BY Age_Group;

-- Category Wise Revenue
SELECT Category, SUM(PurchaseAmountUSD) AS Total_Sales
FROM std
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Discount Impact on Spending
SELECT DiscountApplied, 
       AVG(PurchaseAmountUSD) AS Avg_Spending
FROM std
GROUP BY DiscountApplied;

-- Age Group Spending
SELECT Age_Group, 
       AVG(PurchaseAmountUSD) AS Avg_Spending
FROM std
GROUP BY Age_Group
ORDER BY Avg_Spending DESC;

-- Season Wise Sales
SELECT Season, 
       SUM(PurchaseAmountUSD) AS Total_Sales
FROM std
GROUP BY Season
ORDER BY Total_Sales DESC;

-- Top 5 High Spending Customers
SELECT CustomerID, PurchaseAmountUSD
FROM std
ORDER BY PurchaseAmountUSD DESC
LIMIT 5;
