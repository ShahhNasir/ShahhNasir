Q1. Create a database named company_db.
create database company_db;
Q2. Select and use the company_db database.
use company_db;

Q3. Create an employees table with employee_id, employee_name, department, salary, city, and hire_date columns.
Q4. Make employee_id the PRIMARY KEY. Q5. Make employee_name NOT NULL. 
Q6. Add a UNIQUE constraint to an email column. 
Q7. Add a CHECK constraint so salary must be greater than 0. 
Q8. Add a DEFAULT value of 'Hyderabad' for the city column.
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    department VARCHAR(100),
    salary DECIMAL(10,2) CHECK (salary > 0),
    city VARCHAR(50) DEFAULT 'Hyderabad',
    hire_date DATE,
    email VARCHAR(100) UNIQUE,
    PRIMARY KEY (employee_id)
);
select * from employees;
Q9.Create a departments table with department_id, department_name, location, and budget. 
Q10. Make department_id the PRIMARY KEY in the departments table.
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100),
    budget DECIMAL(12,2)
);
select * from departments;
Q11.Create a projects table with project_id, project_name, department_id, and budget.
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    department_id INT,
    budget DECIMAL(12,2)
);
select * from projects;
Q12. Add a FOREIGN KEY from employees.department_id to departments.department_id.
use compan_db;
ALTER TABLE employees
ADD COLUMN department_id INT;
ALTER TABLE employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);
select * from employees;
Q13. Insert one employee record.
INSERT INTO departments
(department_id, department_name, location, budget)
VALUES
(101, 'IT', 'Hyderabad', 1000000);
select * from departments;
use company_db;

DESCRIBE employees;
INSERT INTO employees
(employee_id, employee_name, department_id, department, salary, city, hire_date, email)
VALUES
(1, 'Rahul', 101, 'IT', 50000, DEFAULT, '2025-01-15', 'rahul@company.com');
select * from employees;
Q14. Insert five employee records in a single INSERT statement.

INSERT INTO departments
(department_id, department_name, location, budget)
VALUES
(102, 'HR', 'Hyderabad', 500000),
(103, 'Finance', 'Mumbai', 750000),
(104, 'Marketing', 'Chennai', 600000);
select * from departments;
use company_db;
INSERT INTO employees
(employee_id, employee_name, department_id, department, salary, city, hire_date, email)
VALUES
(2, 'Priya', 102, 'HR', 45000, 'Hyderabad', '2025-02-10', 'priya@company.com'),
(3, 'Arjun', 101, 'IT', 60000, 'Hyderabad', '2025-03-05', 'arjun@company.com'),
(4, 'Sneha', 103, 'Finance', 55000, 'Mumbai', '2025-03-20', 'sneha@company.com'),
(5, 'Vikram', 104, 'Marketing', 48000, 'Chennai', '2025-04-01', 'vikram@company.com'),
(6, 'Anita', 102, 'HR', 47000, 'Bangalore', '2025-04-15', 'anita@company.com');
select * from employees;
Q15. Insert a department record.
INSERT INTO departments
(department_id, department_name, location, budget)
VALUES
(101, 'IT', 'Hyderabad', 1000000);
select * from departments;
Q16. Create a students table with PRIMARY KEY, NOT NULL, UNIQUE, CHECK, and DEFAULT constraints.
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Hyderabad'
);
select * from students;
Q17. Create a table named attendance with employee_id, attendance_date, and status
use company_db;
CREATE TABLE attendance (
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20)
);
select * from attendance;
Q18. Create a table only if it does not already exist.
CREATE TABLE IF NOT EXISTS attendance (
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20)
);
Q19. Describe or display the structure of the employees table.
use company_db;
describe employees;
Q20. Drop a temporary table named temp_data if it exists.
DROP TABLE IF EXISTS temp_data;
Q21. Display all columns from the employees table.
SELECT * FROM employees;
Q22. Display only employee_name and salary.
SELECT employee_name, salary
FROM employees;
Q23. Display employees who live in Hyderabad.
SELECT *
FROM employees
WHERE city = 'Hyderabad';
Q24. Display employees whose salary is greater than 60000.
SELECT * FROM employees
WHERE salary > 60000;
Q25. Display employees whose salary is less than or equal to 50000.
SELECT *
FROM employees
WHERE salary <= 50000;
Q26. Display employees whose salary is between 50000 and 70000.
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 70000;
Q27.Display employees who live in Hyderabad, Bangalore, or Mumbai using IN. 
SELECT *
FROM employees
WHERE city IN ('Hyderabad', 'Bangalore', 'Mumbai');
Q28. Display employees who do not live in Hyderabad. 
SELECT *
FROM employees
WHERE city <> 'Hyderabad';
Q29. Display employees whose names start with 'A'.
SELECT * FROM employees
WHERE employee_name LIKE 'A%';
Q30. Display employees whose names end with 'a'.
select * from employees
where employee_name LIKE '%a'
Q31. Display employees whose names contain the letter 'i'.
SELECT * FROM employees
WHERE employee_name LIKE '%i%';
Q32. Display employees whose department is NULL.
SELECT *
FROM employees
WHERE department IS NULL;
Q33. Display employees whose department is NOT NULL.
SELECT * FROM employees
WHERE department IS NOT NULL;
Q34. Display employees hired after 2022-01-01.
use company_db;
SELECT * FROM employees
WHERE hire_date > '2022-01-01';
Q35. Display employees hired between two given dates. 
SELECT *
FROM employees
WHERE hire_date BETWEEN '2022-01-01' AND '2024-01-01';

