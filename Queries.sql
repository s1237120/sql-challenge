select * from "Employee";

SELECT first_name, last_name
FROM "Employee"
where hire_date >= '1986-01-01' and hire_date <'1987-01-01';

select * from "Department_Manager";

SELECT "Department_Manager".dept_no, "Departments".dept_name, "Department_Manager".emp_no, "Employee".first_name, "Employee".last_name
FROM "Department_Manager"
JOIN "Departments" ON "Department_Manager".dept_no = "Departments".dept_no
JOIN "Employee" ON "Department_Manager".emp_no = "Employee".emp_no;

SELECT "Employee".emp_no, "Employee".first_name, "Employee".last_name, "Departments".dept_name
FROM "Employee"
JOIN "Department_Employee" ON "Employee".emp_no = "Department_Employee".emp_no
JOIN "Departments" ON "Department_Employee".dept_no = "Departments".dept_no;

SELECT first_name, last_name, sex
FROM "Employee"
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

SELECT * FROM "Departments";
SELECT "Employee".emp_no, "Employee".first_name, "Employee".last_name, "Departments".dept_name
FROM "Employee"
JOIN "Department_Employee" ON "Employee".emp_no = "Department_Employee".emp_no
JOIN "Departments" ON "Department_Employee".dept_no = "Departments".dept_no
WHERE "Departments".dept_no = 'd007';

SELECT * FROM "Departments";

SELECT "Employee".emp_no, "Employee".last_name, "Employee".first_name, "Departments".dept_name
FROM "Employee"
JOIN "Department_Employee" ON "Employee".emp_no = "Department_Employee".emp_no
JOIN "Departments" ON "Department_Employee".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales' or "Departments".dept_name = 'Development';


SELECT last_name, COUNT(last_name) AS "count"
FROM "Employee"
GROUP BY last_name
ORDER BY "count" DESC;