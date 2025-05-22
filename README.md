# Supply-Chain-Management(Data Analysis Report created using Excel,PowerBI,Tableau,MYSQL)
## Project Objective
The Supply Chain Analytics Dashboard is designed to provide comprehensive visibility into critical supply chain operations, enabling stakeholders—including logistics managers, procurement teams, and executives—to make data-driven decisions. The dashboard tracks key performance indicators (KPIs) such as Order Fulfillment Rate, Inventory Turnover, Delivery Lead Time, and Supplier Performance, along with advanced analytics like Demand Forecasting, Cost-to-Serve Analysis, and Warehouse Efficiency Metrics.
# Dataset Used
[Dataset](https://github.com/sandhyacherukuri8/Supply-Chain-Management/tree/master/Dataset)
# Questions(KPIs)
- Total Sales (MTD, QTD, YTD): Tracks the total sales achieved within different time periods

- Product Wise Sales: Monitors sales figures segmented by individual products or product categories to identify top-performing and underperforming products.

- Sales Growth: Measures the percentage increase or decrease in sales compared to a previous period (e.g., month-over-month or year-over-year growth).

  Daily Sales Trend: Analyzes sales performance on a daily basis to spot patterns, peaks, or dips in sales activity.

- State Wise Sales: Provides sales data broken down by states or geographical areas to identify regional performance trends.

- Top 5 Store Wise Sales: Highlights the five stores with the highest sales, helping to identify star performers and best practices.

- Region Wise Sales: Tracks sales across various regions, which may include multiple states or territories, for macro-level performance insights.

- Total Inventory: Shows the total stock quantity available in hand across all warehouses or locations.

- Inventory Value: Represents the monetary value of the current inventory based on cost or market value.

- Categorizes inventory health into three states:
      - In-stock: Inventory in hand is equal to or greater than the minimum stock quantity required.
      - Out-of-stock: Inventory in hand is less than 0 (no stock available).
      - Under-stock: Inventory in hand is less than the desired stock quantity but not entirely out of stock.
      
- Purchase Method Wise Sales: Breaks down sales based on the method of purchase, such as online, in-store, cash, or credit card.
# Dashboard interaction
- [View Excel Dashboard](https://github.com/sandhyacherukuri8/Supply-Chain-Management/blob/master/Dashboard%20files/Excel%20Dashboard%20.xlsx)
- [View PowerBI Dashboard](https://github.com/sandhyacherukuri8/Supply-Chain-Management/blob/master/Dashboard%20files/PowerBI%20Dashboard.pbix)
- [View Tableau Dashboard](https://github.com/sandhyacherukuri8/Supply-Chain-Management/blob/master/Dashboard%20files/Tableau%20Dashboard%20.twbx)
- [View SQL Queries](https://github.com/sandhyacherukuri8/Supply-Chain-Management/blob/master/Dashboard%20files/SQL%20Queries.sql)
# Tools Used:
Excel, Tableau, Power BI, MY SQL

# Step-by-Step Process:
### 1.Data Preparation (Excel Dashboard)
- Utilize the provided Excel data to create an initial dashboard.
- Perform basic data cleaning and transformation.
- Identify key metrics (KPIs) and define data visualization requirements.
### 2.SQL Integration (Database Setup)
- Load the cleaned Excel files into a SQL database under a well-structured schema.
- Normalize the data to maintain integrity and avoid redundancy.
- Establish primary and foreign key relationships to ensure referential integrity.
### 3.BI Tool Connection (Data Modeling)
- Connect the SQL database to Tableau and Power BI.
- Build a comprehensive data model with necessary joins and relationships.
- Optimize the model for performance by indexing and aggregating data where required.
### 4.Dashboard Development
- Design interactive dashboards in Tableau and Power BI.
- Ensure a user-friendly interface with filters, drill-throughs, and tooltips.
- Incorporate advanced analytics, such as trend analysis and forecasting.

# Excel Dashboard
![Excel_Dashboard_Image](https://github.com/user-attachments/assets/69fd24e6-fc7f-4565-b751-1cd861b7dae8)
# PowerBI Dashboard
![PowerBI_Dashboard_Image](https://github.com/user-attachments/assets/420e0c67-6f09-4e54-a7cf-2d012e613d9f)
# Tableau Dashboard
![Tableau_Dashboard_Image](https://github.com/user-attachments/assets/4bcf89d0-ddb6-4ac3-8a75-9ecde48ba5b9)
![Inventory Dashboard_Image](https://github.com/user-attachments/assets/f8ed435e-9a21-4e95-b7d1-86621e6c4728)

# 🔍 Key Insights
#### 📊 Sales Performance
- Total Sales amount across dashboards is consistently around $387M–$388M.
- Total Profit is reported at $170M, indicating a healthy profit margin (~44%).
- Top Performing State: California dominates with $95.6M in sales.
- Top Store by Sales: Tilloch Store #799 is the leading outlet with $6.23M in sales.

#### 🌎 Regional Insights
- The West region leads sales with ~29% share, followed by the South (~25%) and East (~18%).
- Southwest region contributes the least (~11% of total sales).
#### 💳 Payment Method Analysis
- Debit is the most popular purchase method at $155M, double that of Cash or Credit (~$77M each).
#### 📅 Sales Trends
- Sales peaked around 2021–2022, with a noticeable drop in 2023 (down to ~$26M).
- Sales remain steady across months but slightly higher in March–April.
#### 🗂️ Product Category Performance
- Top-Selling Categories:
      - Arts & Entertainment – $90.47M (23% of total)
      - Photography – $65.64M (17%)
      - Music and Entertainment – ~16% each
- Least Performing: Mobiles and Computers, both around $54M.
#### 🏬 Inventory Analysis
- Total Inventory: 1,096 items (Power BI), with Inventory Cost: $104.55K and Worth: $529K.
- In-Stock vs Under-Stock: 801 In-Stock, 1,104 Under-Stock – indicates a stock management issue.
#### Top Products by Sales:
- Finger & Hand Cymbals – $11.78M
- Harmonica Holders – $7.05M

 # 📌 Key Takeaways
- Sales and Profitability are strong, but 2023 shows a decline, requiring strategic adjustments.
- The West region and California state are key markets; efforts should be made to sustain and grow there.
- Debit payment method is preferred – marketing and offers could be targeted accordingly.
- The inventory mismatch (understocking higher than in-stock) could lead to lost sales opportunities.
- Arts & Entertainment and Photography are the best-performing categories; inventory focus should align with demand.
- Top 5 stores contribute significantly to revenue – further investment or replication strategies may be beneficial.

# ✅ Final Conclusion
  The analysis of supply chain dashboards using Excel, Power BI, Tableau, and inventory tools provides a 360-degree view of the business performance. The company is in a strong financial position, with robust sales and profits. However, declining sales in 2023 and inventory imbalances highlight operational inefficiencies that require attention. Data-driven decision-making focused on regional strengths, product demand, and inventory optimization will be critical for sustaining growth and improving supply chain effectiveness.





