CREATE DATABASE bmw_sales;
USE bmw_sales;

CREATE TABLE bmw_sales_data (
    Sale_ID                     VARCHAR(20)     PRIMARY KEY,
    Sale_Date                   VARCHAR(30),
    Sale_Date_Flag              VARCHAR(20),
    Year                        INT,
    Month                       INT,
    Quarter                     VARCHAR(5),
    Region                      VARCHAR(50),
    Country                     VARCHAR(50),
    Dealer_Name                 VARCHAR(100)    NULL,
    Model                       VARCHAR(50),
    Segment                     VARCHAR(30),
    Fuel_Type                   VARCHAR(20)     NULL,
    CUSAtomer_Segment           VARCHAR(50)     NULL,
    Customer_Segment_Cleaned    VARCHAR(30)     NULL,
    Currency                    VARCHAR(10),
    Currency_Cleaned            VARCHAR(10),
    Units_Sold                  INT,
    Unit_Price_Local            DECIMAL(15,2),
    Discount_Pct                DECIMAL(5,2)    NULL,
    Total_Revenue_Local         DECIMAL(15,2),
    Total_Revenue_Local_Flag    VARCHAR(20),
    Revenue_EUR                 DECIMAL(15,2),
    COGS_EUR                    DECIMAL(15,2),
    Gross_Profit_EUR            DECIMAL(15,2),
    Customer_Age                INT             NULL,
    Customer_Age_Flag           VARCHAR(20),
    CUSAtomer_Gender            VARCHAR(20)     NULL,
    Satisfaction_Score          DECIMAL(3,1)    NULL,
    Satisfactory_Score_Flag     VARCHAR(20)
);

USE bmw_sales;

-- Total rows check
SELECT COUNT(*) AS Total_Rows FROM bmw_sales_data;

-- First 5 rows dekho
SELECT * FROM bmw_sales_data LIMIT 5;

-- Columns count
SELECT COUNT(*) AS Total_Columns 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'bmw_sales_data';

USE bmw_sales;
-- 1. Total Revenue by Year
SELECT 
    Year,
    COUNT(*) AS Total_Sales,
    SUM(Units_Sold) AS Total_Units,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(COGS_EUR), 2) AS Total_COGS_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Profit_EUR,
    ROUND((SUM(Gross_Profit_EUR)/SUM(Revenue_EUR))*100, 2) AS Profit_Margin_Pct
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
GROUP BY Year
ORDER BY Year;

-- 2. Revenue by Region
SELECT 
    Region,
    COUNT(*) AS Total_Sales,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Profit_EUR,
    ROUND((SUM(Gross_Profit_EUR)/SUM(Revenue_EUR))*100, 2) AS Profit_Margin_Pct
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
GROUP BY Region
ORDER BY Total_Revenue_EUR DESC;

-- 3. Best Selling Models
SELECT 
    Model,
    Segment,
    COUNT(*) AS Total_Sales,
    SUM(Units_Sold) AS Total_Units,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Profit_EUR
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
GROUP BY Model, Segment
ORDER BY Total_Revenue_EUR DESC;

-- 4. Customer Segment Analysis

SELECT 
    Customer_Segment_Cleaned,
    COUNT(*) AS Total_Sales,
    SUM(Units_Sold) AS Total_Units,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Profit_EUR,
    ROUND(AVG(Satisfaction_Score), 2) AS Avg_Satisfaction,
    ROUND(AVG(Discount_Pct), 2) AS Avg_Discount_Pct
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
GROUP BY Customer_Segment_Cleaned
ORDER BY Total_Revenue_EUR DESC;

-- 5. Gender Analysis
SELECT 
    CUSAtomer_Gender,
    COUNT(*) AS Total_Sales,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(AVG(Satisfaction_Score), 2) AS Avg_Satisfaction,
    ROUND(AVG(Discount_Pct), 2) AS Avg_Discount_Pct
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
AND CUSAtomer_Gender IS NOT NULL
GROUP BY CUSAtomer_Gender
ORDER BY Total_Revenue_EUR DESC;

-- 6. Quarterly Trends
SELECT 
    Year,
    Quarter,
    COUNT(*) AS Total_Sales,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Profit_EUR
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

-- 7. Fuel Type Analysis
SELECT 
    Fuel_Type,
    COUNT(*) AS Total_Sales,
    SUM(Units_Sold) AS Total_Units,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Profit_EUR,
    ROUND(AVG(Satisfaction_Score), 2) AS Avg_Satisfaction
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK'
AND Fuel_Type IS NOT NULL
GROUP BY Fuel_Type
ORDER BY Total_Revenue_EUR DESC;

-- Overall Business Summary
SELECT
    COUNT(*) AS Total_Transactions,
    SUM(Units_Sold) AS Total_Units_Sold,
    ROUND(SUM(Revenue_EUR), 2) AS Total_Revenue_EUR,
    ROUND(SUM(COGS_EUR), 2) AS Total_COGS_EUR,
    ROUND(SUM(Gross_Profit_EUR), 2) AS Total_Gross_Profit_EUR,
    ROUND((SUM(Gross_Profit_EUR)/SUM(Revenue_EUR))*100, 2) AS Overall_Margin_Pct,
    ROUND(AVG(Satisfaction_Score), 2) AS Avg_Satisfaction,
    ROUND(AVG(Discount_Pct), 2) AS Avg_Discount_Pct
FROM bmw_sales_data
WHERE Total_Revenue_Local_Flag = 'OK';