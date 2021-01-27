DROP TABLE departments;

--create table for departments.csv
CREATE TABLE departments (
		dept_no VARCHAR NOT NULL,
		dept_name VARCHAR NOT NULL,
		PRIMARY KEY (dept_no)
);

SELECT *
FROM departments;

--create table for employees.csv
DROP TABLE employees;

CREATE TABLE employees (
		emp_no INTEGER NOT NULL, 
		emp_title VARCHAR NOT NULL, 
		bith_date DATE NOT NULL,
		first_name VARCHAR NOT NULL, 
		last_name VARCHAR NOT NULL, 
		sex VARCHAR NOT NULL,
		hire_date DATE NOT NULL,
		PRIMARY KEY (emp_no)
);

SELECT *
FROM employees

--create table for dept_emp.csv
DROP TABLE dept_employees;

CREATE TABLE dept_employees (
		emp_no INTEGER NOT NULL, 
		dept_no VARCHAR NOT NULL,
		PRIMARY KEY (emp_no, dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
		
);

SELECT *
FROM dept_employees;

--create table for dept_manager.csv
DROP TABLE dept_managers;

CREATE TABLE dept_managers (
		dept_no VARCHAR NOT NULL,
		emp_no INTEGER NOT NULL,
		PRIMARY KEY(dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM dept_managers

--create table for salaries.csv
DROP TABLE salaries;

CREATE TABLE salaries (
		emp_no INTEGER NOT NULL,
		salary INTEGER NOT NULL,
		PRIMARY KEY (emp_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT *
FROM salaries 

--create table for titles.csv
DROP TABLE titles;

CREATE TABLE titles (
		title_id VARCHAR NOT NULL,
		title VARCHAR NOT NULL,
		PRIMARY KEY (title_id)
);

SELECT *
FROM titles 
		
		
		
		