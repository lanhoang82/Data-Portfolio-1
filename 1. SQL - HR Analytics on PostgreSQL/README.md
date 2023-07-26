https://www.facebook.com/events/781610596833865/786121793049412/## Human Resources Analytics using PostgreSQL

![hr](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/d77d0a9c-4ab9-4806-b9a1-ca901fe3c6a4)

## Table of Content
- Introduction
- Entity Relationship Diagram
- Business Questions and Solutions via SQL Codes

### Introduction

With a database of 7 tables hosted on PostgreSQL, this SQL project aims to showcase my ability to write more advanced SQL queries. Via pgAdmin 4, I write queries with common types of joins, subqueries, common table expressions (CTEs) and window functions. A toy HR analytics database was employed to practice providing relevant insights and help management to answer questions that would inform personnel and compensation policies, such as:
- How many employees in the company have earned more than the average salary of their respective department?
- What is the geographical distribution of the employees in the company (by city, country or region)?
- What is the salary range of the employees in the IT department?
- Who is the employee who has been with the company the longest?

### Entity Relationship Diagram
  ![image](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/5d8b6e56-a040-4819-bbcb-f2adeb3e29b3)

The database supports the storing of employee personal information and other business-critical records such as recruitment, job history, office location and benefit records.
The ‘employees’ table is the hub of the database. Each record represents an employee at the company. By extension, the ‘department’ table carries additional information that goes beyond just the department ID, including the name of the department, the manager of that department and where it is based. The ‘job_history’ table provides further specific recruitment-related information of an employee, such as his/her start and end date. Linking with it is also the ‘jobs’ table where further information about the employee’s job is provided to include the job title and the salary range.
The ‘locations’, ‘regions’ and ‘countries’ tables allow us to drill down further into the geographic situation of an employee’s department.

### - Business Questions and Solutions via SQL Codes

#### A. Basic SELECT statement

1. Retrieve all the names (first_name, last_name) of employees using an alias name "First Name", 
"Last Name"

###### Answer:
```
SELECT first_name "First Name", last_name "Last Name" FROM employees;
```
![HR1](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/e28f72fe-a469-4ae6-91e6-cd3d8e849558)

2. Get unique department ID from employee table

###### Answer:
```
SELECT DISTINCT department_id FROM employees;
```
![H2](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/2f1c2643-e5fd-413a-b57a-fb3c6a3d4f27)

3. Get the details of all employees from the employee table in alphabetical order by their first name

###### Answer:
```
SELECT * FROM employees 
ORDER BY first_name ASC;
```
![H3](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/a8e513de-a2a4-45ec-968b-a50789b44c19)

4. Get the employee ID, names (first_name, last_name) and salary in ascending order according to 
their salary

###### Answer:
```
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary ASC;
```
![H5](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/180f4f39-e1b0-47bd-8657-63966697fc67)

5. Get the maximum and minimum salary paid to a particular employee

###### Answer:
```
SELECT min_salary, max_salary FROM jobs
INNER JOIN employees ON jobs.job_id = employees.job_id 
WHERE employee_id = 180;
```
![H4](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/30401aaa-2cd4-4d0c-88e7-39ea27dbdaac)

6. Get the number of employees working with the company

###### Answer:
```
SELECT COUNT(DISTINCT employee_id) FROM employees;
```
![H6](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/4515f995-1f4c-4241-b527-7912a294665c)

#### B. JOIN statement

1. Make a join with employees and departments table to find the name of the employee, including first_name and last name, department ID and name of departments

###### Answer:
```
SELECT first_name, last_name, employees.department_id, department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;
```
![H7](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/b0f36a77-fd06-44d7-b75c-ae820727ce1b)


2. Make a join with 4 tables employees, jobs departments and locations to find the name, including first_name and last_name, jobs, salary, department name and ID, of the employees working in Munich

###### Answer:
```
SELECT first_name, last_name, job_title, department_name, city, salary, departments.department_id
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
INNER JOIN departments ON departments.department_id = employees.department_id
INNER JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city = 'Munich';
```
![h8](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/90e704a9-a0ab-4bde-a37c-c213fc301d0f)

3. Make a join with 3 tables employees, departments and locations to get the department name, number of employees working in each department, as well as number of locations that department has representation in.

###### Answer:
```
SELECT department_name "Department Name", COUNT(employee_id) "Number of Employees", COUNT(DISTINCT locations.location_id) "Number of Locations"
FROM departments 
INNER JOIN employees ON departments.department_id = employees.department_id 
INNER JOIN locations ON locations.location_id = departments.location_id
GROUP BY department_name
ORDER BY "Number of Employees" DESC;
```
![h9](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/df187b56-b775-4c3e-9c57-1e6be2d58f3d)


#### C. CASE statements, Aggregate Functions and Group By

1. Get the average salary for each post excluding all the clerks

###### Answer:
```
SELECT job_title "Job Title", ROUND(AVG(salary),0) "Average Salary"
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
WHERE job_title NOT LIKE '%Clerk%'
GROUP BY job_title
ORDER BY "Average Salary" DESC;
```
![h10](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/f97928ee-1ad1-4306-a63b-b96f77d3bfc4)


