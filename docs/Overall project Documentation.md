# Project Documentation: SaaS Product Engagement & Expansion Intelligence

## 1. Overview

**SaaS Product Engagement & Expansion Intelligence** is an end-to-end data analytics project focused on analyzing SaaS customer, subscription, operational, financial, and product-engagement data.

The project transforms raw **Customer Profile** and **Product Operations** datasets into structured business insights using **Excel, MySQL/SQL, Python/Pandas, and Power BI**. The final Power BI dashboard provides a centralized view of business performance through KPIs, subscription trends, customer segmentation, product engagement analysis, and business recommendations.

The dashboard is organized into four main sections:

- **Overview**
- **Subscription Trends**
- **Customer Segments**
- **Business Insights**

---

## 2. Objectives

- **Monitor Business Performance:** Track Total Revenue, Total Customers, Total Subscriptions, Average Payment, Average Discount, and Total Tax.
- **Analyze Subscription Trends:** Understand subscription growth, payment trends, billing-cycle performance, and feature usage.
- **Understand Customer Segments:** Analyze customers based on segment, company size, support issues, and customer stage.
- **Evaluate Product Engagement:** Analyze feature usage and adoption patterns across customers.
- **Compare Business Dimensions:** Enable analysis by Region and Plan Category using interactive slicers.
- **Generate Business Insights:** Convert analytical findings into meaningful business insights and recommendations.
- **Build Interactive Reporting:** Provide stakeholders with an easy-to-use Power BI dashboard for business analysis.

---

## 3. Scope

### In-Scope

- Customer Profile dataset analysis.
- Product Operations dataset analysis.
- Data cleaning and validation.
- Missing-value and duplicate checks.
- Data-type and categorical-value standardization.
- SQL-based querying and aggregation.
- Business KPI calculations.
- Python/Pandas exploratory data analysis.
- Subscription trend analysis.
- Customer segmentation analysis.
- Product engagement analysis.
- Power BI dashboard development.
- Interactive Region and Plan Category filtering.
- Bookmark-based dashboard navigation.
- Business insights and recommendations.

### Out-of-Scope

The completed project does not include:

- Machine-learning-based churn prediction.
- Customer health scoring.
- AI or Natural Language Query integration.
- Azure OpenAI integration.
- Real-time data streaming.
- Automated customer outreach.
- Predictive revenue forecasting.

---

## 4. System Architecture

The project follows a structured analytics workflow from raw data preparation to business visualization.

### 4.1 Data Sources

The project uses two primary CSV datasets:

- **Customer Profile Dataset**
- **Product Operations Dataset**

The Customer Profile dataset contains customer-related information, while the Product Operations dataset contains subscription, billing, revenue/payment, feature usage, and support-related information.

### 4.2 Data Preparation

Excel and Python/Pandas  are used for:

- Initial data inspection.
- Missing-value analysis.
- Duplicate validation.
- Data-type correction.
- Categorical-value standardization.
- Data validation.

### 4.3 SQL Analysis

The prepared data is analyzed using MySQL for:

- Filtering.
- Grouping.
- Aggregation.
- Business metric calculations.
- Data validation.
- Structured business analysis.

### 4.4 Python Analysis

Python and Pandas are used for exploratory data analysis and validation of customer, subscription, financial, and engagement patterns.

### 4.5 Visualization

The analyzed data is used in Power BI to create:

- KPI cards.
- Interactive charts.
- Slicers.
- Bookmark navigation.
- Business insights.
- Recommendations.

### Architecture Flow

**Customer Profile + Product Operations → Data Cleaning → SQL Analysis → Python EDA → Power BI Dashboard → Business Insights**

---

## 5. Data Design

The project primarily works with two business datasets.

### 5.1 Customer Profile Dataset

Contains customer-level information used for customer analysis and segmentation, including:

- Customer information.
- Customer Segment.
- Company Size.
- Region.
- Customer-related characteristics.

### 5.2 Product Operations Dataset

Contains operational and subscription-related information used for business analysis, including:

- Subscription information.
- Plan Category.
- Billing Cycle.
- Revenue / Payment.
- Discount.
- Tax.
- Feature Usage.
- Support information.

### 5.3 Analytical Use

The datasets are used together to provide:

- Customer analysis.
- Subscription analysis.
- Operational analysis.
- Financial analysis.
- Product engagement analysis.

---

## 6. Dashboard Interface

The main user interface of the project is the  Power BI SaaS Business Performance Analysis Dashboard.

The dashboard contains four analytical sections:

### Overview

Provides an executive-level summary of overall SaaS business performance.

### Subscription Trends

Provides detailed analysis of subscription, billing, payment, feature-usage, and support trends.

### Customer Segments

Provides customer-level analysis based on customer segments, company size, support issues, and feature adoption.

### Business Insights

Presents key analytical findings and corresponding business recommendations.

### Interactive Controls

The dashboard includes:

