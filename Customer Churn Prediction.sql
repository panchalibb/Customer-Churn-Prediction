use info;

select * from ccp;

-- 1. Total customers --

SELECT COUNT(*) AS total_customers FROM ccp;

-- 2.  Total churned vs retained --

SELECT Churn, COUNT(*) AS count FROM ccp
GROUP BY Churn;

-- 3. Churn rate --

SELECT ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM ccp;

-- 2. Feature Impact Analysis --

-- Churn by contract type --

SELECT Contract, 
       COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM ccp
GROUP BY Contract;

-- Churn by tenure group (0–12 months, 13–24, etc.) --

SELECT 
  CASE 
    WHEN tenure BETWEEN 0 AND 12 THEN '0–12 Months'
    WHEN tenure BETWEEN 13 AND 24 THEN '13–24 Months'
    WHEN tenure BETWEEN 25 AND 36 THEN '25–36 Months'
    ELSE '36+ Months' 
  END AS tenure_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM ccp
GROUP BY tenure_group;

-- 3. Billing & Charges --
-- Avg MonthlyCharges for churned vs retained --

SELECT Churn, 
       ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge
FROM ccp
GROUP BY Churn;

--  High-spending churners --

SELECT MonthlyCharges, TotalCharges
FROM ccp
WHERE Churn = 'Yes'
ORDER BY MonthlyCharges DESC
LIMIT 10;

-- Service Usage Impact --

-- Internet service type and churn --

SELECT InternetService,
       COUNT(*) AS total,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM ccp
GROUP BY InternetService;

-- Churn by tech support availability --

SELECT TechSupport, 
       COUNT(*) AS total,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM ccp
GROUP BY TechSupport;

-- 5. Target High-Risk Customers (for retention) --
-- Customers with month-to-month contracts, no tech support, and high charges --

SELECT MonthlyCharges, Contract, TechSupport
FROM ccp
WHERE Contract = 'Month-to-month' AND TechSupport = 'No' AND MonthlyCharges > 70;