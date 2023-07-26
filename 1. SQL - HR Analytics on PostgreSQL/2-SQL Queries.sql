/* 1. Basic SELECT statement*/

/*Retrieve all the names (first_name, last_name) of employees using an alias name "First Name", 
"Last Name"*/
SELECT first_name "First Name", last_name "Last Name" FROM employees;

/*Get unique department ID from employee table */
SELECT DISTINCT department_id FROM employees;

/*Get the details of all employees from the employee table in descending order by their first name*/
SELECT * FROM employees 
ORDER BY first_name DESC;

/*Get the employee ID, names (first_name, last_name) and salary in ascending order according to 
their salary*/
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary ASC;

/*Get the maximum and minimum salary paid to the a particular employee*/
SELECT min_salary, max_salary FROM jobs
INNER JOIN employees ON jobs.job_id = employees.job_id 
WHERE employee_id = 180;

/*Get the number of employees working with the company*/
SELECT COUNT(DISTINCT employee_id) FROM employees;

/* 2. JOIN statement*/

/*Make a join with employees and departments table to find the name of the employee, 
including first_name and last name, department ID and name of departments*/
SELECT first_name, last_name, employees.department_id, department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

/*Make a join with 4 tables employees, jobs departments and locations to find the name, 
including first_name and last_name, jobs, salary, department name and ID, of the employees working 
in Munich*/
SELECT first_name, last_name, job_title, department_name, city, salary, departments.department_id
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
INNER JOIN departments ON departments.department_id = employees.department_id
INNER JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city = 'Munich';

/*Make a join with 3 tables employees, departments and locations to get the department name, 
number of employees working in each department, as well as number of locations that department
has representation in.*/
SELECT department_name "Department Name", COUNT(employee_id) "Number of Employees", COUNT(DISTINCT locations.location_id) "Number of Locations"
FROM departments 
INNER JOIN employees ON departments.department_id = employees.department_id 
INNER JOIN locations ON locations.location_id = departments.location_id
GROUP BY department_name
ORDER BY "Number of Employees" DESC;

/* 3. CASE statements, Aggregate Functions and Group By*/

/*Get the average salary for each post excluding all the clerks*/
SELECT job_title "Job Title", ROUND(AVG(salary),0) "Average Salary"
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
WHERE job_title NOT LIKE '%Clerk%'
GROUP BY job_title
ORDER BY "Average Salary" DESC;

/*Categorize the average salary for each post in the ranges High, Mid, Low*/
SELECT job_title "Job Title", ROUND(AVG(salary),0) "Average Salary", 
	CASE WHEN AVG(salary) >= 16000 THEN 'High'
		WHEN AVG(salary) < 16000 AND AVG(salary) >= 11000 THEN 'Mid-High'
		WHEN AVG(salary) < 11000 AND AVG(salary) >= 7000 THEN 'Mid-Low'
		ELSE 'Low' END AS "Salary Category"
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
GROUP BY job_title
ORDER BY "Average Salary" DESC;

/*Get the job title, job ID, department name, department ID and maximum salary of each post for 
maximum salary is at or above $5000*/
SELECT job_title, e.job_id, e.department_id, d.department_name, max_salary
FROM employees AS e
INNER JOIN jobs AS j ON j.job_id = e.job_id
INNER JOIN departments AS d ON d.department_id = e.department_id
WHERE max_salary > 5000
ORDER BY max_salary DESC;

/* 4. Subqueries and/or Common Table Expressions (CTE) */

/*Find the first_name, last_name and salaries of the employees who have salary higher than or 
equal to the average salary of their job family*/

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

/*Find the first_name and last_name of the employees under a manager who works for a department 
based in the United States*/
WITH manager_info AS (
	SELECT DISTINCT manager_id, d.location_id, country_name
	FROM departments AS d
	LEFT JOIN locations AS l ON d.location_id = l.location_id
	LEFT JOIN countries AS co ON co.country_id = l.country_id
	WHERE country_name = 'United States of America')
SELECT first_name, last_name, e.manager_id, country_name
FROM employees AS e
INNER JOIN manager_info AS mi ON mi.manager_id = e.manager_id;

/*Same request as above but using a subquery instead of a CTE*/
SELECT first_name, last_name, manager_id
FROM employees AS e
WHERE manager_id IN (
	SELECT DISTINCT manager_id
	FROM departments AS d
	LEFT JOIN locations AS l ON d.location_id = l.location_id
	LEFT JOIN countries AS co ON co.country_id = l.country_id
	WHERE country_name = 'United States of America');
	
/*Find the first_name, last_name and salary, which is equal to the minimum salary for this post
he/she is working on.*/

SELECT first_name, last_name, salary
FROM employees AS e
INNER JOIN jobs AS j 
	ON e.job_id = j.job_id
WHERE salary = min_salary; -- first option without subquery

SELECT first_name, last_name, salary
FROM employees AS e
WHERE salary = (
	SELECT min_salary
	FROM jobs AS j
	WHERE e.job_id = j.job_id); --correlated subquery

/* 5. Window Functions*/

/*Find the first_name and last_name of the employees, their salary and the average salary 
of their job family*/
SELECT first_name, last_name, job_title, ROUND(salary, 0) AS salary,
	ROUND(AVG(salary) OVER(PARTITION BY job_title), 0) AS avg_sal_job_fam
FROM employees AS e
INNER JOIN jobs AS j ON e.job_id = j.job_id;

/* 6. Date queries*/

/*Get the first name and last name of the employees who has been with the company the longest
assuming everyone in the database are all current employees*/
SELECT first_name, last_name, hire_date, 
	DATE_PART('year', CURRENT_DATE) - DATE_PART('year', hire_date) "employment_duration"
FROM employees AS e
ORDER BY employment_duration DESC;

/**/


/**/
