-- 1) Write a query to find the name (first_name, last name), department ID and name of 
-- all the employees
use exercise_hr;
SELECT first_name, last_name, department_id, department_name 
FROM employees 
JOIN departments USING (department_id);


-- 2)Write a query to display job title, employee name, and the difference between salary 
-- of the employee and minimum salary for the job
use exercise_hr;
SELECT job_title, first_name, last_name,salary-min_salary 'Salary-Min_Salary' 
FROM employees 
NATURAL JOIN jobs;



-- 3)Write a query to find the employee ID, job title, number of days between ending 
-- date and starting date for all jobs in department 90
use exercise_hr;
SELECT employee_id, job_title, end_date-start_date Days FROM job_history 
NATURAL JOIN jobs 
WHERE department_id=90;


-- 4)Write a query to get the department name and average salary in the department.
SELECT department_name, AVG(salary)
FROM departments 
JOIN employees USING (department_id) 
GROUP BY department_name;






















