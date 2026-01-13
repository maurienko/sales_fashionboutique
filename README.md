# 📊 Fashion Retail Analytics: SQL Case Study (BigQuery Studio)

## 📝 Project Overview
This project features an end-to-end **SQL analysis** of a fashion retail dataset containing **2,176 records**. Using **BigQuery Studio**, I explored sales performance, seasonal trends, and return patterns across 8 major fashion brands to provide strategic, data-backed business recommendations.

## 🛠️ Tech Stack
* **Platform:** Google Cloud Platform (GCP) - BigQuery Studio
* **Language:** SQL
* **Key Techniques:** * **Advanced Analytics:** Window Functions (`DENSE_RANK`, `RANK`), CTEs (Common Table Expressions), and Case Logic.
    * **Data Transformation:** Data cleaning, type casting, and aggregation for business KPIs.

## 📁 Repository Structure
* `data/`: Contains the raw `fashion_boutique_dataset.csv`.
* `sql_queries/`:
    * `checking_clear.sql`: Data validation and cleaning.
    * `KPI_brands.sql`: Brand performance (Revenue, Units Sold, Avg Price).
    * `brands_rank_by_season.sql`: Ranking brand revenue per season.
    * `top_category_season.sql`: Identifying top-selling categories seasonally.
    * `returns (% and reasons).sql`: Deep dive into return rates and feedback.
    * `category_lost_revenue.sql`: Financial impact of returns per category.
    * `discount_impact_on_return.sql`: Correlation between markdowns and returns.

## 💡 Key Business Insights

### 1. Brand Performance & Revenue Leaders
* **Sales Volume:** **Zara** emerged as the market leader in volume with **265 units sold**, generating a total revenue of **$22,737.40**.
* **Premium Pricing:** **Uniqlo** maintained the highest Average Selling Price at **$92.38**, showing strong brand positioning despite lower unit volume than Zara.

### 2. Seasonal Market Share
* **Dominant Brands:** **Mango** dominated the **Fall** season ($7,257.60 revenue), while **Banana Republic** led the **Winter** season ($6,288.09).
* **Seasonal Categories:** **Outerwear** is the primary revenue driver in Fall, Spring, and Winter, while **Shoes** take the lead in Summer ($10,793.51).

### 3. Return Analytics & Revenue Leakage
* **Top Return Reason:** **"Changed Mind" (68 cases)** and **"Size Issue" (60 cases)** are the leading causes of returns, indicating a need for improved virtual fitting tools.
* **Financial Impact:** The **Outerwear** category experienced the highest revenue leakage, with **$7,531.38 lost** due to returns.
* **High-Risk Brands:** **Ann Taylor** recorded the highest return rate at **19.84%**, significantly higher than **Mango**, which maintained the best efficiency at **11.27%**.

### 4. Discount Impact Analysis
* **The Discount Myth:** Interestingly, **Standard/Low Discounts** showed a slightly higher return rate (**14.78%**) than **High Discounts (>30%)** at **14.42%**. This suggests that high markdowns in this dataset effectively cleared stock without significantly compromising customer satisfaction or increasing impulse-buy returns.

## 🚀 How to Run
1. **Clone** this repository.
2. **Upload** the CSV to a BigQuery dataset.
3. **Execute** the scripts in the `sql_queries/` folder to reproduce these insights.

## ✉️ Contact
**Portfolio Owner:** Mariia
**Email:** miraq.agency@gmail.com
**LinkedIn:** www.linkedin.com/in/maurienko
