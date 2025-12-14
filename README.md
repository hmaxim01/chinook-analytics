# 🎵 Chinook Sales Analytics Dashboard

## 📌 Overview
This project analyzes digital music sales data from the **Chinook sample database** using a fully relational **PostgreSQL** backend and a multi-page **Power BI** dashboard.

The objective is to demonstrate proficiency in:  

- **Relational database design**  
- **SQL data modeling and view creation**  
- **Business-focused analytics**  
- **Power BI dashboard development**  

All metrics are derived from **invoice-line level transactional data**, ensuring accuracy and flexibility in aggregation.

---

## 🛠️ Tools & Technologies
- **Database:** PostgreSQL  
- **Query Language:** SQL  
- **Business Intelligence:** Power BI  
- **Data Model:** Normalized relational schema (fact & dimension tables)  

---

## 📂 Data Source
The analysis uses the **Chinook Database**, a widely used relational dataset that simulates a digital music store.

**Core Tables:**  
- Customer  
- Invoice  
- InvoiceLine  
- Track  
- Album  
- Artist  
- Genre  

---

## 🧱 Data Modeling Approach
The project intentionally preserves the **relational structure** of the database rather than flattening data prematurely.

---

## 🔑 Core Analytical View
A detailed fact view (**v_sales_detailed**) was created by joining:  
- Invoice and InvoiceLine data  
- Track, Album, Artist, and Genre dimensions  

This view serves as the **single source of truth** for all reporting.

**Revenue Logic:**  
```sql
revenue = unit_price * quantity

## 📊 Key Metrics & KPIs

All business logic is centralized in **SQL views** and **Power BI measures**.

**Core KPIs:**
- **Total Revenue**
- **Tracks Sold**
- **Average Revenue per Customer**
- **Yearly Active Customers**

**Analytical Breakdowns:**
- Revenue by Genre
- Revenue by Artist
- Top Tracks by Revenue
- Yearly Revenue Trends

---

## 📈 Dashboard Structure

The Power BI report is organized into **four pages**:

**Executive Overview**
- High-level KPI cards
- Monthly revenue trend
- Summary performance indicators

**Sales Analysis**
- Revenue by genre and artist
- Top tracks by revenue
- Product performance insights

**Customer Insights**
- Yearly active customers
- Geographic revenue distribution
- Customer purchasing patterns (LTV)

---

## 🔍 Key Insights
- Revenue is concentrated among a **small number of top-performing genres and artists**
- A **limited subset of tracks** generates a disproportionate share of total revenue
- Invoice-line level modeling enables **accurate and flexible reporting**

---

## 💡 Why This Project Matters
This project demonstrates:
- Strong understanding of **relational databases**
- Clean and maintainable **SQL view design**
- Correct handling of **data grain and aggregation**
- Business-driven **dashboard storytelling**
- Professional **Power BI modeling practices**