Q36. Display employees with salaries greater than 50000 AND who live in Hyderabad.
SELECT *
FROM employees
WHERE salary > 50000
  AND city = 'Hyderabad';
Q37. Display employees who live in Hyderabad OR earn more than 70000.
SELECT *
FROM employees
WHERE city = 'Hyderabad'
   OR salary > 70000;
Q38. Display employees who are NOT in the HR department. 
SELECT *
FROM employees
WHERE department <> 'HR';
select * from employees;

Q39. Display distinct cities from the employees table. 
SELECT DISTINCT city
FROM employees;
Q40. Display distinct departments from the employees table.
SELECT DISTINCT department
FROM employees;
Q41. Display employees sorted by salary in ascending order.
SELECT *
FROM employees
ORDER BY salary ASC;
Q42. Display employees sorted by salary in descending order. 
SELECT *
FROM employees
ORDER BY salary DESC;
Q43. Display employees sorted first by department and then by salary descending.
SELECT *
FROM employees
ORDER BY salary DESC;
Q44. Display the first 5 employees after sorting by employee_id.
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5;
Q45. Display the top 3 highest-paid employees. 
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
Q46. Update the salary of one employee using employee_id.
USE company_db;
UPDATE employees
SET salary = 70000
WHERE employee_id = 1;
SELECT *
FROM employees
WHERE employee_id = 1;

Q47. Increase the salary of all employees by 10 percent
UPDATE employees
SET salary = salary * 1.10
WHERE employee_id IS NOT NULL;
SELECT employee_id, employee_name, salary
FROM employees;
Q48.Increase the salary of employees in the Data Science department by 5000.
UPDATE employees
SET salary = salary + 5000
WHERE department = 'Data Science';
SELECT employee_id, employee_name, department, salary
FROM employees
WHERE department = 'Data Science';
Q49. Change the city of all employees currently living in Bangalore to Bengaluru.
UPDATE employees
SET city = 'Bengaluru'
WHERE city = 'Bangalore';
SELECT *
FROM employees
WHERE city = 'Bengaluru';
Q50. Delete one employee using employee_id.
DELETE FROM employees
WHERE employee_id = 6;
select * from employees
where employee_id = 6;
Q51. Delete employees whose salary is below a specified amount.
DELETE FROM employees
WHERE salary < 50000;
select * from employees
where salary < 50000;

Q52. Add an email column to the employees table.
ALTER TABLE employees
ADD COLUMN email VARCHAR(150);
select * from employees;
Q53. Add a phone_number column to the employees table.
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(20);
select * from employees;
Q54.Modify the length of the employee_name column.
ALTER TABLE employees
MODIFY COLUMN employee_name VARCHAR(200);
select * from employees;
Q55. Rename the city column to employee_city.
ALTER TABLE employees
RENAME COLUMN city TO employee_city;
select * from employees;
Q56. Drop the phone_number column. 
ALTER TABLE employees
DROP COLUMN phone_number;
select * from employees;
Q57. Display employee names in uppercase.
use compant_db;
SELECT UPPER(employee_name) AS employee_name
FROM employees;

Q58. Display employee names in lowercase.
SELECT LOWER(employee_name) AS employee_name
FROM employees;
Q59.Display the length of every employee name. 
SELECT employee_name, LENGTH(employee_name) AS name_length
FROM employees;
Q60.Display the first three characters of every employee name. 
SELECT employee_name,
       SUBSTRING(employee_name, 1, 3) AS first_three_characters
FROM employees;
Q61.Display employee_name and salary rounded to the nearest thousand using an appropriate expression.
SELECT employee_name,
       salary,
       ROUND(salary, -3) AS rounded_salary
FROM employees;
 Q62. Display the current date. 
 use company_db;

 SELECT CURDATE() AS today_date;
Q63. Calculate how many years each employee has worked using hire_date.
SELECT employee_name,
       hire_date,
       TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS years_worked
FROM employees;
Q64.Replace NULL department values with 'Unassigned' in the query result.
SELECT employee_name,
       COALESCE(department, 'Unassigned') AS department
FROM employees;
Q65.Use CASE to label employees as Low, Medium, or High salary based on salary ranges. 4. Aggregate Functions, GROUP BY & HAVING (66–90)
SELECT employee_name,
       salary,
       CASE
           WHEN salary < 50000 THEN 'Low'
           WHEN salary <= 70000 THEN 'Medium'
           ELSE 'High'
       END AS salary_category
FROM employees;
Q66.Find the total number of employees. Q67. Find the total salary paid to all employees.
SELECT COUNT(*) AS total_employees
FROM employees;
Q68.Find the average salary of all employees.
SELECT SUM(salary) AS total_salary
FROM employees;
Q69.Find the highest salary. Q70. Find the lowest salary.
SELECT MAX(salary) AS highest_salary
FROM employees;
Q70.Find the lowest salary.
SELECT MIN(salary) AS lowest_salary
FROM employees;
Q71. Find the number of employees in Hyderabad.
SELECT COUNT(*) AS hyderabad_employees
FROM employees
WHERE employee_city = 'Hyderabad';
Q72.Find the total salary paid to employees in Mumbai.
SELECT SUM(salary) AS total_mumbai_salary
FROM employees
WHERE employee_city = 'Mumbai';
Q73.Find the average salary of employees in Bangalore.
SELECT AVG(salary) AS average_salary
FROM employees
WHERE employee_city = 'Bengaluru';
Q74.Find the number of employees in each department.
SELECT department,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department;
Q75.Find the average salary in each department.
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department;
Q76.Find the maximum salary in each department.
SELECT department,
       MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;