- **Region Slicer**
- **Plan Category Slicer**
- **Power BI Bookmark Navigation**

Bookmarks allow users to switch between:

**Overview → Subscription Trends → Customer Segments → Business Insights**

---

## 7. Workflows

### 7.1 Data Cleaning Workflow

The raw datasets are inspected and prepared before analysis.

The cleaning workflow includes:

- Import and inspect the datasets.
- Check dataset structure and column information.
- Identify missing values.
- Check duplicate records.
- Validate data types.
- Standardize relevant categorical values.
- Correct inconsistent formats where required.
- Validate the cleaned data.
- Prepare the data for SQL and Python analysis.

The purpose of this stage is to ensure that downstream calculations and dashboard visualizations are based on consistent and reliable data.

---

### 7.2 SQL Analysis Workflow

The prepared data is analyzed using MySQL and SQL.

The SQL workflow includes:

- Loading structured data into the database.
- Validating record information.
- Filtering relevant records.
- Grouping data by business dimensions.
- Performing aggregations.
- Calculating business-level metrics.
- Analyzing customer and subscription information.
- Preparing results for further analysis and reporting.

SQL serves as the structured analytical layer of the project.

---

### 7.3 Python EDA Workflow

Python and Pandas are used for exploratory analysis and additional data validation.

The workflow includes:

- Importing the prepared dataset.
- Checking dataset dimensions.
- Reviewing columns and data types.
- Performing required date conversions.
- Performing aggregations.
- Examining distributions.
- Analyzing business patterns.
- Validating customer and subscription trends.
- Creating analytical visualizations where required.

The EDA stage helps understand the data before creating the final Power BI reporting layer.

---

### 7.4 Power BI Workflow

The final analytical data is imported into Power BI.

The dashboard development workflow includes:

- Preparing fields for visualization.
- Creating DAX measures.
- Developing KPI cards.
- Creating analytical charts.
- Adding Region and Plan Category slicers.
- Creating dashboard sections.
- Configuring bookmarks.
- Organizing visuals using the Selection pane.
- Adding business insights and recommendations.

---

## 8. Dashboard KPIs

The dashboard contains six major business KPIs.

### Total Revenue

Measures the overall revenue represented in the analyzed data and provides a high-level view of financial performance.

### Total Customers

Shows the overall customer count used to understand the customer base represented in the analysis.

### Total Subscriptions

Measures subscription volume and provides visibility into overall subscription activity.

### Average Payment

Shows the average payment value and helps understand customer spending patterns.

### Average Discount

Measures the average discount provided and supports analysis of pricing and promotional activity.

### Total Tax

Shows the total tax associated with the analyzed transactions and provides an additional financial reporting measure.

---

## 9. Dashboard Analysis

### 9.1 Overview

The Overview section provides a high-level summary of SaaS business performance.

#### Total Subscription Growth

Shows how subscription activity changes over time and helps identify overall subscription patterns.

#### Average Revenue/Payment Trend

Shows changes in average revenue/payment across the analyzed period.

#### Total Subscriptions by Year

Provides a yearly comparison of subscription activity.

#### Monthly Tax Collection

Shows tax-related activity across months and provides an additional view of financial activity.

---

### 9.2 Subscription Trends

The Subscription Trends section provides detailed analysis of subscription and engagement behavior.

#### Monthly Average Payment Trend

Analyzes how average payment changes over time.

#### Revenue by Billing Cycle

Compares revenue across available billing cycles.

#### Monthly Feature Usage

Tracks changes in feature usage and provides visibility into product engagement.

#### Customer Satisfaction by Support Team

Compares customer satisfaction across support teams to understand differences in support performance.

---

### 9.3 Customer Segments

The Customer Segments section focuses on customer characteristics and engagement.

#### Customer by Segment

Shows customer distribution across available customer segments.

#### Average Company Revenue by Company Size

Compares average company revenue across different company sizes.

#### Support Issues by Category

Analyzes support issues across available issue categories.

#### Feature Adoption by Customer Stage

Examines how feature adoption differs across customer stages.

---

## 10. Technology Stack

- **Data Preparation:** Microsoft Excel.
- **Database:** MySQL.
- **Querying & Analysis:** SQL.
- **Programming:** Python.
- **Data Analysis:** Pandas and NumPy.
- **Analysis Environment:** Jupyter Notebook.
- **Visualization:** Power BI Desktop.
- **Power BI Processing:** Power Query and DAX.
- **Version Control:** Git.
- **Repository:** GitHub.

Each technology supports a different stage of the project, from data preparation and structured analysis to visualization and documentation.

---

## 11. Setup & Project Structure

The project files are organized according to their role in the analytics workflow.

```text
SaaS-Product-Engagement-Expansion-Intelligence/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── sql/
│   └── SQL analysis files
│
├── notebooks/
│   └── Python / Jupyter analysis
│
├── dashboard/
│   └── Power BI dashboard
│
├── docs/
│   └── Project documentation
│
└── README.md