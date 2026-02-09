# 🏬 Northwind PSQL Analysis – KPI Report

---

## Project Overview

This project analyzes the **Northwind PostgreSQL dataset** to extract key business insights related to:

* Sales performance
* Profitability
* Customer behavior
* Regional trends
* Discount impact
* Operational efficiency

The goal is to understand **drivers of profit and loss** and identify opportunities to improve **revenue, pricing strategy, and business growth**.

> ⚠️ Dataset is not included due to licensing restrictions.

---

# KPI Questions & Answers

## 1️⃣ Total Orders

**Question:** What is the total number of orders in the system?
**Answer:** 9,994

---

## 2️⃣ Total Sales Revenue

**Question:** What is the total revenue generated from all orders?
**Answer:** 2,297,200.86

---

## 3️⃣ Total Profit

**Question:** What is the total profit from all orders?
**Answer:** 286,397.02

---

## 4️⃣ Average Order Value (AOV)

**Question:** What is the average order value?
**Answer:** 229.86

---

## 5️⃣ Sales by Category

**Question:** What are the total sales by product category?

| Category        | Sales      |
| --------------- | ---------- |
| Technology      | 836,154.03 |
| Furniture       | 741,999.80 |
| Office Supplies | 719,047.03 |

---

## 6️⃣ Most Profitable Sub-Categories

**Question:** Which sub-categories generate the highest profit?

| Sub-Category | Profit    |
| ------------ | --------- |
| Copiers      | 55,617.82 |
| Phones       | 44,515.73 |
| Accessories  | 41,936.64 |
| Paper        | 34,053.57 |
| Binders      | 30,221.76 |
| Chairs       | 26,590.17 |
| Storage      | 21,278.83 |
| Appliances   | 18,138.01 |

---

## 7️⃣ Highest Loss-Making Sub-Categories

**Question:** Which sub-categories generate the highest losses?

| Sub-Category | Profit     |
| ------------ | ---------- |
| Tables       | -17,725.48 |
| Bookcases    | -3,472.56  |
| Supplies     | -1,189.10  |
| Fasteners    | 949.52     |
| Machines     | 3,384.76   |
| Labels       | 5,546.25   |
| Art          | 6,527.79   |
| Envelopes    | 6,964.18   |

---

## 8️⃣ Sales & Profit by Region

**Question:** What are sales and profit by region?

| Region  | Sales      | Profit     |
| ------- | ---------- | ---------- |
| West    | 725,457.82 | 108,418.45 |
| East    | 678,781.24 | 91,522.78  |
| Central | 501,239.89 | 39,706.36  |
| South   | 391,721.91 | 46,749.43  |

---

## 9️⃣ Most Profitable Customer Segment

**Question:** Which customer segment is the most profitable?

| Segment     | Profit     | Share  |
| ----------- | ---------- | ------ |
| Consumer    | 134,119.21 | 46.83% |
| Corporate   | 91,979.13  | 32.12% |
| Home Office | 60,298.68  | 21.05% |

---

## 10️⃣ Average Discount by Category

**Question:** What is the average discount by category?

| Category        | Avg Discount |
| --------------- | ------------ |
| Furniture       | 0.17         |
| Office Supplies | 0.16         |
| Technology      | 0.13         |

---

## 11️⃣ Discount vs Profit Impact

**Question:** How does discount level affect profitability?

| Discount Level | Total Profit | Avg Profit |
| -------------- | ------------ | ---------- |
| No discount    | 320,987.60   | 66.90      |
| Low            | 100,785.47   | 26.50      |
| Medium         | -35,817.47   | -77.86     |
| High           | -28,944.19   | -134.62    |
| Very High      | -70,614.40   | -98.35     |

---

## 12️⃣ Top States by Sales

**Question:** Which states generate the highest sales?

| State      | Sales      |
| ---------- | ---------- |
| California | 457,687.63 |
| New York   | 310,876.27 |
| Texas      | 170,188.05 |
| Washington | 138,641.27 |

---

## 13️⃣ States with Highest Losses

**Question:** Which states generate the highest losses?

| State        | Profit     |
| ------------ | ---------- |
| Texas        | -25,729.36 |
| Ohio         | -16,971.38 |
| Pennsylvania | -15,559.96 |

---

## 14️⃣ Top 10 Products by Sales

**Question:** Which products have the highest sales revenue?

| Product ID      | Sales     |
| --------------- | --------- |
| TEC-CO-10004722 | 61,599.82 |
| OFF-BI-10003527 | 27,453.38 |
| TEC-MA-10002412 | 22,638.48 |
| FUR-CH-10002024 | 21,870.58 |
| OFF-BI-10001359 | 19,823.48 |
| OFF-BI-10000545 | 19,024.50 |
| TEC-CO-10001449 | 18,839.69 |
| TEC-MA-10001127 | 18,374.90 |
| OFF-BI-10004995 | 17,965.07 |
| OFF-SU-10000151 | 17,030.31 |

---

## 15️⃣ Shipping Mode Usage

**Question:** What is the distribution of shipping modes?

| Shipping Mode  | Orders |
| -------------- | ------ |
| Standard Class | 5,968  |
| Second Class   | 1,945  |
| First Class    | 1,538  |
| Same Day       | 543    |

---

## 16️⃣ Delivery Time Impact on Profit

**Question:** How does delivery time affect profit?

| Delivery Time | Avg Profit | Total Profit |
| ------------- | ---------- | ------------ |
| Short         | 35.62      | 60,659.34    |
| Medium        | 25.94      | 98,010.69    |
| Long          | 27.29      | 92,009.17    |
| Very Long     | 32.74      | 20,331.85    |
| No Days       | 29.65      | 15,385.97    |

---

## Overall Business Insights

* Technology category drives the highest revenue.
* Heavy discounting leads to significant losses.
* West region and Consumer segment are the most profitable.
* Furniture (especially Tables & Bookcases) negatively impacts margins.

---

## Tools & Skills Used

* SQL (CTEs, CASE WHEN, Aggregations)
* KPI Analysis
* Business Intelligence
* Profitability Analysis
* Customer & Regional Segmentation
* Pricing Strategy Evaluation

---

## Reproducibility Steps

1. Download dataset from Kaggle.
2. Load into PostgreSQL database.
3. Execute analysis queries.
4. Generate KPIs & reports.

---

**Dataset:** Sample – Northwind PSQL CSV