Q77.Find the minimum salary in each department.
SELECT department,
       MIN(salary) AS minimum_salary
FROM employees
GROUP BY department;
Q78.Find the total salary in each department.
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department;
Q79.Find the number of employees in each city.
SELECT employee_city,
       COUNT(*) AS employee_count
FROM employees
GROUP BY employee_city;
Q80 Find the average salary in each city. 
SELECT employee_city,
       AVG(salary) AS average_salary
FROM employees
GROUP BY employee_city;
Q81. Find departments having more than 5 employees.
SELECT department,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
Q82.Find departments whose average salary is greater than 60000.
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
Q83. Find cities whose total salary is greater than 200000.
SELECT employee_city,
       SUM(salary) AS total_salary
FROM employees
GROUP BY employee_city
HAVING SUM(salary) > 200000;
Q84.Find the department with the highest total salary.
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;
Q85.Find the department with the highest average salary
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;
Q86.Display employee count and average salary for each department and city combination.
SELECT department,
       employee_city,
       COUNT(*) AS employee_count,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department, employee_city;
Q87.Find the difference between the maximum and minimum salary in each department
SELECT department,
       MAX(salary) - MIN(salary) AS salary_difference
FROM employees
GROUP BY department;
Q88.Find departments where the maximum salary is greater than 70000.
SELECT department,
       MAX(salary) AS maximum_salary
FROM employees
GROUP BY department
HAVING MAX(salary) > 70000;
Q89.Find cities having at least 3 employees with salary above 60000.
SELECT employee_city,
       COUNT(*) AS employee_count
FROM employees
WHERE salary > 60000
GROUP BY employee_city
HAVING COUNT(*) >= 3;
Q90.Find the total number of distinct departments and distinct cities.
use company_db;
SELECT
    COUNT(DISTINCT department) AS distinct_departments,
    COUNT(DISTINCT city) AS distinct_cities
FROM employees;
select * from departments;
Q91.Create a products table with product_id as PRIMARY KEY.
use company_db;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);
select * from products;
Q92.Create a users table where email must be UNIQUE.
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(150) UNIQUE
);
select * from users;
 Q93. Create an orders table where order_amount must be greater than 0 using CHECK.
 CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount DECIMAL(10,2) CHECK (order_amount > 0)
);
select * from orders;
 Q94. Create a customers table where customer_name cannot be NULL.
 CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(150)
);
select * from customers;
 Q95. Create a table with a DEFAULT status value of 'Active'.
 CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) DEFAULT 'Hyderabad'
);
select * from locations;
Q96. Insert a row that uses the DEFAULT value.
INSERT INTO products (product_id, product_name)
VALUES (101, 'Laptop');
select * from products;
 Q97. Attempt to insert a duplicate PRIMARY KEY and explain which constraint is violated.
 INSERT INTO products (product_id, product_name, price)
VALUES (101, 'Laptop', 50000);
INSERT INTO products (product_id, product_name, price)
VALUES (101, 'Mouse', 1000); #duplicate primary key
select * from products;
Q98. Attempt to insert a duplicate UNIQUE email and explain which constraint is violated.
INSERT INTO users (user_id, username, email)
VALUES (1, 'John', 'john@example.com');
select * from users;
INSERT INTO users (user_id, username, email)
VALUES (2, 'Janu', 'john@example.com'); # duplicate key
select * from users;
Q99. Create employees and departments with a FOREIGN KEY relationship.
drop table employees;
drop table departments;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
select * from departments;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
select * from employees;
Q100.Insert valid parent and child records respecting the FOREIGN KEY.
INSERT INTO departments (department_id, department_name)
VALUES (1, 'HR');
select * from departments;
Q101. Attempt to insert an employee with a department_id that does not exist. 
INSERT INTO employees (employee_id, employee_name, department_id)
VALUES (102, 'David', 99);
select * from employees;
 Q102. Add a CHECK constraint to allow age only between 18 and 60. 
 use company_db;
 CREATE TABLE people (
    person_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    CONSTRAINT chk_age CHECK (age BETWEEN 18 AND 60)
);
describe people;
select * from people;
INSERT INTO people (person_id, name, age)
VALUES (2, 'David', 65);
select * from people;
 Q103. Create a composite PRIMARY KEY using two columns.
 CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);
select * from student_courses;
 Q104. Create an attendance table where employee_id and attendance_date together form a composite key.
 CREATE TABLE attendance (
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    PRIMARY KEY (employee_id, attendance_date)
);
select * from attendance;
 Q105. Create a table with a named constraint and then identify its purpose.
 CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(150),
    CONSTRAINT uq_accounts_email UNIQUE (email)
);
select * from accounts;
Q106. Display employee_name and department_name using an INNER JOIN.
use company_db;
SELECT e.employee_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
Q107. Display employee_name, salary, department_name, and location using a JOIN.
use company_db;
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10,2);
ALTER TABLE departments
ADD COLUMN location VARCHAR(100);
select * from departments;
UPDATE employees
SET salary = 50000
WHERE employee_id = 101;
select * from employees;
SELECT e.employee_name, e.salary,
       d.department_name, d.location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;
