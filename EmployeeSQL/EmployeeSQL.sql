-- DROP TABLE IF EXISTS
DROP TABLE departments cascade;
DROP TABLE dept_emp cascade;
DROP TABLE dept_manager cascade;
DROP TABLE employees cascade;
DROP TABLE salaries cascade;
DROP TABLE titles cascade;

CREATE TABLE titles(
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR
);

select * from titles;

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * from employees;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

select * from departments;


CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;


CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;






CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;




-- IMport Data
-- COPY employees from 'C:\Users\Shoaib\git\sql-challenge\EmployeeSQL\m9-starter-code\data\employees.csv' delimiter ',' HEADER csv