# SaaS Product Engagement & Expansion Intelligence

## Project Overview

**SaaS Product Engagement & Expansion Intelligence** is an end-to-end data analytics and business intelligence project focused on analyzing customer subscriptions, revenue, payment behavior, customer segments, product usage, and support-related performance within a Software-as-a-Service (SaaS) environment.

The project uses **Excel, MySQL, Python (Pandas), Jupyter Notebook, and Power BI** to perform data cleaning, validation, SQL analysis, exploratory data analysis, statistical analysis, KPI development, and interactive dashboard visualization.

The final Power BI dashboard provides business users with a centralized view of SaaS performance and converts analytical findings into meaningful business insights and strategic recommendations.

---

# Project Objectives

- Analyze overall SaaS business performance.
- Analyze subscription performance and growth patterns.
- Monitor key KPIs including revenue, customers, subscriptions, average payment, discount, and tax.
- Analyze customer distribution across different customer segments.
- Compare company revenue across different company sizes.
- Analyze feature adoption across customer stages.
- Analyze support issues across different categories.
- Analyze customer satisfaction across support teams.
- Compare revenue across different billing cycles.
- Evaluate pricing and discount patterns.
- Perform data cleaning and validation.
- Perform SQL-based business analysis and KPI calculations.
- Perform exploratory and statistical analysis using Python.
- Develop an interactive Power BI dashboard.
- Convert analytical findings into business insights and recommendations.

---

# Business Problem

SaaS businesses generate large amounts of customer, subscription, payment, product usage, and operational data. Raw data alone does not provide an effective way for business users to understand overall performance or identify important trends.

This project addresses the need for a centralized analytical solution that can:

- Monitor overall revenue and subscription performance.
- Understand customer segments and company-size patterns.
- Analyze subscription trends over time.
- Evaluate payment and discount behavior.
- Understand product feature adoption.
- Monitor support issues and customer satisfaction.
- Compare billing-cycle performance.
- Provide actionable business recommendations.

The final dashboard brings these different areas together into an interactive business intelligence solution.

---

# Dataset

## Dataset Name

**SaaS Customer Journey & Operational Insights Dataset**

### Dataset Files

- `product_operations.csv`
- `customer_profile.csv`

### Dataset Size

- **Product Operations:** 20,000 records
- **Customer Profiles:** 5,000 records

### Primary Keys

- `record_id`
- `customer_id`

The dataset contains information related to customer profiles, subscriptions, payments, product operations, customer segments, feature usage, support issues, and other SaaS business activities.

---

# Data Preparation

The project followed a structured data-quality and preparation process before performing analysis.

## Data Profiling

- Checked row and column counts.
- Inspected data types.
- Identified missing values.
- Checked duplicate records using `record_id` and `customer_id`.
- Identified numeric-as-text issues.
- Checked subscription date fields.
- Identified invalid and out-of-range values.
- Checked consistency in categorical fields.
- Reviewed financial fields such as discount, tax, and final payment amounts.

## Data Cleaning

- Handled missing values according to the cleaning plan.
- Checked and handled duplicate records.
- Corrected data types.
- Standardized date fields.
- Removed unnecessary whitespace.
- Harmonized categorical values.
- Standardized `plan_category`.
- Standardized `payment_status`.
- Standardized `subscription_status`.
- Validated financial fields.
- Reconciled row counts after cleaning.

---

# Data Analysis & Methodology

The project followed the following end-to-end workflow:

**Business Understanding → Data Profiling → Data Cleaning → Excel Analysis → SQL Analysis → Python EDA → Statistical Analysis → Power BI Modeling → DAX KPI Development → Dashboard Development → Business Insights → Recommendations**

## Excel Analysis

Excel was used for:

- Initial data inspection.
- Filtering and sorting.
- Conditional formatting.
- Data validation.
- Category checking.
- Pivot-table analysis.
- Initial business summaries.
- Comparing financial metrics across categories.

## SQL Analysis

MySQL was used for:

- Loading the dataset.
- Data validation.
- Handling null values.
- Duplicate checks.
- Data-type conversion.
- Joining customer and operational data.
- Aggregations.
- Grouping and filtering.
- KPI calculations.
- Subscription analysis.
- Financial analysis.
- Window-function analysis.
- Creating reusable SQL views.

## Python / Pandas Analysis

Python and Pandas were used for:

- Loading and inspecting data.
- Validating the cleaning process.
- Descriptive statistics.
- Distribution analysis.
- Outlier analysis.
- Correlation analysis.
- Trend analysis.
- Visualization.
- Statistical interpretation.
- Generating dataset-based business insights.

---

# Technology Stack

| Technology | Purpose |
|---|---|
| Microsoft Excel | Data inspection, cleaning support and pivot analysis |
| MySQL Workbench 8.0 | SQL cleaning, joins, aggregations and KPI analysis |
| Python | Data processing and analysis |
| Pandas | Data cleaning and manipulation |
| Jupyter Notebook | EDA and statistical analysis |
| Power BI | Data modeling and dashboard development |
| DAX | KPI and business calculations |
| Git | Version control |
| GitHub | Project repository |

---

# Repository Structure

```text
SaaS-Product-Engagement-Expansion-Intelligence/
│
├── data/
│   ├── product_operations_v2_20000.csv
│   └── customer_profile_v2_5000.csv
│
├── docs/
│   ├── project_documentation/
│   ├── sprint_documentation/
│   ├── data_dictionary/
│   ├── cleaning_documentation/
│   └── dashboard_documentation/
│
├── sql/
│   ├── schema.sql
│   ├── analysis_queries.sql
│   ├── kpi_queries.sql
│   ├── views.sql
│   └── README.md
│
├── notebooks/
│   ├── 01_clean.ipynb
│   ├── 02_eda.ipynb
│   └── 03_statistical_analysis.ipynb
│
├── dashboard/
│   ├── SaaS_Business_Performance_Analysis.pbix
│   └── screenshots/
│
├── presentation/
│   ├── SaaS_Project_Presentation.pptx
│   └── presentation_notes/
│
└── README.md
