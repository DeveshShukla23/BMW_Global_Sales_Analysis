# 🚗 BMW Global Sales Analysis — End-to-End Data Project

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://mysql.com)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org)
[![Status](https://img.shields.io/badge/Status-Completed-00C853?style=for-the-badge)](https://github.com/DeveshShukla23)
[![Domain](https://img.shields.io/badge/Domain-Automotive%20Analytics-0D47A1?style=for-the-badge)](https://github.com/DeveshShukla23)
[![Records](https://img.shields.io/badge/Records-4569-F2C811?style=for-the-badge)](https://github.com/DeveshShukla23)
[![Phases](https://img.shields.io/badge/Phases-4-E53935?style=for-the-badge)](https://github.com/DeveshShukla23)

> 🚀 A complete **4-Phase end-to-end data analytics project** on BMW Global Sales data — covering raw data cleaning, exploratory data analysis, SQL business queries, and an interactive Power BI dashboard — delivering actionable business insights across **8 countries, 12 models, and 4,569 records** spanning 2020–2024.

---

## 📌 Project Overview

This project simulates a **real-world automotive business intelligence pipeline** for BMW's global sales operations. Starting from a raw, messy dataset of **4,569 records**, the project walks through every stage of the data lifecycle — from cleaning corrupted fields and handling nulls, to writing advanced SQL queries and building a stunning **4-page interactive Power BI dashboard**.

The project answers critical business questions around **revenue trends, profitability by region, model performance, customer segmentation, and fuel type adoption** — the kind of insights a Data Analyst would be expected to deliver in an automotive or consulting environment.

---

## 📊 Dashboard Numbers at a Glance

| KPI | Value |
|---|---|
| 💰 Total Revenue | **€ 785.58M** |
| 📈 Gross Profit | **€ 196.39M** |
| 📉 Profit Margin | **25.00%** |
| 🚗 Units Sold | **12K** |
| 🧾 Total Transactions | **4,522** |
| ⭐ Avg Satisfaction Score | **4.08 / 5** |
| 📅 Years Covered | **2020 – 2024** |
| 🌍 Countries | **8 Global Markets** |
| 🚘 Models Analysed | **12 BMW Models** |

---

## 📸 Power BI Dashboard Preview

### 🖥️ Page 1 — Executive Overview
> Revenue trend 2020–2024 | Revenue by Region | Top 5 Models by Revenue | Year & Region slicers

![BMW Dashboard Overview](dashboard_overview.png)

---

### 🖥️ Page 2 — Revenue & Profit Analysis
> Revenue vs Gross Profit | YoY Growth % | Quarterly Revenue Matrix | Revenue by Fuel Type

![BMW Revenue Trend Dashboard](dashboard_revenue_trend.png)

---

### 🖥️ Page 3 — Regional Performance
> World Map with Revenue Bubbles | Revenue by Country bar chart | Revenue & Margin treemap | Year & Country slicers

![BMW Region Dashboard](dashboard_region.png)

---

### 🖥️ Page 4 — Model Portfolio Analysis
> Revenue by Model | Units Sold treemap | Model Revenue Trend 2020–2024 | Fuel Type & Model slicers

![BMW Model Dashboard](dashboard_model.png)

---

## 📂 Dataset Overview

> 💡 Real-world style dataset with intentional data quality issues — corrupted dates, typos in column names, null values, bad scores — simulating exactly what analysts face in production environments.

| Attribute | Details |
|---|---|
| 📁 Total Records | **4,569 transactions** |
| 🌍 Countries | USA, China, Germany, UK, UAE, India, South Africa, Australia |
| 🚗 Models | BMW X5, X3, X7, 3 Series, 5 Series, 7 Series, iX, i4, i7, M3, M5, 2 Series |
| ⛽ Fuel Types | Petrol, Diesel, Electric, Hybrid |
| 💰 Currencies | EUR, USD, GBP, CNY, AED, JPY, BRL, and more |
| 📅 Years Covered | 2020 – 2024 |
| 👥 Customer Segments | Retail, Corporate Fleet, Lease, High Net Worth |
| 📊 Key Metrics | Revenue EUR, COGS EUR, Gross Profit EUR, Satisfaction Score, Discount % |

### Key Data Quality Issues Found & Fixed:

- ❌ Corrupted sale dates → ✅ Flagged with `Sale_Date_Flag`
- ❌ Typos in column names (`CUSAtomer_Segment`, `CUSAtomer_Gender`) → ✅ Cleaned versions created
- ❌ Mixed currency formats → ✅ Standardised via `Currency_Cleaned`
- ❌ Negative satisfaction scores (−1) → ✅ Flagged as `BAD SCORE`
- ❌ NULL values in Discount_Pct, Fuel_Type, Dealer_Name → ✅ Handled in cleaning phase

---

## 🔄 Project Phases

---

### 🔵 Phase 1 — Raw Data Inspection

**Goal:** Understand the raw dataset structure and identify all data quality issues before touching anything.

**Key Activities:**
- Loaded `BMW_Sales_Raw.csv` — 4,569 rows × 29 columns
- Identified corrupted date formats, NULL fields, and typos in column headers
- Documented all data issues and built a structured cleaning plan
- Assessed column data types and flagged structural inconsistencies

**Output:** Complete data quality issue report with a cleaning roadmap

---

### 🟡 Phase 2 — Data Cleaning & Preparation

**Goal:** Clean the raw data and produce a fully analysis-ready dataset.

**Key Activities:**
- Standardised `Customer_Segment_Cleaned` — fixed typos (lease → Lease, corporate fleet → Corporate Fleet, etc.)
- Standardised `Currency_Cleaned` column across all 8 currency formats
- Created flag columns: `Sale_Date_Flag`, `Total_Revenue_Local_Flag`, `Customer_Age_Flag`, `Satisfactory_Score_Flag`
- Removed/flagged all invalid satisfaction scores (`−1 → BAD SCORE`)
- Produced final cleaned output: `BMW_Sales_Cleaned_v1.csv`

**Tools Used:** `Python` | `Pandas` | `Jupyter Notebook`

---

### 🟠 Phase 3 — Exploratory Data Analysis (EDA)

**Goal:** Uncover patterns, trends, and outliers through visual and statistical analysis.

**Key Activities:**
- Year-wise revenue and profit trend analysis (2020–2024)
- Region-wise and country-wise performance comparison across 8 markets
- Model-wise sales volume and revenue breakdown across 12 models
- Fuel type adoption analysis — EV vs Hybrid vs Petrol vs Diesel
- Customer segment profitability and discount behaviour comparison
- Gender distribution and satisfaction score deep-dive
- Quarterly sales seasonality pattern analysis

**Tools Used:** `Python` | `Pandas` | `Matplotlib` | `Seaborn` | `Jupyter Notebook`

---

### 🔴 Phase 4 — SQL Analysis + Power BI Dashboard

**Goal:** Load cleaned data into MySQL, run 8 business queries, and build an interactive 4-page Power BI dashboard.

#### SQL Queries Written:

| # | Query | Business Question |
|---|---|---|
| 1 | Revenue by Year | How has BMW's revenue grown over 2020–2024? |
| 2 | Revenue by Region | Which global regions contribute the most revenue? |
| 3 | Best Selling Models | Which models drive the highest revenue and units? |
| 4 | Customer Segment Analysis | Which customer segment is most profitable? |
| 5 | Gender Analysis | Does gender influence revenue or satisfaction scores? |
| 6 | Quarterly Trends | What are the seasonal patterns quarter by quarter? |
| 7 | Fuel Type Analysis | How is the EV/Hybrid transition impacting revenue? |
| 8 | Overall Business Summary | What is the complete business health at a glance? |

#### Power BI Dashboard — 4 Pages:

| Page | Title | What It Shows |
|---|---|---|
| 1 | Executive Overview | Revenue trend, top regions, top 5 models, Year & Region slicers |
| 2 | Revenue & Profit Analysis | YoY growth %, quarterly matrix, fuel type revenue split |
| 3 | Regional Performance | World map, country-wise revenue bar chart & margin treemap |
| 4 | Model Portfolio | Revenue by model, units treemap, model trend 2020–2024 |

**Tools Used:** `MySQL` | `MySQL Workbench` | `Python (SQLAlchemy)` | `Power BI Desktop`

---

## 💼 Key Business Insights

> 📌 Derived from SQL analysis + Power BI visualisation on 4,569 cleaned records

- 📈 **Revenue Growth:** Total revenue grew from **€146M (2020)** to **€191M (2024)** — a **+32.08% overall YoY growth**, with the sharpest jump between 2023 and 2024
- 🌍 **#1 Market:** **USA leads with €196M**, followed by China (€154M) and Germany (€144M) — together accounting for over 63% of global revenue
- 🚗 **#1 Model:** **BMW X5 tops with €109M** in revenue (24.25% share), followed by BMW X3 (€102M — 22.67%) and BMW 5 Series (€89M — 19.64%)
- ⛽ **Balanced Fuel Mix:** Revenue is nearly evenly distributed — Petrol (28.08%), Diesel (24.84%), Electric (24.15%), Hybrid (22.92%) — signalling a healthy EV transition in progress
- 📉 **2021 Dip:** Revenue dropped to €139M in 2021 (−5% YoY), likely reflecting post-pandemic supply chain disruption, recovering strongly from 2022 onwards
- 📊 **Q4 Dominates:** Q4 consistently delivers the highest quarterly revenue across all 5 years — totalling **€208.41M** across 2020–2024
- ⭐ **Customer Satisfaction:** Average satisfaction stands at a healthy **4.08 / 5** across all regions and models

---

## 🧠 SQL Concepts Used

| Concept | Used In |
|---|---|
| ✅ **DDL** — CREATE DATABASE, CREATE TABLE | Database & Table Setup |
| ✅ **DML** — SELECT, GROUP BY, ORDER BY | All 8 Business Queries |
| ✅ **Aggregate Functions** — SUM, COUNT, AVG, ROUND | Revenue, Profit & Satisfaction calculations |
| ✅ **WHERE Filters** — Flag-based data quality filtering | All Queries (`Flag = 'OK'`) |
| ✅ **Derived Metrics** — Profit Margin % formula | Year & Region queries |
| ✅ **NULL Handling** — IS NOT NULL filters | Gender & Fuel Type queries |
| ✅ **Multi-column GROUP BY** | Quarterly trend analysis |
| ✅ **DECIMAL precision** — Financial data handling | Revenue, COGS, Gross Profit columns |

---

## 📂 Project Structure

```
BMW-Global-Sales-Analysis/
│
├── 📄 BMW_Sales_Raw.csv                  # Original raw dataset (4,569 records, 29 columns)
├── 📄 BMW_Sales_Cleaned_v1.csv           # Phase 2 output — cleaned & flagged dataset
├── 📄 BMW_Sales_Phase4_Ready.csv         # Final dataset used for SQL + Power BI
│
├── 📓 BMW_Phase3_Analysis.ipynb          # Phase 3 — Full EDA Jupyter Notebook
├── 📓 BMW_SQL_DATA_LOAD.ipynb            # Phase 4 — MySQL data loading via SQLAlchemy
│
├── 🗄️  BMW_SQL_Analysis.sql              # Phase 4 — All 8 SQL business queries
│
├── 📊 BMW_Sales_Dashboard.pbix           # Power BI Dashboard file (4 pages, interactive)
│
├── 🖼️  dashboard_overview.png            # Page 1 — Executive Overview
├── 🖼️  dashboard_revenue_trend.png       # Page 2 — Revenue & Profit Analysis
├── 🖼️  dashboard_region.png              # Page 3 — Regional Performance
├── 🖼️  dashboard_model.png               # Page 4 — Model Portfolio Analysis
│
├── 📝 BMW_Project_Report.docx            # Complete project documentation report
└── 📝 BMW_SQL_Analysis_Report.docx       # SQL analysis findings report
```

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|---|---|
| **Python** | Data cleaning, EDA, MySQL data loading |
| **Pandas** | Data manipulation & transformation |
| **Matplotlib & Seaborn** | EDA visualisations across all phases |
| **MySQL** | Database engine for all business queries |
| **MySQL Workbench** | SQL query development & execution |
| **SQLAlchemy** | Python–MySQL integration for bulk data loading |
| **Power BI Desktop** | Interactive 4-page BI dashboard |
| **Jupyter Notebook** | End-to-end analysis environment |

---

## 👨‍💻 Author

**Devesh Shukla**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/devesh-shukla23)
[![GitHub](https://img.shields.io/badge/GitHub-DeveshShukla23-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/DeveshShukla23)
[![Email](https://img.shields.io/badge/Email-Reach_Me-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:shukladevesh40@gmail.com)

---

⭐ **If you find this project useful, consider giving it a star!** ⭐
