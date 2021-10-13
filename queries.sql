--List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name,hire_date FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	e.emp_no AS "Manager Employee Number",
	e.last_name As "Manager Last Name",
	e.first_name AS "Manager First Name"
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Employee Last Name",
	e.first_name AS "Employee First NAme",
	d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name,sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT last_name AS "Employee Last Name", COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;