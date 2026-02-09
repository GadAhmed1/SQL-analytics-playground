# 🎓 E‑Learning Dataset – SQL KPI Analysis Report

---

## Project Overview

This project analyzes an **E‑Learning students dataset** using PostgreSQL to extract key insights related to:

* Student demographics
* Education background
* Institution types
* IT vs Non‑IT specialization
* Learning adaptivity level
* Internet & network usage
* Load‑shedding impact
* Class duration behavior

The goal is to understand **factors affecting students’ adaptivity and learning performance** and provide data‑driven insights to improve **digital education strategies and infrastructure planning**.

> ⚠️ Dataset is not included due to licensing restrictions.

---

# KPI Questions & Answers

---

## 1️⃣ Total Students

**EN:** What is the total number of students in the dataset?  
**AR:** ما هو إجمالي عدد الطلبة في قاعدة البيانات؟

**Answer:** 1,205

---

## 2️⃣ Students by Gender

**EN:** How many students are there by gender?  
**AR:** كم عدد الطلبة حسب الجنس؟

| Gender | Percentage | Count |
| ------ | ---------- | ----- |
| Girl   | 44.98%     | 542   |
| Boy    | 55.02%     | 663   |

---

## 3️⃣ Students by Age Group

**EN:** How are students distributed across age groups?  
**AR:** كيف يتم توزيع الطلبة حسب الفئات العمرية؟

| Age Group | Percentage | Count |
| --------- | ---------- | ----- |
| 1–5       | 6.72%      | 81    |
| 6–10      | 4.23%      | 51    |
| 11–15     | 29.29%     | 353   |
| 16–20     | 23.07%     | 278   |
| 21–25     | 31.04%     | 374   |
| 26–30     | 5.64%      | 68    |

---

## 4️⃣ Students by Education Level

**EN:** How many students belong to each education level?  
**AR:** كم عدد الطلبة حسب المستوى التعليمي؟

| Education Level | Percentage | Count |
| --------------- | ---------- | ----- |
| School          | 43.98%     | 530   |
| College         | 18.17%     | 219   |
| University      | 37.84%     | 456   |

---

## 5️⃣ Students by Institution Type

**EN:** How many students are from government vs non‑government institutions?  
**AR:** كم عدد الطلبة من المؤسسات الحكومية وغير الحكومية؟

| Institution Type | Percentage | Count |
| ---------------- | ---------- | ----- |
| Non‑Government   | 68.30%     | 823   |
| Government       | 31.70%     | 382   |

---

## 6️⃣ IT Students vs Non‑IT Students

**EN:** How many students are IT students vs non‑IT students?  
**AR:** كم عدد الطلبة المتخصصين في تكنولوجيا المعلومات مقابل غير المتخصصين؟

| Category        | Percentage | Count |
| --------------- | ---------- | ----- |
| IT Students     | 25.23%     | 304   |
| Non‑IT Students | 74.77%     | 901   |

---

## 7️⃣ Students by Location & High Adaptivity (Advanced)

**EN:** Which location has the highest number of students with high adaptivity level, and what percentage do they represent of that location?

**AR:** ما هو الموقع الذي يحتوي على أكبر عدد من الطلبة ذوي مستوى التكيف العالي؟ وكم تمثل نسبتهم من إجمالي الطلبة في هذا الموقع؟

| High Adaptivity | Count |
| --------------- | ----- |
| Yes             | 92    |
| No              | 8     |

---

## 8️⃣ Students by Load‑Shedding Frequency

**EN:** How many students experience low or high load‑shedding?  
**AR:** كم عدد الطلبة الذين يعانون من انقطاع الكهرباء بدرجات منخفضة أو عالية؟

| Load‑Shedding Level | Percentage | Count |
| ------------------- | ---------- | ----- |
| High                | 16.68%     | 201   |
| Low                 | 83.32%     | 1004  |

---

## 9️⃣ Financial Condition vs Adaptivity Level

**EN:** How does financial condition affect students’ adaptivity level? Compare the percentage of high adaptivity students in each financial group.

**AR:** كيف يؤثر الوضع المالي على مستوى تكيف الطلبة؟ قارن نسبة الطلبة ذوي التكيف العالي في كل فئة مالية.

| Financial Condition | High Adaptivity % |
| ------------------- | ----------------- |
| Poor                | 22%               |
| Mid                 | 36%               |
| Rich                | 42%               |

---

## 🔟 Network Type & Class Duration (Advanced)

**EN:** Do students using 4G or 5G networks attend longer classes on average than students using 3G?

**AR:** هل الطلبة الذين يستخدمون شبكات 4G أو 5G يحضرون حصصًا أطول في المتوسط مقارنة بمستخدمي 3G؟

**Answer:** Yes – higher‑speed networks are associated with longer average class duration.

---

## 1️⃣1️⃣ LMS Usage

**EN:** How many students use self‑learning management systems (LMS)?  
**AR:** كم عدد الطلبة الذين يستخدمون أنظمة إدارة التعلم الذاتي؟

**Answer:** 210 students

---

## 1️⃣2️⃣ Adaptivity Level Distribution

**EN:** How are students distributed by adaptivity level?  
**AR:** كيف يتم توزيع الطلبة حسب مستوى التكيف مع التعلم؟

| Adaptivity Level | Percentage | Count |
| ---------------- | ---------- | ----- |
| High             | 8.30%      | 100   |
| Moderate         | 51.87%     | 625   |
| Low              | 39.83%     | 480   |

---

## 1️⃣3️⃣ Internet Type by Adaptivity Level

**EN:** How many students use each internet type for each adaptivity level?  
**AR:** كم عدد الطلبة لكل نوع إنترنت حسب مستوى التكيف؟

| Internet Type | Percentage | Count |
| ------------- | ---------- | ----- |
| Mobile Data   | 57.68%     | 695   |
| WiFi          | 42.32%     | 510   |

---

## 1️⃣4️⃣ Average Class Duration by Device

**EN:** What is the average class duration for each device type?  
**AR:** ما هو متوسط مدة الحصص لكل نوع جهاز؟

| Device   | Avg Duration (Hours) |
| -------- | -------------------- |
| Mobile   | 1.82                 |
| Computer | 2.36                 |
| Tablet   | 2.83                 |

---

## 1️⃣5️⃣ Load‑Shedding vs Class Duration

**EN:** What is the average class duration for each load‑shedding level?  
**AR:** ما هو متوسط مدة الحصص لكل مستوى من مستويات انقطاع الكهرباء؟

| Load‑Shedding Level | Avg Duration (Hours) |
| ------------------- | -------------------- |
| Low                 | 1.89                 |
| High                | 2.06                 |

---

# Overall Insights

* Most students are aged between **11 and 25 years**.
* **Non‑government institutions** dominate the dataset.
* IT students represent only **25%** of total students.
* Better **financial condition** correlates with higher adaptivity.
* **High discounts in infrastructure (load‑shedding)** negatively affect learning stability.
* **Tablets and laptops** provide longer class engagement than mobile devices.
* Students using **mobile data** slightly outnumber WiFi users.

---

## Tools & Skills Used

* PostgreSQL
* SQL Aggregations (COUNT, AVG)
* CASE WHEN logic
* GROUP BY (single & multiple columns)
* KPI design
* Educational data analysis

---

## Reproducibility Steps

1. Load the dataset into PostgreSQL.
2. Clean column names and data types.
3. Write KPI queries using SQL.
4. Export results into tables.
5. Build the report using Markdown.

---

**Dataset:** E‑Learning Students Dataset (CSV)
