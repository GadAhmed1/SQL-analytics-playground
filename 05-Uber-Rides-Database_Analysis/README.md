# 🚕 Ride Booking Data Analysis

## 📌 Project Overview
This project analyzes a **Ride Booking dataset** sourced from Kaggle to uncover insights about  
ride demand, revenue performance, cancellations, customer satisfaction,  
driver efficiency, and operational bottlenecks.

The analysis focuses on understanding **what drives successful ride completion**  
and identifying key areas to improve **revenue, efficiency, and customer experience**.

> ⚠️ Note: The dataset itself is not included in this repository due to licensing restrictions.

---

## 📊 Key KPIs & Insights

### 1️⃣ Total Bookings
- **Total number of bookings:** **150,000**

---

### 2️⃣ Booking Completion Ratio
(Completed vs Non-Completed Rides)

| Status | Bookings | Percentage |
|------|----------|------------|
| Completed | 93,000 | 62% |
| Non-Completed | 57,000 | 38% |

> A relatively high non-completion rate highlights operational challenges.

---

### 3️⃣ Revenue Overview
- **Total Booking Revenue:** 51,846,183  
- **Average Revenue per Ride:** 508.30  

---

### 4️⃣ Revenue by Vehicle Type

| Vehicle Type | Total Revenue | Avg Revenue |
|-------------|---------------|-------------|
| Auto | 12,878,422 | 506.73 |
| Bike | 7,837,697 | 510.20 |
| eBike | 3,618,485 | 503.90 |
| Go Mini | 10,338,496 | 507.68 |
| Go Sedan | 9,369,719 | 511.50 |
| Premier Sedan | 6,275,332 | 509.57 |
| Uber XL | 1,528,032 | 501.82 |

---

### 5️⃣ Peak Booking Hours
(Top 5 busiest hours)

| Hour | Bookings |
|----|----------|
| 18:00 | 12,397 |
| 19:00 | 11,047 |
| 17:00 | 11,044 |
| 16:00 | 9,633 |
| 20:00 | 9,630 |

> Ride demand peaks during evening hours.

---

### 6️⃣ Cancellation Rate Analysis

| Cancellation Type | Bookings | Percentage |
|------------------|----------|------------|
| Cancelled by Customer | 10,500 | 7% |
| Cancelled by Driver | 27,000 | 18% |

> Driver-side cancellations are the dominant cause of ride failure.

---

### 7️⃣ Top Cancellation Reasons

**Customer Reasons**
- Wrong Address  
- Change of Plans  
- Driver Not Moving Towards Pickup  
- Driver Asked to Cancel  
- AC Not Working  

**Driver Reasons**
- Customer Related Issue  
- Customer Was Sick  
- Personal & Car Related Issues  
- More Than Permitted People  

---

### 8️⃣ Driver Performance KPI
(Average Driver Rating by Vehicle Type)

| Vehicle Type | Avg Driver Rating |
|-------------|------------------|
| Uber XL | 4.24 |
| Bike | 4.23 |
| eBike | 4.23 |
| Auto | 4.23 |
| Go Sedan | 4.23 |
| Premier Sedan | 4.23 |
| Go Mini | 4.23 |

---

### 9️⃣ Customer Satisfaction KPI
(Average Customer Rating by Payment Method)

| Payment Method | Avg Rating |
|--------------|------------|
| UPI | 4.40 |
| Cash | 4.41 |
| Credit Card | 4.41 |
| Debit Card | 4.41 |
| Uber Wallet | 4.41 |

---

### 🔟 No Driver Found Analysis
- **Percentage of rides with no driver assigned:** **7%**

> Indicates supply-demand imbalance during peak hours.

---

### 1️⃣1️⃣ Distance vs Booking Value
(Average booking value by distance range)

| Distance Range | Avg Booking Value |
|---------------|------------------|
| 0–5 km (Short) | 505.11 |
| 5–10 km (Medium) | 502.16 |
| 10+ km (Long) | 509.50 |

---

### 1️⃣2️⃣ Incomplete Rides – Root Cause

| Reason | Percentage |
|------|------------|
| Customer Demand | 2.03% |
| Vehicle Breakdown | 2.01% |
| Other Issues | 1.97% |

---

### 1️⃣3️⃣ Payment Method Preference
(Total revenue contribution)

| Payment Method | Total Revenue |
|--------------|---------------|
| UPI | 23,345,101 |
| Cash | 12,895,649 |
| Uber Wallet | 6,200,898 |
| Credit Card | 5,224,025 |
| Debit Card | 4,180,510 |

---

### 1️⃣4️⃣ Location Intelligence
(Top 5 pickup locations by total booking value)

| Pickup Location | Revenue |
|----------------|---------|
| Barakhamba Road | 341,154 |
| Khandsa | 338,502 |
| Subhash Chowk | 329,386 |
| Pataudi Chowk | 328,572 |
| Badarpur | 327,193 |

---

### 1️⃣5️⃣ Advanced KPI – Ride Efficiency Score
**Efficiency Score = Ride Distance / Avg CTAT**

Top 10 most efficient rides:
- CNR3177816  
- CNR8170634  
- CNR6929154  
- CNR6390557  
- CNR9856976  
- CNR5227072  
- CNR7401745  
- CNR6940607  
- CNR7688244  
- CNR6399446  

---

## 📌 Overall Insight
The dataset shows that **evening hours drive peak demand**,  
**UPI dominates payments**, and **driver-side cancellations**  
represent the biggest operational bottleneck.

Improving driver availability during peak hours and reducing  
driver cancellations can significantly boost ride completion  
rates and overall revenue.

---

## 🛠️ Tools & Skills Used
- SQL (CTEs, CASE WHEN, Aggregations, HAVING)
- KPI & Business Analysis
- Time-based Analysis
- Operational & Revenue Analytics

---

## 🔁 Reproducibility
To reproduce this analysis:

1. Download the dataset from the Kaggle link above.
2. Load the data into your preferred SQL database.
3. Run the SQL queries provided in this repository to generate the KPIs.


---

## 📂 Dataset
Uber Ride Analytics Dataset  
Source: Kaggle  

🔗 Dataset Link:  
https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard

> The dataset is publicly available on Kaggle and is not included in this repository.
> All analysis results in this project are derived from this source.
