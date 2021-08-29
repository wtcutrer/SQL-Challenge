DROP TABLE IF EXISTS departments
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS dep_employees
DROP TABLE IF EXISTS dep_manager
DROP TABLE IF EXISTS salaries
DROP TABLE IF EXISTS titles

CREATE TABLE departments(
    dept_no VARCHAR(50) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

Select * from departments

CREATE TABLE employees(
    emp_no integer NOT NULL,
    emp_title VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

CREATE TABLE dep_employees(
    emp_no INT NOT NULL,
    dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

Select * from dep_employees

CREATE TABLE dep_manager(
    dept_no VARCHAR(50) NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

Select * from dep_manager

CREATE TABLE salaries(
	emp_no integer NOT NULL,
	salary integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

select * from salaries

CREATE TABLE titles(
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

Select * from titles
