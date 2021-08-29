DROP TABLE IF EXISTS departments
DROP TABLE IF EXISTS dep_employees
DROP TABLE IF EXISTS dep_manager
DROP TABLE IF EXISTS employees
DROP TABLE IF EXISTS salaries
DROP TABLE IF EXISTS titles

CREATE TABLE departments (
    dept_no VARCHAR(50) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

Select * from departments

CREATE TABLE dep_employees (
    emp_no integer NOT NULL,
    dept_no VARCHAR(50) NOT NULL
);

Select * from dep_employees

CREATE TABLE dep_manager (
    dept_no VARCHAR(50) NOT NULL,
	emp_no integer NOT NULL
);

Select * from dep_manager

CREATE TABLE employees (
    emp_no integer NOT NULL,
    emp_title VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date DATE NOT NULL
);

select * from employees

CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary integer NOT NULL
);

select * from salaries

CREATE TABLE titles (
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50) NOT NULL
);

Select * from titles
