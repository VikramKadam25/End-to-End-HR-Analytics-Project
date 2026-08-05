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













