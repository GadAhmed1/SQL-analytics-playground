# 🏬 Superstore Sales Data Analysis

## 📌 Project Overview
This project analyzes a **Superstore Sales dataset** sourced from Kaggle to uncover insights about  
sales performance, profitability, customer behavior, regional trends,  
discount impact, and operational efficiency.

The analysis focuses on understanding **what drives profit and losses**  
and identifying key areas to improve **revenue, pricing strategy, and business growth**.

> ⚠️ Note: The dataset itself is not included in this repository due to licensing restrictions.

---

## 📊 Key KPIs & Insights

### 1️⃣ Total Orders
- **Total number of orders:** **9,994**

---

### 2️⃣ Total Sales & Profit
- **Total Sales:** 2,297,200.86  
- **Total Profit:** 286,397.02  

---

### 3️⃣ Average Order Value (AOV)
- **Average Order Value:** **229.86**

---

### 4️⃣ Sales by Product Category

| Category | Total Sales |
|---------|-------------|
| Technology | 836,154.03 |
| Furniture | 741,999.80 |
| Office Supplies | 719,047.03 |

> Technology is the highest revenue-generating category.

---

### 5️⃣ Most Profitable Sub-Categories

| Sub-Category | Profit |
|-------------|--------|
| Copiers | 55,617.82 |
| Phones | 44,515.73 |
| Accessories | 41,936.64 |
| Paper | 34,053.57 |
| Binders | 30,221.76 |
| Chairs | 26,590.17 |
| Storage | 21,278.83 |
| Appliances | 18,138.01 |

---

### 6️⃣ Highest Loss-Making Sub-Categories

| Sub-Category | Profit |
|-------------|--------|
| Tables | -17,725.48 |
| Bookcases | -3,472.56 |
| Supplies | -1,189.10 |
| Fasteners | 949.52 |
| Machines | 3,384.76 |
| Labels | 5,546.25 |
| Art | 6,527.79 |
| Envelopes | 6,964.18 |

> Tables and Bookcases are the most loss-driving products.

---

### 7️⃣ Sales & Profit by Region

| Region | Sales | Profit |
|--------|-------|--------|
| South | 391,721.91 (17.05%) | 46,749.43 (16.32%) |
| West | 725,457.82 (31.58%) | 108,418.45 (37.86%) |
| East | 678,781.24 (29.55%) | 91,522.78 (31.96%) |
| Central | 501,239.89 (21.82%) | 39,706.36 (13.86%) |

> The West region leads both in sales and profitability.

---

### 8️⃣ Most Profitable Customer Segment

| Segment | Profit | Share |
|---------|--------|-------|
| Consumer | 134,119.21 | 46.83% |
| Corporate | 91,979.13 | 32.12% |
| Home Office | 60,298.68 | 21.05% |

---

### 9️⃣ Average Discount by Category

| Category | Avg Discount |
|---------|--------------|
| Furniture | 0.17 |
| Office Supplies | 0.16 |
| Technology | 0.13 |

---

### 🔟 Discount vs Profit Analysis

| Discount Level | Profit | Avg Profit |
|---------------|--------|------------|
| No discount | 320,987.60 | 66.90 |
| Low | 100,785.47 | 26.50 |
| Medium | -35,817.47 | -77.86 |
| High | -28,944.19 | -134.62 |
| Very High | -70,614.40 | -98.35 |

> Higher discounts strongly correlate with negative profitability.

---

### 1️⃣1️⃣ Top States by Sales

| State | Sales |
|-------|-------|
| California | 457,687.63 |
| New York | 310,876.27 |
| Texas | 170,188.05 |
| Washington | 138,641.27 |

---

### 1️⃣2️⃣ States with Highest Losses

| State | Profit |
|-------|--------|
| Texas | -25,729.36 |
| Ohio | -16,971.38 |
| Pennsylvania | -15,559.96 |

---

### 1️⃣3️⃣ Top 10 Products by Sales

- TEC-CO-10004722 – 61,599.82  
- OFF-BI-10003527 – 27,453.38  
- TEC-MA-10002412 – 22,638.48  
- FUR-CH-10002024 – 21,870.58  
- OFF-BI-10001359 – 19,823.48  
- OFF-BI-10000545 – 19,024.50  
- TEC-CO-10001449 – 18,839.69  
- TEC-MA-10001127 – 18,374.90  
- OFF-BI-10004995 – 17,965.07  
- OFF-SU-10000151 – 17,030.31  

---

### 1️⃣4️⃣ Shipping Mode Usage

| Shipping Mode | Orders |
|--------------|--------|
| Standard Class | 5,968 |
| Second Class | 1,945 |
| First Class | 1,538 |
| Same Day | 543 |

> Standard Class dominates shipping preferences.

---

### 1️⃣5️⃣ Delivery Time Impact on Profit

| Delivery Time | Avg Profit | Total Profit |
|---------------|-----------|--------------|
| Short | 35.62 | 60,659.34 |
| Medium | 25.94 | 98,010.69 |
| Long | 27.29 | 92,009.17 |
| Very Long | 32.74 | 20,331.85 |
| No Days | 29.65 | 15,385.97 |

---

## 📌 Overall Insight
The analysis reveals that **Technology products drive the highest revenue**,  
while **deep discounting leads to significant losses**, especially in Furniture.

The **West region and Consumer segment** contribute most to profitability,  
whereas certain states and sub-categories consistently reduce overall margins.

Optimizing discount strategies and improving product portfolio decisions  
can significantly increase total profit.

---

## 🛠️ Tools & Skills Used
- SQL (CTEs, CASE WHEN, Aggregations, GROUP BY, HAVING)
- KPI & Business Analysis
- Profitability Analysis
- Regional & Customer Segmentation
- Pricing & Discount Analytics

---

## 🔁 Reproducibility
To reproduce this analysis:

1. Download the dataset from Kaggle.
2. Load the data into your preferred SQL database.
3. Execute the SQL queries to generate the KPIs.

---

## 📂 Dataset
Sample - Superstore.csv Dataset  