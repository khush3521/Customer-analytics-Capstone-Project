# 🚀 Customer Analytics & Segmentation Dashboard

![Power BI](https://img.shields.io/badge/Tool-PowerBI-yellow?style=for-the-badge)
![DAX](https://img.shields.io/badge/Language-DAX-blue?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-DataProcessing-green?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)

> 🔍 Analyzing 3,900+ customers | 📊 $502K revenue | 🛒 2021–2023 retail data

---

## 📌 Project Overview

A retail business with 3,900+ customers needed to understand *why* revenue plateaued despite high transaction volume — and which customer segments were worth investing in.

This end-to-end analytics project combines **Python** (data cleaning & clustering), **SQL** (validation & querying), and **Power BI** (executive dashboard) to surface $502K in revenue patterns, identify an 87% repeat customer base, and deliver prioritized business recommendations.

---

## 🎯 Business Objectives

- Analyze revenue distribution across product categories
- Identify high-value customer segments using clustering
- Measure customer retention & repeat purchase behavior
- Evaluate the impact of discounts and subscriptions on revenue
- Deliver short-term and long-term strategic recommendations

---

## 🛠 Tech Stack

| Tool | Purpose |
|------|---------|
| Power BI | Dashboard & Data Visualization |
| DAX | KPI Calculations & Advanced Measures |
| Python | Data Cleaning & K-Means Clustering |
| SQL | Data Validation & Querying |
| CSV Dataset | Raw Data Source (3,900+ records) |

---

## 📊 Dashboard Structure

### 🔹 Page 1 – Customer Performance Dashboard

**Focus:** Revenue & Business Overview

- Total Revenue — overall business performance at a glance
- Total Customers — unique customer count
- Average Purchase Value — spend per transaction
- Category-wise Revenue — which product lines drive value
- Seasonal Trends — when customers buy most
- Subscription Impact — subscriber vs non-subscriber revenue
- Discount Distribution — how discounting affects margins

---

### 🔹 Page 2 – Customer Insights & Segmentation

**Focus:** Customer Behavior & Engagement

- Repeat Customer Rate (87%) — loyalty health metric
- High Rating % (39%) — satisfaction signal
- Purchase Frequency Analysis — identifying VIP buyers
- Revenue by Payment Method — digital vs traditional
- Revenue by Purchase Frequency — frequency-value correlation
- Customer Rating Distribution — NPS proxy analysis

---

## 📷 Dashboard Preview

### 📌 Page 1 — Customer Performance Dashboard
<img width="1277" height="715" alt="Page1_overview" src="https://github.com/user-attachments/assets/bd0e615b-84bd-4a7c-9459-c2c049610c8b" />


![Page 1 Dashboard](dashboards/page1.png)

### 📌 Page 2 — Customer Insights & Segmentation
<img width="1318" height="743" alt="Page2_segmentation" src="https://github.com/user-attachments/assets/6d76bca1-332c-4358-bc91-ec28d9aec3a4" />


![Page 2 Dashboard](dashboards/page2.png)

---

## 📈 Key Insights & Business Impact

| Finding | Business Implication |
|---|---|
| **87% repeat customer rate** | Retention is strong — invest in loyalty programs, not just acquisition |
| **Weekly buyers = highest revenue segment** | Create a VIP tier targeting high-frequency shoppers |
| **Spring season drives peak sales** | Front-load inventory & marketing budget in Q1 |
| **51% of purchases use discounts** | Discount dependency is high — test gradual reduction |
| **Digital payments dominate revenue share** | Deprioritize cash infrastructure investment |
| **Younger & mid-age groups (20–35) spend more per visit** | Focus campaign targeting on this demographic |

---

## 🧠 Strategic Recommendations

### 🔥 Short-Term (0–6 Months)
- **Loyalty Tier Program** — reward weekly buyers with exclusive early access or cashback
- **Subscription Conversion Push** — subscribers show higher LTV; increase conversion via targeted offers
- **Discount Optimization** — A/B test reducing discount rate by 10% on high-frequency buyers to protect margins
- **Rating Improvement Plan** — investigate the 61% of customers not leaving high ratings; address pain points

### 🚀 Long-Term (6–24 Months)
- **Personalized Recommendation Engine** — use purchase history clusters to drive cross-sell revenue
- **AI-Driven Discount Model** — replace blanket discounts with ML-based personalized pricing
- **Advanced RFM Segmentation** — build Recency-Frequency-Monetary model for precision targeting
- **Seasonal Campaign Automation** — automate Spring campaign triggers based on historical trends

---

## 📊 Sample DAX Measures

```DAX
-- Total Revenue
Total Revenue = SUM(shopping_table_std[PurchaseAmountUSD])

-- Repeat Customer Count
Repeat Customers = 
CALCULATE(
    DISTINCTCOUNT(shopping_table_std[CustomerID]),
    shopping_table_std[PreviousPurchases] > 1
)

-- Repeat Customer Rate (%)
Repeat Customer % =
DIVIDE(
    [Repeat Customers],
    DISTINCTCOUNT(shopping_table_std[CustomerID])
)

-- Average Purchase Value
Avg Purchase Value = 
DIVIDE(
    [Total Revenue],
    COUNTROWS(shopping_table_std)
)

-- Discount Usage Rate
Discount Usage % =
DIVIDE(
    CALCULATE(COUNTROWS(shopping_table_std), shopping_table_std[DiscountApplied] = "Yes"),
    COUNTROWS(shopping_table_std)
)
```

---

## 🐍 Python — Customer Segmentation (K-Means Clustering)

```python
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt

# Load and prepare data
df = pd.read_csv('data/shopping_table_std.csv')
features = df[['PurchaseAmountUSD', 'PreviousPurchases', 'ReviewRating']]

# Scale features
scaler = StandardScaler()
scaled = scaler.fit_transform(features)

# K-Means clustering (3 segments)
kmeans = KMeans(n_clusters=3, random_state=42)
df['Segment'] = kmeans.fit_predict(scaled)

# Segment summary
print(df.groupby('Segment')[['PurchaseAmountUSD', 'PreviousPurchases']].mean())
```

---

## 🗄️ SQL — Key Validation Queries

```sql
-- Top spending customers
SELECT CustomerID, SUM(PurchaseAmountUSD) AS TotalSpend
FROM shopping_table_std
GROUP BY CustomerID
ORDER BY TotalSpend DESC
LIMIT 10;

-- Revenue by category
SELECT Category, 
       SUM(PurchaseAmountUSD) AS Revenue,
       COUNT(*) AS Transactions
FROM shopping_table_std
GROUP BY Category
ORDER BY Revenue DESC;

-- Repeat vs one-time customers
SELECT 
    CASE WHEN PreviousPurchases > 1 THEN 'Repeat' ELSE 'New' END AS CustomerType,
    COUNT(DISTINCT CustomerID) AS CustomerCount,
    SUM(PurchaseAmountUSD) AS TotalRevenue
FROM shopping_table_std
GROUP BY CustomerType;
```

---

## 📂 Repository Structure

```
customer-analytics-dashboard/
│
├── data/
│   └── shopping_table_std.csv
│
├── dashboards/
│   ├── page1.png                  ← Power BI screenshot (Page 1)
│   └── page2.png                  ← Power BI screenshot (Page 2)
│
├── powerbi/
│   └── Customer_Analytics.pbix
│
├── python/
│   └── customer_segmentation.ipynb
│
├── sql/
│   └── customer_segmentation.sql
│
├── presentation/
│   └── Customer_Analytics_Presentation.pptx
│
└── README.md
```

---

## 📌 Why This Project Stands Out

| Feature | Details |
|---|---|
| ✅ End-to-End Workflow | Raw CSV → Python cleaning → SQL validation → Power BI dashboard |
| ✅ Real Business Problem | Not a tutorial — built around an actual business question |
| ✅ Quantified Insights | Every finding backed by data ($502K, 87%, 51%) |
| ✅ Strategic Recommendations | Short and long-term actions, not just observations |
| ✅ Multi-Tool Integration | Python + SQL + Power BI + DAX |
| ✅ Executive-Level Reporting | Dashboard designed for non-technical stakeholders |

---

## 👨‍💻 Author

**Khush Panchal** — Data Analyst  
Specializing in business intelligence, customer analytics & data storytelling

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/khush-panchal-96b557352)
[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?style=flat&logo=github)](https://github.com/khush3521)

---

⭐ If you found this project valuable, feel free to star this repository!