Q108. Find employees working in the Data Science department using a JOIN. 
SELECT e.employee_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Data Science';
Q109.Find employees working in departments located in Hyderabad.
SELECT e.employee_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.location = 'Hyderabad';
Q110.Display all employees even if they do not belong to any department.
SELECT e.employee_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
Q111.Display all departments even if they have no employees.
SELECT d.department_name, e.employee_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id;
Q112.Find departments that currently have no employees.
SELECT d.department_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;
Q113.Find employees who do not have a matching department.
SELECT e.employee_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;
Q114.Find the number of employees in each department using JOIN and GROUP BY.
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
Q115.Find the average salary in each department using JOIN and GROUP BY.
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
 Q116. Display each department with employee count including departments with zero employees. 
 SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
Q117.Display each department with total salary including departments with zero employees.
SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
Q118.Join departments with projects and display department_name and project_name.
SELECT d.department_name, p.project_name
FROM departments d
JOIN projects p
ON d.department_id = p.department_id;
Q119.Display employees, department names, and project names using appropriate joins.
SELECT e.employee_name,
       d.department_name,
       p.project_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN projects p
ON d.department_id = p.department_id;
Q120.Find departments that have at least one project. 
SELECT DISTINCT d.department_name
FROM departments d
JOIN projects p
ON d.department_id = p.department_id;
Q121.Find departments that have no projects.
SELECT d.department_name
FROM departments d
LEFT JOIN projects p
ON d.department_id = p.department_id
WHERE p.project_id IS NULL;
Q122.Create an employee-manager relationship using manager_id in the employees table. 
ALTER TABLE employees
ADD COLUMN manager_id INT;
select * from employees;
ALTER TABLE employees
ADD CONSTRAINT fk_employee_manager
FOREIGN KEY (manager_id)
REFERENCES employees(employee_id);
select * from employees;
Q123.Using a SELF JOIN, display employee name and manager name. 
SELECT e.employee_name AS employee,
       m.employee_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;
Q124.Using a SELF JOIN, display only employees who have managers. 
SELECT e.employee_name AS employee,
       m.employee_name AS manager
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.employee_id;
Q125.Using a SELF JOIN, display employees who do not have managers.
SELECT e.employee_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NULL;
Q126.Find all managers who manage at least one employee. 
SELECT DISTINCT m.employee_name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;
Q127.Count the number of employees reporting to each manager. 
SELECT m.employee_name AS manager,
       COUNT(e.employee_id) AS employee_count
FROM employees m
JOIN employees e
ON e.manager_id = m.employee_id
GROUP BY m.employee_id, m.employee_name;
Q128.Find managers who manage more than 3 employees. 
SELECT m.employee_name AS manager,
       COUNT(e.employee_id) AS employee_count
FROM employees m
JOIN employees e
ON e.manager_id = m.employee_id
GROUP BY m.employee_id, m.employee_name
HAVING COUNT(e.employee_id) > 3;
Q129.Display employee, manager, and employee salary using a SELF JOIN. 
SELECT e.employee_name AS employee,
       m.employee_name AS manager,
       e.salary AS employee_salary
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;
Q130.Find employees whose salary is greater than their manager's salary.
 SELECT e.employee_name AS employee,
       e.salary AS employee_salary,
       m.employee_name AS manager,
       m.salary AS manager_salary
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
Q131.Find employees who work in the same department as their manager. 
SELECT e.employee_name AS employee,
       m.employee_name AS manager,
       e.department_id
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.department_id = m.department_id;
Q132.Use a LEFT JOIN to find unmatched rows between employees and departments.
SELECT e.employee_name, e.department_id
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;
Q133.Use multiple JOINs to display employee, department, and project information.
SELECT e.employee_name,
       d.department_name,
       p.project_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN projects p
ON d.department_id = p.department_id;
Q134.Find the total project budget for each department.
DESCRIBE projects;
ALTER TABLE projects
ADD COLUMN project_budget DECIMAL(12,2);
select * from projects;
SELECT d.department_name,
       COALESCE(SUM(p.project_budget), 0) AS total_project_budget
FROM departments d
LEFT JOIN projects p
ON d.department_id = p.department_id
GROUP BY d.department_id, d.department_name;
Q135.Find departments whose total project budget is greater than their department budget. 
use company_db;
ALTER TABLE departments
ADD COLUMN department_budget DECIMAL(12,2);
select * from departments;
UPDATE departments
SET department_budget = 100000
WHERE department_id = 1;
select * from departments;

SELECT d.department_name,
       d.department_budget,
       SUM(p.project_budget) AS total_project_budget
FROM departments d
JOIN projects p
ON d.department_id = p.department_id
GROUP BY d.department_id,
         d.department_name,
         d.department_budget
HAVING SUM(p.project_budget) > d.department_budget;
Q136. Find employees whose salary is greater than the overall average salary.
SELECT employee_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
Q137.Find the employee or employees with the highest salary using a subquery.
SELECT employee_name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
Q138.Find the employee or employees with the lowest salary using a subquery. 
SELECT employee_name, salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);
Q139.Find employees who earn the same salary as Alice.
SELECT employee_name, salary
FROM employees
WHERE salary = (
    SELECT salary
    FROM employees
    WHERE employee_name = 'Alice'
);
Q140.Find employees who earn more than Alice. 
SELECT employee_name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE employee_name = 'Alice'
);
Q141.Find employees working in the same department as Alice.
SELECT employee_name, department_id
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE employee_name = 'Alice'
);
Q142.Find employees whose salary is greater than the average salary of their department.
SELECT e.employee_name,
       e.salary,
       e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
); 
Q143.Find employees whose salary is less than the average salary of their department.
SELECT e.employee_name,
       e.salary,
       e.department_id
