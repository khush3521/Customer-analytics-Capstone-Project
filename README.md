# 🚀 Customer Analytics & Segmentation Dashboard

![Power BI](https://img.shields.io/badge/Tool-PowerBI-yellow?style=for-the-badge)
![DAX](https://img.shields.io/badge/Language-DAX-blue?style=for-the-badge)
![Python](https://img.shields.io/badge/Python-DataProcessing-green?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)

---

## 📌 Project Overview

An end-to-end **Customer Analytics & Segmentation Dashboard** built using Power BI, DAX, Python, and SQL.

This project analyzes customer purchasing behavior, revenue trends, retention patterns, and business performance to generate actionable strategic insights.

---

## 🎯 Business Objectives

- Analyze revenue distribution across product categories
- Identify high-value customer segments
- Measure customer retention & repeat behavior
- Evaluate discount and subscription impact
- Provide short-term and long-term strategic recommendations

---

## 🛠 Tech Stack

| Tool | Purpose |
|------|---------|
| Power BI | Dashboard & Data Visualization |
| DAX | KPI & Advanced Calculations |
| Python | Data Cleaning & Clustering |
| SQL | Data Validation & Querying |
| CSV Dataset | Raw Data Source |

---

## 📊 Dashboard Structure

### 🔹 Page 1 – Customer Performance Dashboard

**Focus:** Revenue & Business Overview  

✔ Total Revenue  
✔ Total Customers  
✔ Average Purchase Value  
✔ Category-wise Revenue  
✔ Seasonal Trends  
✔ Subscription Impact  
✔ Discount Distribution  

---

### 🔹 Page 2 – Customer Insights & Segmentation

**Focus:** Customer Behavior & Engagement  

✔ Repeat Customer Rate (87%)  
✔ High Rating % (39%)  
✔ Purchase Frequency Analysis  
✔ Revenue by Payment Method  
✔ Revenue by Purchase Frequency  
✔ Customer Rating Distribution  

---

## 📈 Key Insights

- Total Revenue Generated: **$502K**
- Strong Repeat Customer Rate: **87%**
- Weekly buyers contribute highest revenue
- Spring season drives peak sales
- Digital payments dominate revenue share
- 51% purchases involve discount usage
- Younger & mid-age groups show higher average spending

---

## 🧠 Strategic Recommendations

### 🔥 Short-Term (0–6 Months)
- Target high-frequency buyers with premium offers
- Increase subscription conversion rate
- Improve customer experience to boost ratings
- Optimize discount allocation

### 🚀 Long-Term (6–24 Months)
- Implement loyalty reward program
- Personalized recommendation engine
- AI-driven discount optimization
- Advanced customer segmentation modeling

---

## 📂 Repository Structure

```
customer-analytics-dashboard/
│
├── data/
│   └── shopping_table_std.csv
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

## 📷 Dashboard Preview

### 📌 Customer Performance Dashboard
![Page1](dashboards/page1.png)

### 📌 Customer Insights & Segmentation
![Page2](dashboards/page2.png)

---

## 📊 Sample DAX Measures

```DAX
Total Revenue = SUM(shopping_table_std[PurchaseAmountUSD])

Repeat Customers = 
CALCULATE(
    DISTINCTCOUNT(shopping_table_std[CustomerID]),
    shopping_table_std[PreviousPurchases] > 1
)

Repeat Customer % =
DIVIDE(
    [Repeat Customers],
    DISTINCTCOUNT(shopping_table_std[CustomerID])
)
```

---

## 📌 Why This Project Stands Out

✔ End-to-End Analytics Workflow  
✔ Business-Oriented Dashboard Design  
✔ Strategic Recommendation Layer  
✔ Multi-Tool Integration (Python + SQL + Power BI)  
✔ Executive-Level Reporting  

---

## 👨‍💻 Author

**Khush Panchal**  
Aspiring Data Analyst  
Power BI | SQL | Python | Data Storytelling  

---

⭐ If you found this project valuable, feel free to star this repository!
