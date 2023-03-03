-- DROP TABLE IF EXISTS
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR,
	hire_date VARCHAR
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
	emp_no INT NOT NULL,
	salary INT PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR PRIMARY KEY,
	FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);

select * from titles;