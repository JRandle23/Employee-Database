--List employee details 
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   emp.sex,
	   sal.salary
FROM employees as emp 
LEFT JOIN salaries as sal 
	ON emp.emp_no = sal.emp_no;

--List employee name and hire date for employees hired in 1986
SELECT emp.last_name,
	   emp.first_name,
	   emp.hire_date
FROM employees as emp 
WHERE emp.hire_date BETWEEN '01/01/1986' AND '12/31/1986'
ORDER BY emp.hire_date;

--List department manager info 
SELECT
	dept.dept_no,
	dept.dept_name,
	deptm.emp_no,
	emp.last_name,
	emp.first_name
FROM departments as dept
LEFT JOIN dept_managers as deptm
	ON dept.dept_no = deptm.dept_no
LEFT JOIN employees as emp
	ON deptm.emp_no = emp.emp_no;
	
--List department of each employee 
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dept.dept_name
FROM employees as emp 
LEFT JOIN dept_employees as dept_emp
	ON emp.emp_no = dept_emp.emp_no
LEFT JOIN departments as dept 
	ON dept_emp.dept_no = dept.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT emp.last_name,
	   emp.first_name, 
	   emp.sex
FROM employees as emp 
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';

--List all employees in the sales department 
SELECT emp.emp_no, 
	   emp.last_name, 
	   emp.first_name,
	   dept.dept_name
FROM employees as emp
LEFT JOIN dept_employees as dept_emp 
	ON emp.emp_no = dept_emp.emp_no
LEFT JOIN departments as dept
	ON dept_emp.dept_no = dept.dept_no
	WHERE dept.dept_name = 'Sales';

--List all employees in the Sales & Development departments 
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dept.dept_name
FROM employees as emp
LEFT JOIN dept_employees as dept_emp 
	ON emp.emp_no = dept_emp.emp_no
LEFT JOIN departments as dept
	ON dept_emp.dept_no = dept.dept_no
	WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development';

--List the frequency count of employee last names in descending order
SELECT emp.last_name,
	COUNT(emp.last_name) as name_count
FROM employees as emp 
GROUP BY emp.last_name
ORDER BY name_count DESC;



	   
	   