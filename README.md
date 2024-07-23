# E-Commerce Data Analysis

![](Intro_Image.png) 

## Introduction
Welcome to the E-Commerce Data Analysis project! This project provides an in-depth analysis of e-commerce transaction data, focusing on understanding customer behavior, product performance, and sales trends to drive strategic business decisions.

## Problem Statement
The objective of this analysis was to uncover actionable insights from e-commerce transaction data to:
- Identify top-selling products and revenue drivers
- Analyze customer spending variations across categories
- Detect seasonal trends and patterns of behavior
- Understand high-value customers and their purchasing behaviors
- Assess sales performance across different geographical regions

## Applied Techniques
This project applied techniques in:
- Descriptive Analysis 📊
- Segmentation Analysis 🔍
- Exploratory Data Analysis (EDA) 📈
- Predictive Analysis 🔮
- Business Intelligence (BI) Techniques 📉
- Data Visualization 📉
- ETL (Extract, Transform, Load) 🔄
- Data Transformation 🔧
- Data Modeling 📐
- Calculated Fields 🔢

## Data Sourcing
The data for this analysis was acquired from a comprehensive e-commerce dataset, which includes:
- Sales records
- Customer information
- Product details
- Regional sales data

This dataset provides an extensive view of transaction dynamics and customer behavior.

## Data Transformation
The data was processed to ensure accuracy and consistency through the following steps:
- **Data Validation**: Identified and aggregated duplicate entries by summing the `Quantity` and averaging the `UnitPrice`, then consolidated this data into a new table (`transactions3_temp`) to ensure each transaction was uniquely represented.
- **Data Selection**: Selected relevant columns from the original dataset to focus on key variables for analysis.
- **Data Standardization**: Standardized data formats to ensure consistency across the dataset.
- **Data Aggregation**: Aggregated data by product categories and regions to facilitate detailed analysis.
- **Calculated Fields**: Created calculated fields in Tableau to enhance analysis, including metrics such as total revenue and customer segmentation.

## Modelling
Key models and techniques were applied to analyze and predict performance:
- **Customer Segmentation**: Applied segmentation analysis to categorize customers into Low, Medium, and High Value segments based on purchasing behavior and other metrics.
- **Sales Forecasting**: Used predictive analysis techniques to forecast future sales trends based on historical data.
- **Data Modeling**: Developed models to understand relationships and performance metrics, including KPIs and calculated fields.

## Analysis & Visualization
Key analyses performed using Tableau and SQL:

- **Sales Trends**:
  - **Monthly Peaks**: Sales peaked at £1,450,000 in Nov/Dec with a 163.64% growth from Jan to Nov.
  - **Seasonal Surge**: Notable Q4 increase due to holiday shopping; stable sales from May to Aug.

- **Top Products**:
  - **Highest Sales**: Regency Cakestand (£164,000); majority of top products priced between £1-£3.

- **Customer Segmentation**:
  - **Behavior**: High-value customers peak in Nov/Dec, particularly from the UK and Germany; steady purchases from the Netherlands and Ireland.
  - **Regional Revenue**: UK leads in revenue, followed by Germany, Netherlands, and Ireland.

- **KPIs**:
  - **Retention Rate**: Stable at 87-92% monthly, 65% overall.
  - **CLV**: Increased to £860.37 in Dec.
  
### Key Findings

| Metric                      | Value                 |
|-----------------------------|-----------------------|
| **Top-Selling Product**     | Regency Cakestand (£164,000) |
| **Average Order Value (AOV)** | £52.30                |
| **Retention Rate**          | 87-92% Monthly        |
| **Customer Lifetime Value (CLV)** | £860.37           |

## Conclusion and Recommendations
Based on the analysis, the following conclusions were drawn:
- **Sales Trends**: Nov/Dec saw significant peaks and stable sales from May to August.
- **Top Products**: Regency Cakestand and similarly priced items drove high sales.
- **Customer Behavior**: High-value customers peak in Nov/Dec with strong contributions from the UK and Germany.
- **KPIs**: Retention rates and CLV are stable and increasing, respectively.

**Actionable Recommendations**
1. **Optimize Inventory for Peaks**: Adjust inventory levels to align with high sales periods in Nov/Dec.
2. **Refine Marketing Tactics**: Focus marketing efforts on underperforming months and regions.
3. **Enhance Customer Engagement**: Develop targeted strategies for high-value customers during peak periods.

**Areas for Further Investigation**
1. **Seasonal Correlations**: Investigate the factors driving seasonal sales peaks.
2. **Product Profitability**: Analyze profitability trends for products with unique sales patterns.
3. **AOV Variations**: Investigate variations in Average Order Value (AOV) among high-value customers across different regions to optimize pricing and promotional strategies.
   
### Screenshots and Visualizations
![](Tableau_visuals/image_sales_trends.JPG)


![](Tableau_visuals/image_top_10.JPG)


![](Tableau_visuals/image_customer_segmentation.JPG)

For interactive dashboards, check out the [Tableau Dashboard](https://public.tableau.com/views/E-commerceCustomerJourneySalesanalysis/Dashboard?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) on Tableau Public or alternatively you can download the file [here](Tableau_visuals/Customer_Journey&Sales_analysis.twbx) directly from my repository.

## Data Access and Processed Datasets
- [Original Data Set](https://docs.google.com/spreadsheets/d/1c8WK008EwUROTsHSHolbZYLGvJedK3Xfo2hKzMYZJTY/edit?usp=sharing)


**The following processed datasets were used in the analysis**:

- [`customer_summary.csv`](https://docs.google.com/spreadsheets/d/1_VwWvUBht4Ikn0ewoHeRIj1J8u39dCgYQtvDMBO9Z98/edit?usp=sharing): This table provides a summary view of each customer, combining all transactions to allow for an analysis of individual customer metrics. It includes aggregated data such as total purchase value and average order value.

- [`transactions3_temp.csv`](https://docs.google.com/spreadsheets/d/1OxMLiy1Egf-_1UpeNtU9dhreGNMhL7vlRssbB78Z0b0/edit?usp=sharing): This table includes calculated fields for deeper analysis, such as total transaction value and customer segmentation. It consolidates individual transactions with additional metrics for comprehensive insights.

Feel free to explore the visualizations and analysis results in the provided Tableau dashboard and data files.

---

Happy analyzing!🤓 If you have any questions or need further details, please feel free to contact me.
