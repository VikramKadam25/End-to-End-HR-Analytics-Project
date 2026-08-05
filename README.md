# End-to-End-HR-Analytics-Project
"End-to-End HR Analytic Project using Excel , Power BI, Tableau and SQL to analyze workforce metrics and attrition"


Rather than simply replicating the same layout across tools, this project leverages the unique strengths of each platform—calculating core overarching metrics while exploring tailored KPIs and visual layouts in each software to extract deep HR insights.

---

## Multi-Tool Architecture & Tech Stack
1. Microsoft:-Excel Data Preparation & Executive Spreadsheet Dashboard, Custom Pivot Tables, Slicers, and Line Graphs.
2.Power BI :- Interactive Enterprise Reporting & Demographics, Custom Measures (DAX) and Slicers.
3.Tableau Public :- Visual Analytics & Performance Benchmarking ,Educational Performance Ratings, Tenure Curves, and Salary vs Department Matrix 
4.SQL :- Data Extraction & Relational Querying Complex Aggregations, Data Cleansing and KPI queries 

---

## Cross-Platform KPI & Visual Breakdown

### Common Overarching Metrics (Across All Tools)
1)Total Employees: 50,000
2)Overall Attrition Rate: 50.21%
3)Average Employee Age: 39 Years
4)Average Monthly Income: ₹26,016
5)Gender Ratio: 50.12% Male : 49.88% Female

---

### Tool-Specific Dashboards & Unique Visual Insights

#### 1.Excel Dashboard
* Focus: Dynamic Slicers & High-Level Category Distributions.
* Unique KPIs / Charts:
  * Income Group Slices: Direct filtering across ₹0–10k, 10k–20k, up to 50k–60k brackets.
  * Marital Status Breakdown: Donut chart analyzing attrition rates among Married, Single, and Divorced personnel.
  * Promotion Trend Line: Line graph tracking 'Years Since Last Promotion vs. Attrition Rate'.

#### 2.Power BI Dashboard
* Focus: Deep Demographic Filtering & Departmental Performance.
* Unique KPIs / Charts:
  * Department Matrix: Detailed breakdown comparing 'Average Work-Life Balance' against 'Attrition %' per Department (Software, R&D, Sales, HR, Hardware, Support).
  * Job Satisfaction Scores: Column analysis evaluating satisfaction scores (out of 3/4) by specific job roles.
  * Travel Frequency: Visual breakdown of employee travel demands (Non-Travel vs. Travel Frequently vs. Travel Rarely).

#### 3.Tableau Dashboard
* Focus: Granular Tenure Analysis & Interactive Performance Scoring.
* Unique KPIs / Charts:
  * Performance Rating by Education: Bar breakdown of employee performance ratings across fields like Life Sciences, Technical Degrees, and Marketing.
  * Tenure Decay Curve: Specialized visualization for 'Years Since Last Promotion' showing attrition probability over time.
  * Gender Pay Gap Matrix: Side-by-side comparison of average income for Males vs. Females across each department.

## Integrated Page Navigation, Help Pages & User Support

To ensure seamless navigation for non-technical stakeholders, all dashboards feature full User Interface and User Experience usability enhancements:

* Interactive Page Navigation: Clear tab switching and button controls ('Dashboard'-- 'Help / User Guide') across Excel, Power BI, and Tableau.
* Embedded Help & Guidance Pages: Dedicated help sheets and info icons ('? / 'i') providing clear documentation on slicers, filters, and chart definitions.
* Direct Support Integration: Embedded support panels with actionable contact links ('analytics-support@company.com) built directly into the dashboard canvasses for instant technical escalation.


#### 4. SQL Queries and Analysis 
* Focus: Relational Data Extraction, Multi-Table Joins & Key Metric Aggregation.
* Unique KPIs / Calculations:
  * Departmental & Demographic Groupings: Aggregated queries calculating employee counts by department and gender distribution.
  * Multi-Table Joins (HR1 & HR2): INNER JOIN operations linking hr1_sql and hr2_sql on Employee IDs to evaluate Work-Life Balance across Job Roles and Business Travel frequencies.
  * Performance & Compensation Metrics: SQL aggregations computing average monthly income, overall attrition percentage, and average performance ratings segmented by Education Field.


## Core Business Insights & Findings

1. Career Stagnation Increases Turnover: Across all platforms, data reveals a spike in attrition for employees who have not received a promotion in 3+ years.
2. Work-Life Balance Impact: Departments with lower average Work-Life Balance scores (e.g., Sales & Support) report significantly higher business travel requirements and elevated attrition rates.
3. Compensation & Role Hierarchy: Roles such as Manager and Research Director maintain higher satisfaction and lower attrition due to competitive monthly income slabs compared to entry-level field roles.
4. Performance ratings are virtually uniform across all educational backgrounds, ranging from a low of 2.48 (Marketing & Technical Degree) to a high of 2.51 (Life Sciences), showing that educational field has no significant impact on performance.

