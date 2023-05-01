select * from departments;

select * from dept_emp;

select * from dept_manager;

select * from employees;

select * from salaries;

select * from titles;


-- queries for Employees_db

SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
	   
select hire_date, first_name, last_name
from employees
where CAST(hire_date AS Date) >'1/1/1986'
and CAST(hire_date AS Date) <'1/1/1987';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

select dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
from dept_manager
inner join departments on
dept_manager.dept_no = departments.dept_no
inner join  employees on
dept_manager.emp_no = employees.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select employees.first_name,
	employees.last_name,
	employees.sex
from employees
where first_name = 'Hercules'
and LEFT(last_name, 1) = 'B';

-- List each employee in the Sales department, including their employee number, last name, and first name.

select departments.dept_no,
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name
from departments
inner join dept_emp on
departments.dept_no = dept_emp.dept_no
inner join employees on
dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales';