--DATA ANALYTICS:
--* List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" e
LEFT JOIN "Salaries" s
ON e.emp_no = s.emp_no

--------
--* List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT first_name, last_name, hire_date
FROM "Employees" 
WHERE hire_date LIKE '%1986';

--------
--* List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT e.first_name, e.last_name, m.dept_no, d.dept_name, e.emp_no
FROM "Dept_Manager" m
LEFT JOIN "Employees" e
ON e.emp_no = m.emp_no
LEFT JOIN "Departments" d
ON d.dept_no = m.dept_no;
---------
--* List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
LEFT JOIN "Dept_Employee" de
ON e.emp_no = de.emp_no
LEFT JOIN "Departments" d
ON de.dept_no = d.dept_no;
-------
--* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name='Hercules'
AND last_name LIKE 'B%';
------

--* List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
LEFT JOIN "Dept_Employee" de
ON e.emp_no = de.emp_no
LEFT JOIN "Departments" d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

------
--* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
LEFT JOIN "Dept_Employee" de
ON e.emp_no = de.emp_no
LEFT JOIN "Departments" d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-------
--* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS Frequency
FROM "Employees"
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