2. Categorize the average salary for each post in the ranges High, Mid, Low

###### Answer:
```
SELECT job_title "Job Title", ROUND(AVG(salary),0) "Average Salary", 
	CASE WHEN AVG(salary) >= 16000 THEN 'High'
		WHEN AVG(salary) < 16000 AND AVG(salary) >= 11000 THEN 'Mid-High'
		WHEN AVG(salary) < 11000 AND AVG(salary) >= 7000 THEN 'Mid-Low'
		ELSE 'Low' END AS "Salary Category"
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
GROUP BY job_title
ORDER BY "Average Salary" DESC;
```
![h11](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/79676321-f201-4672-80ed-3d2adf01ca33)


3. Get the job title, job ID, department name, department ID and maximum salary of each post for maximum salary is at or above $5000

###### Answer:
```
SELECT job_title, e.job_id, e.department_id, d.department_name, max_salary
FROM employees AS e
INNER JOIN jobs AS j ON j.job_id = e.job_id
INNER JOIN departments AS d ON d.department_id = e.department_id
WHERE max_salary > 5000
ORDER BY max_salary DESC;
```
![h12](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/6e6d816f-407c-4150-b80e-026d1be5358b)

#### D. Subqueries and/or Common Table Expressions (CTE)

1. Find the first_name, last_name and salaries of the employees who have salaries higher than or equal to the average salary of their job family

###### Answer:
```
WITH avg_sal_title AS (
	SELECT job_title, ROUND(AVG(salary),0) AS avg_salary
	FROM employees AS e
	INNER JOIN jobs AS j ON e.job_id = j.job_id
	GROUP BY job_title)

SELECT first_name, last_name, al.job_title, ROUND(salary, 0) AS salary, al.avg_salary
FROM employees AS e
INNER JOIN jobs AS j ON e.job_id = j.job_id
INNER JOIN avg_sal_title AS al ON j.job_title = al.job_title
WHERE salary >= al.avg_salary
ORDER BY salary DESC; 
```
![h13](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/c61dee23-68b0-4539-9dee-a5d728aa5129)


2. Find the first_name and last_name of the employees under a manager who works for a department based in the United States

###### Answer:
```
WITH manager_info AS (
	SELECT DISTINCT manager_id, d.location_id, country_name
	FROM departments AS d
	LEFT JOIN locations AS l ON d.location_id = l.location_id
	LEFT JOIN countries AS co ON co.country_id = l.country_id
	WHERE country_name = 'United States of America')

SELECT first_name, last_name, e.manager_id, country_name
FROM employees AS e
INNER JOIN manager_info AS mi ON mi.manager_id = e.manager_id;
```
![h14](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/adfb32b3-6710-4642-a7ae-2503358805b0)


3. Same request as above but using a subquery instead of a CTE

###### Answer:
```
SELECT first_name, last_name, manager_id
FROM employees AS e
WHERE manager_id IN (
	SELECT DISTINCT manager_id
	FROM departments AS d
	LEFT JOIN locations AS l ON d.location_id = l.location_id
	LEFT JOIN countries AS co ON co.country_id = l.country_id
	WHERE country_name = 'United States of America');
```
![h15](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/602e98ac-aef8-48e6-aa76-2db82f13cc4a)


4. Find the first_name, last_name and salary, which is equal to the minimum salary for this post he/she is working on.

###### Answer:
```
SELECT first_name, last_name, salary
FROM employees AS e
INNER JOIN jobs AS j 
	ON e.job_id = j.job_id
WHERE salary = min_salary; -- first option without subquery
```
![h16](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/d28d1c87-5a7f-44da-b39d-023b25b5b87b)

```
SELECT first_name, last_name, salary
FROM employees AS e
WHERE salary = (
	SELECT min_salary
	FROM jobs AS j
	WHERE e.job_id = j.job_id); --correlated subquery
```
![h16 1](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/0e4dd4db-00a4-4c2e-ba07-cb54959d5753)

#### F. Window Functions

1. Find the first_name and last_name of the employees, their salary and the average salary of their job family

###### Answer:
```
SELECT first_name, last_name, job_title, ROUND(salary, 0) AS salary,
	ROUND(AVG(salary) OVER(PARTITION BY job_title), 0) AS avg_sal_job_fam
FROM employees AS e
INNER JOIN jobs AS j ON e.job_id = j.job_id;
```
![h17](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/90d9a622-a23c-4553-8bc8-1f41a61cd4c6)


#### G. Date queries

1. Get the first name and last name of the employees who have been with the company the longest, assuming everyone in the database is all current employees.

###### Answer:
```
SELECT first_name, last_name, hire_date, 
	DATE_PART('year', CURRENT_DATE) - DATE_PART('year', hire_date) "employment_duration"
FROM employees AS e
ORDER BY employment_duration DESC;
```
![h18](https://github.com/lanhoang82/Data-Portfolio-1/assets/47191803/41c8fc2b-c3ce-4a9a-98cf-bace190b05a0)