FROM employees e
WHERE e.salary < (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
Q144.Find the department with the highest average salary using a subquery.
SELECT department_name
FROM departments
WHERE department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);
Q145.Find departments whose average salary is greater than the company average salary.
SELECT department_id
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);
Q146.Find employees who work in departments located in Hyderabad using a subquery.
SELECT employee_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location = 'Hyderabad'
);
Q147.Find employees who do not belong to any existing department using NOT IN or NOT EXISTS.
SELECT e.employee_name
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.department_id = e.department_id
);
Q148.Find departments that have at least one employee using EXISTS.
SELECT d.department_name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);
Q149.Find departments that have no employees using NOT EXISTS.
SELECT d.department_name
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);
Q150.Find employees whose salary is greater than every employee in the HR department.
SELECT employee_name, salary
FROM employees
WHERE salary > ALL (
    SELECT e.salary
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
    WHERE d.department_name = 'HR'
);
Q151.Find employees whose salary is greater than at least one employee in the Finance department.
SELECT employee_name, salary
FROM employees
WHERE salary > ANY (
    SELECT e.salary
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
    WHERE d.department_name = 'Finance'
);
Q152.Find the second-highest distinct salary using a subquery.
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
153. Find the third-highest distinct salary using a subquery.
SELECT MAX(salary) AS third_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);
Q154.Find employees with the second-highest distinct salary. 
SELECT employee_name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);
Q155.Use a correlated subquery to find employees earning above their department average. 
SELECT e.employee_name,
       e.salary,
       e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
Q156. Create a CTE containing employees whose salary is greater than 60000. 
WITH high_salary_employees AS (
    SELECT employee_id, employee_name, salary, department_id
    FROM employees
    WHERE salary > 60000
)
SELECT *
FROM high_salary_employees;
Q157. Use a CTE to calculate the company average salary and display employees earning above it.
WITH company_average AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT e.employee_name,
       e.salary
