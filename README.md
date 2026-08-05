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
Total Employees: 50,000
Overall Attrition Rate: 50.21%
Average Employee Age: 39 Years
Average Monthly Income: ₹26,016
Gender Ratio: ~50.12% Male : 49.88% Female

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
  * Department Matrix: Detailed breakdown comparing 'Average Work-Life Balance` against 'Attrition %' per Department (Software, R&D, Sales, HR, Hardware, Support).
  * Job Satisfaction Scores: Column analysis evaluating satisfaction scores (out of 3/4) by specific job roles.
  * Travel Frequency: Visual breakdown of employee travel demands (Non-Travel vs. Travel Frequently vs. Travel Rarely).

#### 3.Tableau Dashboard
* Focus: Granular Tenure Analysis & Interactive Performance Scoring.
* Unique KPIs / Charts:
  * Performance Rating by Education: Bar breakdown of employee performance ratings across fields like Life Sciences, Technical Degrees, and Marketing.
  * Tenure Decay Curve: Specialized visualization for 'Years Since Last Promotion' showing attrition probability over time.
  * Gender Pay Gap Matrix: Side-by-side comparison of average income for Males vs. Females across each department.

#### 4. SQL Queries and Analysis 

create database HR_Analytics;
use HR_Analytics;
select count(*) from hr2_sql;


##1 Total Employees
select count(EmployeeNumber) from hr1_sql as Total_Employees;


##2 Avg Age 
select
round(avg(`ï»¿Age`),2) as Average_Age
 from hr1_sql;


##3  No of Males And Females
select
Gender,
Count(*) as Total_Count
from hr1_sql
group by Gender;

##4 Avg Attrition Rate
select 
round(avg(Attrition='Yes')*100,2)  as Avg_Attrition_Rate
from hr1_sql;


##5 Avg Monthly Income
select
round(avg(MonthlyIncome)) as Avg_Montly_Income
from  hr2_sql;


##6 No of Employees By DEPARTMENTS
select
Department,
count(EmployeeNumber) as total_employees
from hr1_sql
group by Department;


##7 DepartmentWise Attrition rate
select
Department,
round(
(count(case when Attrition = 'Yes' then 1 end)*100)/count(*),2) As Attrition_Rate
from hr1_sql
group by Department;

##8 Job Role And WorkLife Balance
select
h1.JobRole,
round(Avg(h2.WorkLifeBalance),2) as Worklife_Balance
from hr2_sql h2
inner join hr1_sql h1
on h1.EmployeeNumber = h2.`ï»¿Employee ID`
group by JobRole;


##9 Business travel and Work life balance
select
h1.BusinessTravel,
round(Avg(h2.WorkLifeBalance),2) as Worklife_Balance
from hr2_sql h2
inner join hr1_sql h1
on h1.EmployeeNumber = h2.`ï»¿Employee ID`
group by BusinessTravel;


##10 Performance Rating By Education field
select
h1.EducationField,
round(avg(h2.PerformanceRating),2) as Performance_Rating
from hr2_sql h2
inner join 
hr1_sql h1
on h1.EmployeeNumber = h2.`ï»¿Employee ID`
group by EducationField;

## Core Business Insights & Findings

1. Career Stagnation Increases Turnover: Across all platforms, data reveals a spike in attrition for employees who have not received a promotion in 3+ years.
2. Work-Life Balance Impact: Departments with lower average Work-Life Balance scores (e.g., Sales & Support) report significantly higher business travel requirements and elevated attrition rates.
3. Compensation & Role Hierarchy: Roles such as Manager and Research Director maintain higher satisfaction and lower attrition due to competitive monthly income slabs compared to entry-level field roles.
4. Performance ratings are virtually uniform across all educational backgrounds, ranging from a low of 2.48 (Marketing & Technical Degree) to a high of 2.51 (Life Sciences), showing that educational field has no significant impact on performance.

