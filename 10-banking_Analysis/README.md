# 🏦 Bank Marketing SQL Analysis – KPI Report

---

## 📌 Project Overview

This project analyzes the **Bank Marketing Dataset** using **SQL** to extract key insights related to:

- Customer demographics
- Financial behavior
- Loan distribution
- Campaign effectiveness
- Subscription outcomes

The goal is to understand **customer profiles** and evaluate **marketing campaign performance** to support better decision-making.

> ⚠️ Dataset is not included due to licensing restrictions.

---

# 📊 15 SQL KPIs & Analysis Questions

---

## 1️⃣ Total Customers

**EN:** What is the total number of customers in the dataset?  
**AR:** ما هو إجمالي عدد العملاء في قاعدة البيانات؟

**Answer:** **45,212**

---

## 2️⃣ Customers by Age Group

**EN:** How are customers distributed across different age groups?  
**AR:** كيف يتم توزيع العملاء حسب الفئات العمرية؟

| Age Group | Percentage (%) | Customers |
|---------|---------------|-----------|
| Old     | 20.47         | 9,255     |
| Adult  | 15.55         | 7,030     |
| Average Age | 63.98     | 28,926    |

---

## 3️⃣ Customers by Job Type

**EN:** How many customers are there per job type?  
**AR:** كم عدد العملاء حسب نوع الوظيفة؟

| Job Type       | Customers |
|---------------|-----------|
| Blue-collar   | 9,732     |
| Management    | 9,458     |
| Admin         | 5,171     |
| Services      | 4,154     |
| Entrepreneur  | 1,487     |
| Housemaid     | 1,240     |
| Retired       | 2,264     |

---

## 4️⃣ Customers by Marital Status

**EN:** How many customers are married, single, or divorced?  
**AR:** كم عدد العملاء حسب الحالة الاجتماعية؟

| Marital Status | Customers |
|---------------|-----------|
| Married       | 27,214    |
| Single        | 12,790    |
| Divorced      | 5,207     |

---

## 5️⃣ Customers by Education Level

**EN:** How many customers are in each education level?  
**AR:** كم عدد العملاء حسب المستوى التعليمي؟

| Education Level | Customers |
|----------------|-----------|
| Secondary      | 23,202    |
| Tertiary       | 13,301    |
| Primary        | 6,851     |
| Unknown        | 1,857     |

---

## 6️⃣ Customers with Credit Default

**EN:** How many customers have a credit default?  
**AR:** كم عدد العملاء الذين لديهم تخلف عن السداد؟

**Answer:** **815**

---

## 7️⃣ Customers by Balance Range

**EN:** What is the distribution of customers by account balance?  
**AR:** كيف يتم توزيع العملاء حسب رصيد الحساب؟

| Balance Range | Customers |
|--------------|-----------|
| Low          | 45,147    |
| Medium       | 57        |
| High         | 7         |

---

## 8️⃣ Customers with Housing Loan

**EN:** How many customers have a housing loan?  
**AR:** كم عدد العملاء الذين لديهم قرض سكني؟

**Answer:** **25,130**

---

## 9️⃣ Customers with Personal Loan

**EN:** How many customers have a personal loan?  
**AR:** كم عدد العملاء الذين لديهم قرض شخصي؟

**Answer:** **7,245**

---

## 🔟 Customers by Contact Communication Type

**EN:** How many customers were contacted via each communication channel?  
**AR:** كم عدد العملاء الذين تم الاتصال بهم حسب وسيلة الاتصال؟

| Contact Type | Customers |
|-------------|-----------|
| Cellular    | 29,285    |
| Unknown     | 13,020    |
| Telephone   | 2,906     |

---

## 1️⃣1️⃣ Customers by Last Contact Day

**EN:** How many customers were contacted on each day of the month?  
**AR:** كم عدد العملاء الذين تم الاتصال بهم في كل يوم من الشهر؟

| Day | Customers |
|----|-----------|
| 1  | 322       |
| 2  | 1,293     |
| 3  | 1,079     |
| 4  | 1,445     |
| 5  | 1,910     |

---

## 1️⃣2️⃣ Average Duration of Last Contact

**EN:** What is the average duration of the last contact (seconds)?  
**AR:** ما هو متوسط مدة آخر اتصال مع العملاء؟

**Answer:** **258.16 seconds**

---

## 1️⃣3️⃣ Campaign Effectiveness

**EN:** How many contacts were made per campaign and how many led to a subscription?  
**AR:** كم عدد الاتصالات لكل حملة وكم منها أدى للاشتراك؟

| Campaign | Contacts | Subscriptions |
|--------|----------|---------------|
| 8      | 540      | 32            |
| 10     | 266      | 14            |
| 12     | 155      | 4             |

---

## 1️⃣4️⃣ Previous Campaign Contacts & Outcomes

**EN:** What were the outcomes of previous campaigns?  
**AR:** ما نتائج الحملات التسويقية السابقة؟

| Previous Contacts | Outcome  | Customers |
|------------------|----------|-----------|
| 1                | Failure  | 1,707     |
| 1                | Other    | 591       |
| 1                | Success  | 473       |
| 10               | Failure  | 28        |
| 10               | Other    | 19        |

---

## 1️⃣5️⃣ Subscription Outcome

**EN:** How many customers subscribed vs not subscribed?  
**AR:** كم عدد العملاء الذين اشتركوا مقابل غير المشتركين؟

**Subscribed (Yes):** **5,289**  
**Not Subscribed (No):** **39,923**

---

## 📌 Overall Insights

- Majority of customers have **low account balances**.
- **Married customers** represent the largest segment.
- Cellular contact is the **most effective communication channel**.
- Subscription rate remains **relatively low**, indicating room for campaign optimization.

---

## 🛠 Tools & Skills Used

- SQL (CTEs, CASE WHEN, Aggregations)
- KPI Analysis
- Customer Segmentation
- Marketing Campaign Analysis
- Business Intelligence

---

## 🔁 Reproducibility Steps

1. Download the Bank Marketing dataset.
2. Load data into PostgreSQL.
3. Execute SQL KPI queries.
4. Generate analysis & insights.

---

**Dataset:** Bank Marketing Dataset (CSV)