FROM employees e
CROSS JOIN company_average c
WHERE e.salary > c.avg_salary;
Q158.Use a CTE to calculate average salary by department.
WITH department_average AS (
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name,
       da.avg_salary
FROM department_average da
JOIN departments d
ON da.department_id = d.department_id;
Q159.Use a CTE to find departments with average salary greater than 60000.
WITH department_average AS (
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name,
       da.avg_salary
FROM department_average da
JOIN departments d
ON da.department_id = d.department_id
WHERE da.avg_salary > 60000;
Q160.Create two CTEs: one for department statistics and one for high-paying departments.
 WITH department_stats AS (
    SELECT department_id,
           COUNT(*) AS employee_count,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
),
high_paying_departments AS (
    SELECT department_id,
           avg_salary
    FROM department_stats
    WHERE avg_salary > 60000
)
SELECT d.department_name,
       h.avg_salary,
       ds.employee_count
FROM high_paying_departments h
JOIN departments d
ON h.department_id = d.department_id
JOIN department_stats ds
ON h.department_id = ds.department_id;
Q161.Use a CTE to calculate total salary by city and filter cities above a chosen threshold.
WITH city_salary AS (
    SELECT d.location,
           SUM(e.salary) AS total_salary
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
    GROUP BY d.location
)
SELECT location,
       total_salary
FROM city_salary
WHERE total_salary > 60000;
Q162.Use a CTE to find the highest salary in each department. 
WITH department_max_salary AS (
    SELECT department_id,
           MAX(salary) AS highest_salary
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name,
       dm.highest_salary
FROM department_max_salary dm
JOIN departments d
ON dm.department_id = d.department_id;
Q163. Use a CTE to find employees earning above their department average.
WITH department_avg AS (
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT e.employee_name,
       e.salary,
       d.department_name,
       da.avg_salary
FROM employees e
JOIN department_avg da
ON e.department_id = da.department_id
JOIN departments d
ON e.department_id = d.department_id
WHERE e.salary > da.avg_salary;
Q164.Use a CTE to rank employees by salary. 
WITH ranked_employees AS (
    SELECT employee_name,
           salary,
           RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employees
)
SELECT *
FROM ranked_employees;
Q165.Use a CTE to find the top 2 highest-paid employees.
WITH ranked_employees AS (
    SELECT employee_name,
           salary,
           ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
    FROM employees
)
SELECT employee_name, salary
FROM ranked_employees
WHERE rn <= 2;
 Q166. Use a CTE with ROW_NUMBER to find the highest-paid employee in each department.
 WITH ranked_employees AS (
    SELECT employee_name,
           salary,
           department_id,
           ROW_NUMBER() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS rn
    FROM employees
)
SELECT employee_name,
       salary,
       department_id
FROM ranked_employees
WHERE rn = 1;
Q167.Use a CTE with DENSE_RANK to find the second-highest salary in each department.
WITH ranked_employees AS (
    SELECT employee_name,
           salary,
           department_id,
           DENSE_RANK() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
)
SELECT employee_name,
       salary,
       department_id
FROM ranked_employees
WHERE salary_rank = 2; 
Q168.Create a CTE that joins employees and departments, then filter the result.
WITH employee_details AS (
    SELECT e.employee_name,
           e.salary,
           d.department_name
    FROM employees e
    JOIN departments d
    ON e.department_id = d.department_id
)
SELECT *
FROM employee_details
WHERE salary > 60000;
Q169.Create a CTE containing departments with employee counts and filter departments with more than 3 employees.
WITH department_counts AS (
    SELECT department_id,
           COUNT(*) AS employee_count
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name,
       dc.employee_count
FROM department_counts dc
JOIN departments d
ON dc.department_id = d.department_id
WHERE dc.employee_count > 3;
 Q170. Create multiple dependent CTEs where the second CTE uses the first CTE.
 WITH department_stats AS (
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
),
high_paying_departments AS (
    SELECT department_id,
           avg_salary
    FROM department_stats
    WHERE avg_salary > 60000
)
SELECT d.department_name,
       h.avg_salary
FROM high_paying_departments h
JOIN departments d
ON h.department_id = d.department_id;
Q171. Assign a unique row number to all employees ordered by salary descending.
SELECT employee_name,
       salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;
Q172.Assign a row number to employees within each department ordered by salary descending.
SELECT employee_name,
       department_id,
       salary,
       ROW_NUMBER() OVER (
           PARTITION BY department_id
           ORDER BY salary DESC
       ) AS row_num
FROM employees;
Q173.Rank employees by salary using RANK().
SELECT employee_name,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
Q174.Rank employees by salary using DENSE_RANK(). 
SELECT employee_name,
       salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
Q175.Compare ROW_NUMBER, RANK, and DENSE_RANK on duplicate salary values.
SELECT employee_name,
       salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_number_rank,
       RANK() OVER (ORDER BY salary DESC) AS rank_value,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_value
FROM employees;
Q176.Display the company average salary beside every employee using AVG() OVER().
SELECT employee_name,
       salary,
       AVG(salary) OVER () AS company_average_salary
FROM employees;
Q177.Display the department average salary beside every employee using PARTITION BY.
SELECT employee_name,
       department_id,
       salary,
       AVG(salary) OVER (
           PARTITION BY department_id
       ) AS department_average_salary
FROM employees;
Q178.Calculate a running total of salary ordered by hire_date.
SELECT employee_name,
       hire_date,
       salary,
       SUM(salary) OVER (
           ORDER BY hire_date
       ) AS running_total_salary
FROM employees;
Q179.Use LAG() to display the previous employee's salary when ordered by hire_date.
ALTER TABLE employees
ADD COLUMN hire_date DATE;
UPDATE employees
SET hire_date = '2022-01-15'
WHERE employee_id = 101;
UPDATE employees
SET hire_date = '2023-03-20'
WHERE employee_id = 102;
SELECT employee_id, employee_name, hire_date, salary
FROM employees;
SELECT employee_name,
       hire_date,
       salary,
       LAG(salary) OVER (
           ORDER BY hire_date
       ) AS previous_salary
FROM employees;
Q180.Use LEAD() to display the next employee's salary when ordered by hire_date.
SELECT employee_name,
       hire_date,
       salary,
       LEAD(salary) OVER (
           ORDER BY hire_date
       ) AS next_salary
FROM employees;
Q181. Find the top 3 highest-paid employees in every department, including ties if appropriate.
 Hint: Compare ROW_NUMBER, RANK, and DENSE_RANK before choosing one.
 WITH ranked_employees AS (
    SELECT e.employee_name,
           e.salary,
           e.department_id,
           DENSE_RANK() OVER (
               PARTITION BY e.department_id
               ORDER BY e.salary DESC
           ) AS salary_rank
    FROM employees e
)
SELECT re.employee_name,
       re.salary,
       d.department_name,
       re.salary_rank
FROM ranked_employees re
JOIN departments d
ON re.department_id = d.department_id
WHERE re.salary_rank <= 3
ORDER BY d.department_name,
         re.salary DESC;
         Q182. Find the employee whose salary is closest to the average salary of their department. 
         Hint: Calculate department average with a window function, then compare absolute differences.
         WITH employee_avg AS (
    SELECT employee_name,
           salary,
           department_id,
           AVG(salary) OVER (
               PARTITION BY department_id
           ) AS department_avg
    FROM employees
)
SELECT employee_name,
       salary,
       department_id,
       department_avg,
       ABS(salary - department_avg) AS difference
FROM employee_avg
WHERE ABS(salary - department_avg) = (
    SELECT MIN(ABS(e2.salary - e2.department_avg))
    FROM employee_avg e2
    WHERE e2.department_id = employee_avg.department_id
);
Q183.For every department, find the difference between its highest-paid and second-highest distinct salary.
 Hint: Use DENSE_RANK in a CTE. 
 WITH ranked_salaries AS (
    SELECT department_id,
           salary,
           DENSE_RANK() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees
),
department_salaries AS (
    SELECT department_id,
           MAX(CASE WHEN salary_rank = 1 THEN salary END) AS highest_salary,
           MAX(CASE WHEN salary_rank = 2 THEN salary END) AS second_highest_salary
    FROM ranked_salaries
    GROUP BY department_id
)
SELECT d.department_name,
       ds.highest_salary,
       ds.second_highest_salary,
       ds.highest_salary - ds.second_highest_salary AS salary_difference
FROM department_salaries ds
JOIN departments d
ON ds.department_id = d.department_id
WHERE ds.second_highest_salary IS NOT NULL;
Q184.Find employees whose salary is higher than their manager and whose department average salary is also above the company average.
 Hint: Combine SELF JOIN, window/aggregate logic, and a CTE.
 WITH salary_stats AS (
    SELECT employee_id,
           employee_name,
           salary,
           department_id,
           AVG(salary) OVER (
               PARTITION BY department_id
           ) AS department_avg,
           AVG(salary) OVER () AS company_avg
    FROM employees
)
SELECT e.employee_name AS employee,
       e.salary AS employee_salary,
       m.employee_name AS manager,
       m.salary AS manager_salary,
       e.department_avg,
       e.company_avg
FROM salary_stats e
JOIN employees m
ON e.employee_id <> m.employee_id
AND e.department_id = m.department_id
WHERE e.salary > m.salary
AND e.department_avg > e.company_avg
AND EXISTS (
    SELECT 1
    FROM employees x
    WHERE x.employee_id = e.employee_id
      AND x.manager_id = m.employee_id
);
Q185.Find the first employee hired in each department and
 the most recently hired employee in each department.
 Hint: Use two rankings ordered in opposite directions.
 WITH ranked_employees AS (
    SELECT employee_name,
           department_id,
           hire_date,
           ROW_NUMBER() OVER (
               PARTITION BY department_id
               ORDER BY hire_date ASC
           ) AS first_rank,
           ROW_NUMBER() OVER (
               PARTITION BY department_id
               ORDER BY hire_date DESC
           ) AS latest_rank
    FROM employees
)
SELECT d.department_name,
       MAX(CASE WHEN r.first_rank = 1 THEN r.employee_name END) AS first_employee,
       MAX(CASE WHEN r.first_rank = 1 THEN r.hire_date END) AS first_hire_date,
       MAX(CASE WHEN r.latest_rank = 1 THEN r.employee_name END) AS latest_employee,
       MAX(CASE WHEN r.latest_rank = 1 THEN r.hire_date END) AS latest_hire_date
FROM ranked_employees r
JOIN departments d
ON r.department_id = d.department_id
GROUP BY d.department_id, d.department_name;
Q186.Find departments where every employee earns more than 50000. Hint: Think about MIN(salary) or NOT EXISTS. 
SELECT d.department_name,
       MIN(e.salary) AS minimum_salary
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING MIN(e.salary) > 50000;
Q187. Find departments where at least 70 percent of employees earn above the company average salary.
 Hint: Use conditional aggregation and a company-average CTE.
 WITH company_avg AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees,
       SUM(
           CASE
               WHEN e.salary > c.avg_salary THEN 1
               ELSE 0
           END
       ) AS above_average,
       ROUND(
           100.0 * SUM(
               CASE
                   WHEN e.salary > c.avg_salary THEN 1
                   ELSE 0
               END
           ) / COUNT(e.employee_id),
           2
       ) AS percentage_above_average
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
CROSS JOIN company_avg c
GROUP BY d.department_id, d.department_name
HAVING SUM(
           CASE
               WHEN e.salary > c.avg_salary THEN 1
               ELSE 0
           END
       ) / COUNT(e.employee_id) >= 0.70;
 Q188. Find the longest consecutive hiring-date gap between employees when ordered by hire_date.
 Hint: Use LAG() and date difference logic. 
 WITH hiring_gaps AS (
    SELECT employee_name,
           hire_date,
           LAG(hire_date) OVER (
               ORDER BY hire_date
           ) AS previous_hire_date
    FROM employees
)
SELECT employee_name,
       previous_hire_date,
       hire_date,
       DATEDIFF(hire_date, previous_hire_date) AS gap_days
FROM hiring_gaps
WHERE previous_hire_date IS NOT NULL
ORDER BY gap_days DESC
LIMIT 1;

Q189. Find employees whose salary increased relative to the previous employee in their department when ordered by hire_date. 
Hint: PARTITION BY department with LAG().
USE company_db;
DESCRIBE employees;
WITH salary_comparison AS (
    SELECT employee_name,
           department_id,
           hire_date,
           salary,
           LAG(salary) OVER (
               PARTITION BY department_id
               ORDER BY hire_date
           ) AS previous_salary
    FROM employees
)
SELECT employee_name,
       department_id,
       hire_date,
       salary,
       previous_salary
FROM salary_comparison
WHERE salary > previous_salary;
select * from employees;
Q190.Find the department with the largest salary inequality, measured as maximum salary minus minimum salary. 
Hint: Aggregate first, then rank the result.
describe departments;
SELECT
    d.department_name,
    MAX(e.salary) AS maximum_salary,
    MIN(e.salary) AS minimum_salary,
    MAX(e.salary) - MIN(e.salary) AS salary_inequality
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY salary_inequality DESC
LIMIT 1;
select * from departments;
Q191.Find employees who share their salary with another employee in the same department.
 Hint: GROUP BY department and salary, or use a window COUNT().
 SELECT
    e.employee_name,
    e.department_id,
    e.salary
FROM employees e
JOIN (
    SELECT
        department_id,
        salary
    FROM employees
    GROUP BY department_id, salary
    HAVING COUNT(*) > 1
) duplicates
    ON e.department_id = duplicates.department_id
    AND e.salary = duplicates.salary
ORDER BY e.department_id, e.salary;
 Q192. Find the third-highest distinct salary in each department and return all employees who earn it.
 Hint: DENSE_RANK plus a CTE.
 WITH ranked_salaries AS (
    SELECT
        employee_name,
        department_id,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    d.department_name,
    r.employee_name,
    r.salary
FROM ranked_salaries r
JOIN departments d
    ON r.department_id = d.department_id
WHERE r.salary_rank = 3
ORDER BY d.department_name, r.salary DESC;
Q193.Find departments whose total employee salary exceeds their project budget, and return the difference. 
Hint: Aggregate employee salary and project budget separately before joining.
use company_db;
describe employees;
WITH employee_totals AS (
    SELECT
        department_id,
        SUM(salary) AS total_employee_salary
    FROM employees
    GROUP BY department_id
),
project_totals AS (
    SELECT
        department_id,
        SUM(project_budget) AS total_project_budget
    FROM projects
    GROUP BY department_id
)
SELECT
    d.department_name,
    e.total_employee_salary,
    p.total_project_budget,
    e.total_employee_salary - p.total_project_budget AS difference
FROM departments d
JOIN employee_totals e
    ON d.department_id = e.department_id
JOIN project_totals p
    ON d.department_id = p.department_id
WHERE e.total_employee_salary > p.total_project_budget;
Q194. Find employees who belong to departments with no projects but earn above their department average.
 Hint: Combine NOT EXISTS with a window calculation.
 WITH employee_stats AS (
    SELECT
        employee_id,
        employee_name,
        salary,
        department_id,
        AVG(salary) OVER (
            PARTITION BY department_id
        ) AS department_average
    FROM employees
)
SELECT
    e.employee_name,
    e.salary,
    d.department_name,
    e.department_average
FROM employee_stats e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary > e.department_average
AND NOT EXISTS (
    SELECT 1
    FROM projects p
    WHERE p.department_id = e.department_id
);
 Q195. Return one row per department containing the employee with the highest salary,
 the employee with the lowest salary, and the department average. Hint: Use conditional aggregation after ranking. 
  SELECT
        employee_name,
        department_id,
        salary,
        AVG(salary) OVER (
            PARTITION BY department_id
        ) AS department_average,
        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS highest_rank,
        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary ASC
        ) AS lowest_rank
    FROM employees
)
SELECT
    d.department_name,
    MAX(
        CASE
            WHEN r.highest_rank = 1
            THEN r.employee_name
        END
    ) AS highest_paid_employee,
    MAX(
        CASE
            WHEN r.lowest_rank = 1
            THEN r.employee_name
        END
    ) AS lowest_paid_employee,
    MAX(r.department_average) AS department_average
FROM ranked_employees r
JOIN departments d
    ON r.department_id = d.department_id
GROUP BY d.department_id, d.department_name;
 Q196. Find employees who are in the top 20 percent of salaries within their department.
 Hint: Investigate NTILE(5) or percentile-related window logic supported by your SQL database.
 WITH salary_groups AS (
    SELECT
        employee_name,
        department_id,
        salary,
        NTILE(5) OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_group
    FROM employees
)
SELECT
    employee_name,
    department_id,
    salary
FROM salary_groups
WHERE salary_group = 1
ORDER BY department_id, salary DESC;
Q197.Find the median salary in each department. Hint: The exact syntax depends on your SQL database; 
consider ROW_NUMBER plus counts if percentile functions are unavailable.
WITH ranked AS (
    SELECT
        department_id,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department_id
            ORDER BY salary
        ) AS row_num,
        COUNT(*) OVER (
            PARTITION BY department_id
        ) AS total_count
    FROM employees
)
SELECT
    d.department_name,
    AVG(r.salary) AS median_salary
FROM ranked r
JOIN departments d
    ON r.department_id = d.department_id
WHERE r.row_num IN (
    FLOOR((r.total_count + 1) / 2),
    FLOOR((r.total_count + 2) / 2)
)
GROUP BY d.department_id, d.department_name; 
Q198.Find employees whose salary is greater than the average salary of all employees hired before them.
 Hint: This requires a running window frame or correlated logic.
 SELECT
    e.employee_name,
    e.hire_date,
    e.salary,
    (
        SELECT AVG(e2.salary)
        FROM employees e2
        WHERE e2.hire_date < e.hire_date
    ) AS previous_average_salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.hire_date < e.hire_date
);
Q199.Find managers whose direct reports collectively earn more than the manager and identify the difference.
 Hint: SELF JOIN, GROUP BY, and aggregation. 
 SELECT
    m.employee_name AS manager,
    m.salary AS manager_salary,
    SUM(e.salary) AS direct_reports_salary,
    SUM(e.salary) - m.salary AS difference
FROM employees m
JOIN employees e
    ON e.manager_id = m.employee_id
GROUP BY
    m.employee_id,
    m.employee_name,
    m.salary
HAVING SUM(e.salary) > m.salary;
Q200.Create a report showing for every employee: company salary rank, department salary rank, department average,
 difference from department average, previous salary by hire date, and next salary by hire date.
 Hint: Use multiple window functions in one SELECT or organize them with a CTE.
 WITH employee_report AS (
    SELECT
        employee_id,
        employee_name,
        department_id,
        salary,
        RANK() OVER (
            ORDER BY salary DESC
        ) AS company_salary_rank,

        RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS department_salary_rank,

        AVG(salary) OVER (
            PARTITION BY department_id
        ) AS department_average,

        LAG(salary) OVER (
            PARTITION BY department_id
            ORDER BY hire_date
        ) AS previous_salary,

        LEAD(salary) OVER (
            PARTITION BY department_id
            ORDER BY hire_date
        ) AS next_salary

    FROM employees
)
SELECT
    employee_name,
    salary,
    company_salary_rank,
    department_salary_rank,
    department_average,
    salary - department_average AS difference_from_department_average,
    previous_salary,
    next_salary
FROM employee_report
ORDER BY company_salary_rank;



