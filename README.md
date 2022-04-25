# **Pewlett-Hackard Analysis**
SQL Analysis

## **INDEX**

[1. Overview](#1-overview)

[2. Resources](#2-resources)

[3. Results](#3-results)

[4. Summary](#4-summary)

## **1. Overview**

Pewlett-Hackard had fallen behind in the database department, the first stage of the analysis consisted into determine how many employees were close to the retirement by department.

The second stage of the analysis, called the "silver tsunami", consisted into determine the number of retiring employees by title and employees eligibility for a mentorship program.

With the result of the analysis, will help PH to create the best program to survive the "silver tsunami" taking into account the following questions:

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?


[:top: Go To Top](#index)

## **2. Resources**

Data provided to perform the analysis:

- [Departments](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/departments.csv)
- [Employees](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/employees.csv)
- [Employees by Department](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/dept_emp.csv)
- [Managers by Department](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/dept_manager.csv)
- [Salaries](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/salaries.csv)
- [Titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/titles.csv)

Software used:

- QuickDBD: to create quick database design
- PostgreSQL: for data analysis from relational database
- pgAdmin GUI using SQL language

[:top: Go To Top](#index)

## **3. Results**
### **3.1 Results for the first part of the analysis**
The following files are the result of the the first part of the analysis requested by PH.

- [Retirement Information](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/retirement_info.csv)
- [Employee count by department number](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/retirement_count.csv)
- [Employee Information](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/emp_info.csv)
- [Management](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/manager_info.csv)
- [Department Retirees](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/dept_info.csv)

### **3.2 Results for the second part of the analysis**

Files for the second phase of the analysis (Challenge)

- [Retirement Titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)
- [Unique Titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)
- [Retiring Titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)

[:top: Go To Top](#index)

## **4. Summary**
With the support of our EDR, we were able to create the joints between tables and complete the analysis.

> *Figure 1: EDR of resources provided*

![Employee Database](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

#### **Deliverable 1**

The number of retiring employees have been calculated with their current titles for employees born between 1952 and 1955 who are eligible for retirement.

> *Figure 2: Retirement titles list

![Retirement titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/retirement_titles.png)

As it can be appreciated, the list is complete but it contain duplicated entries, the next step is to consider the most recent titles.

> *Figure 3: Unique title list

![Unique titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/unique_titles.png)

Using the DISTINCT ON function we were able to clean the previous data, to display only the most recent titles.

> *Figure 4: Retiring titles lists

![Retiring titles](https://github.com/amonjaras/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)

In order to give more information to PH we create a list that counts the number of retiring employees for each title.

[:top: Go To Top](#index)



The retiring_titles.csv table counts the number of retiring employees for each title.

In Deliverable 2, the mentorship_eligibility.csv table lists the number of eligible employees for a Mentorship Program



From the above analysis, we can find that -

72,458 employees born between 1952 and 1955 will be retiring from Pewlett-Hackard soon.
Majority of the employees retiring are Senior Engineers (25,916) and Senior Staff (24,926).Therefore there will be many open positions for Senior Engineers and Senior Staff.


Only current employees born in 1965 are eligible for a Mentorship Program.
1,549 employees are currently eligible to take part in the Mentorship Program.
Summary

72,458 rolls will need to be filled as the “silver tsunami” begins to make an impact.
Overall, 1549 qualified, retirement-ready employees are available to mentor the next generation of Pewlett Hackard employees.
Further analysis shows that the maximum number of retirements are set to happen in Development and Production departments.


Also, in terms of the number of mentors available, further analysis shows that the Development department has the highest number of mentors (417) while Quality Management department has the least number of mentors (70).


Therefore, on a higher level, one mentor in each department will have to train more than 40 employees approximately which seems difficult. Since the ratio of retirement to eligible mentorship is so high, Pewlett Hackard will face great deficit in training the new employees.


[:top: Go To Top](#index)







This work belongs to [^1].
Course [^2].
[^note]:
[^1]: Author: Audrey MONJARAS :mexico: :canada:
[^2]: Data Analytics: Unit 7 SQL :books:
