# 🛒 Transactions Analysis – KPI Report

---

## Project Overview

This project analyzes a **Sales Transactions dataset** to extract key business insights related to:

* Sales performance & Revenue drivers
* Product popularity (Volume vs. Value)
* Pricing strategy analysis
* High-value transaction trends
* Operational insights (Peak sales days)

The goal is to understand **consumer purchasing behavior** and identify opportunities to maximize **revenue per transaction**.

> ⚠️ Dataset is simulated for analysis purposes.

---

# KPI Questions & Answers

## 1️⃣ Total Transactions

**Question:** What is the total number of transactions recorded?
**Answer:** 9,741

---

## 2️⃣ Total Sales Revenue

**Question:** What is the total revenue generated from all transactions?
**Answer:** 82,408.86

---

## 3️⃣ Average Transaction Value (ATV)

**Question:** What is the average value spent per transaction?
**Answer:** 8.46

---

## 4️⃣ Most Sold Product (By Quantity)

**Question:** Which product has the highest sales volume?
**Answer:** "Juice" (1,499 Units)

---

## 5️⃣ Best Selling Products (By Revenue)

**Question:** Which products generate the most revenue?

| Product   | Revenue   |
| :-------- | :-------- |
| Sandwich  | 13,484.00 |
| Juice     | 13,324.00 |
| Smoothie  | 13,132.00 |

---

## 6️⃣ Product Performance Report

**Question:** Comprehensive breakdown of product metrics (Volume, Revenue, Avg Price).

| Product  | Qty Sold | Total Revenue | Avg Price/Unit |
| :------- | :------- | :------------ | :------------- |
| Sandwich | 1,131    | 13,484.00     | 11.92          |
| Cake     | 1,139    | 10,341.00     | 9.08           |
| Coffee   | 1,165    | 7,184.00      | 6.17           |

---

## 7️⃣ Average Base Price Analysis

**Question:** What is the average base unit price for key items?

| Product  | Avg Price |
| :------- | :-------- |
| Salad    | 4.89      |
| Sandwich | 3.96      |
| Smoothie | 3.95      |
| Cake     | 3.00      |

---

## 8️⃣ Peak Sales Day

**Question:** Which day recorded the highest total sales?
**Answer:** Day 6 (Revenue: 7,251.00)

---

## 9️⃣ Least Sold Product

**Question:** Which product has the lowest sales performance?
**Answer:** "error" (Revenue: 2,364.50)

---

## 🔟 High Value Transactions

**Question:** Examples of transactions exceeding 10.00 in value.

| Transaction ID | Product  | Price | Qty | Total | Date       |
| :------------- | :------- | :---- | :-- | :---- | :--------- |
| TXN_4977031    | Cake     | 4.00  | 3   | 12.00 | 2023-05-16 |
| TXN_2602893    | Smoothie | 5.00  | 4   | 20.00 | 2023-03-31 |
| TXN_6699534    | Sandwich | 4.00  | 4   | 16.00 | 2023-10-28 |

---

## Overall Business Insights

* **Volume vs. Value:** While "Juice" is the most popular item by quantity, "Sandwich" drives the highest total revenue due to a higher price point per transaction.
* **Pricing Strategy:** There is a variance in unit prices (e.g., Sandwich base price ~3.96 vs. realized avg price in reports ~11.92), suggesting upsells or combos are effective.
* **Operational Peak:** Day 6 is a critical revenue driver, indicating a need for higher staffing or stock levels on that specific day.
* **Data Quality:** An item labeled "error" exists in the sales records, requiring data cleaning or system investigation.

---

## Tools & Skills Used

* SQL (Aggregations, Ordering, Filtering)
* Revenue Analysis
* Product Performance Metrics
* Data Cleaning Identification

---

## Reproducibility Steps

1. Load dataset into SQL environment.
2. Run data quality check (identify "error" entries).
3. Execute aggregation queries for KPIs.
4. Generate final report.

---

**Dataset:** Transactions SQL Dataset